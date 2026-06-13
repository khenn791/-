repeat
    task.wait();
until game:IsLoaded();
local oldGui = game.CoreGui:FindFirstChild("SpamHubGui");
if oldGui then
    oldGui:Destroy(); 
end;
local Players = game:GetService("Players");
local RunService = game:GetService("RunService");
local ReplicatedStorage = game:GetService("ReplicatedStorage");
local UserInputService = game:GetService("UserInputService");
local TweenService = game:GetService("TweenService");
local StatsService = game:GetService("Stats");
local LocalPlayer = Players.LocalPlayer;
local remote, f_raw = nil, nil;
local c = {
    nil,
    nil,
    nil,
    nil,
    nil,
    nil,
    nil
};
local original_args = {};
local spamActive = false;
local animFix = true;
local targetCPS = 450;
local spamAccum = 0;
local remoteHooked = false;
local isOpen = true;
local isHoldMode = false;
local holdActive = false;
local fpsCount = 0;
local fpsTimer = 0;
local frameFireCount = 0;
local frameTime = 0;
local spamKey = Enum.KeyCode.G;
local waitingForKey = false;
local ORANGE = Color3.fromRGB(255, 140, 0);
local ORANGE_DARK = Color3.fromRGB(180, 80, 0);
local ORANGE_BG = Color3.fromRGB(30, 10, 0);
local BLACK = Color3.fromRGB(8, 8, 8);
local WHITE = Color3.new(1, 1, 1);
local function getModifiedArgs()
    local Alive = workspace:FindFirstChild("Alive");
    local camera = workspace.CurrentCamera;
    local event_data = {};
    if Alive then
        for _, entity in pairs(Alive:GetChildren()) do
            if entity.PrimaryPart then
                local ok, sp = pcall(function()
                    return camera:WorldToScreenPoint(entity.PrimaryPart.Position); 
                end);
                if ok then
                    event_data[entity.Name] = sp; 
                end; 
            end; 
        end; 
    end;
    local is_mobile = UserInputService.TouchEnabled and not UserInputService.MouseEnabled;
    local final_aim_target;
    if is_mobile then
        local vp = camera.ViewportSize;
        final_aim_target = {
            vp.X / 2,
            vp.Y / 2
        };
    else
        local ok, mouse = pcall(function()
            return UserInputService:GetMouseLocation(); 
        end);
        if ok then
            final_aim_target = {
                mouse.X,
                mouse.Y
            };
        else
            final_aim_target = {
                0,
                0
            }; 
        end; 
    end;
    return {
        original_args[1] or c[1],
        original_args[2] or c[2],
        original_args[3] or c[3],
        camera.CFrame,
        event_data,
        final_aim_target,
        original_args[7] or c[7]
    }; 
end;
local SwordAPI = ReplicatedStorage:WaitForChild("Shared"):WaitForChild("SwordAPI");
local lastplayedd = 0;
local bypasscd = false;
local AnimationDelay = 1;
local AnimationCache = {};
local Grab_Parry = nil;
local function GetCharacter()
    return LocalPlayer.Character; 
end;
local function GetHumanoid()
    local char = GetCharacter();
    return char and char:FindFirstChildOfClass("Humanoid"); 
end;
local function StopAnimation(track)
    track:Stop(track:GetAttribute("StopFadeTime") or 0.1); 
end;
local function PlayGrabAnimation(track)
    track:Play(track:GetAttribute("PlayFadeTime") or 0, track:GetAttribute("PlayWeight") or 1, track:GetAttribute("PlaySpeed") or 1); 
end;
local function GetParryAnimation()
    local char = GetCharacter();
    if not char then
        return nil; 
    end;
    local currentSword = char:GetAttribute("CurrentlyEquippedSword");
    if not currentSword then
        return SwordAPI.Collection.Default:FindFirstChild("GrabParry"); 
    end;
    if AnimationCache[currentSword] then
        return AnimationCache[currentSword]; 
    end;
    local ok, swordData = pcall(function()
        return ReplicatedStorage.Shared.ReplicatedInstances.Swords.GetSword:Invoke(currentSword); 
    end);
    if not ok or type(swordData) ~= "table" then
        AnimationCache[currentSword] = SwordAPI.Collection.Default:FindFirstChild("GrabParry");
        return AnimationCache[currentSword]; 
    end;
    for _, obj in pairs(SwordAPI.Collection:GetChildren()) do
        if obj.Name == swordData.AnimationType then
            local anim = obj:FindFirstChild("GrabParry") or obj:FindFirstChild("Grab");
            if anim then
                AnimationCache[currentSword] = anim;
                return anim; 
            end; 
        end; 
    end;
    AnimationCache[currentSword] = SwordAPI.Collection.Default:FindFirstChild("GrabParry");
    return AnimationCache[currentSword]; 
end;
local function PlayParry_Animation()
    local humanoid = GetHumanoid();
    if not humanoid then
        return; 
    end;
    local animation = GetParryAnimation();
    if not animation then
        return; 
    end;
    for _, track in pairs(humanoid.Animator:GetPlayingAnimationTracks()) do
        if track.Name == "GrabParry" or track.Name == "Grab" then
            track.TimePosition = 0;
            StopAnimation(track);
        elseif track.Name == "SuccessParry" or track.Name == "Success" then
            StopAnimation(track); 
        end; 
    end;
    Grab_Parry = humanoid.Animator:LoadAnimation(animation);
    PlayGrabAnimation(Grab_Parry); 
end;
local function SpamParry_Animation()
    if os.clock() - lastplayedd >= AnimationDelay - 0.9 or bypasscd then
        lastplayedd = os.clock();
        bypasscd = false;
        PlayParry_Animation(); 
    end; 
end;
pcall(function()
    ReplicatedStorage.Remotes.ParrySuccess.OnClientEvent:Connect(function()
        bypasscd = true;
        local humanoid = GetHumanoid();
        if humanoid then
            for _, track in pairs(humanoid.Animator:GetPlayingAnimationTracks()) do
                if track.Name == "GrabParry" or track.Name == "Grab" then
                    StopAnimation(track); 
                end; 
            end; 
        end; 
    end); 
end);
local mt = getrawmetatable(game);
local old = mt.__index;
setreadonly(mt, false);
mt.__index = newcclosure(function(self, key)
    if key == "FireServer" or key == "InvokeServer" then
        return function(instance, ...)
            local args = {...};
            if #args >= 4 then
                if not remoteHooked then
                    remoteHooked = true; 
                end;
                remote = instance;
                f_raw = old(instance, "FireServer");
                original_args = args;
                for i = 1, 7 do
                    c[i] = args[i]; 
                end; 
            end;
            return old(self, key)(instance, ...); 
        end; 
    end;
    return old(self, key); 
end);
setreadonly(mt, true);
local ScreenGui = Instance.new("ScreenGui", game.CoreGui);
ScreenGui.Name = "SpamHubGui";
ScreenGui.ResetOnSpawn = false;
local CounterFrame = Instance.new("Frame", ScreenGui);
CounterFrame.Size = UDim2.new(0, 130, 0, 68);
CounterFrame.Position = UDim2.new(1, -140, 0, 10);
CounterFrame.BackgroundColor3 = BLACK;
CounterFrame.BackgroundTransparency = 0.05;
CounterFrame.BorderSizePixel = 0;
Instance.new("UICorner", CounterFrame).CornerRadius = UDim.new(0, 10);
local CounterStroke = Instance.new("UIStroke", CounterFrame);
CounterStroke.Color = ORANGE;
CounterStroke.Thickness = 1.5;
local CpsCounterLbl = Instance.new("TextLabel", CounterFrame);
CpsCounterLbl.Size = UDim2.new(1, -8, 0, 22);
CpsCounterLbl.Position = UDim2.new(0, 4, 0, 2);
CpsCounterLbl.BackgroundTransparency = 1;
CpsCounterLbl.Text = "CPS: 0";
CpsCounterLbl.Font = Enum.Font.GothamBold;
CpsCounterLbl.TextSize = 12;
CpsCounterLbl.TextColor3 = WHITE;
CpsCounterLbl.TextXAlignment = Enum.TextXAlignment.Left;
local FpsCounterLbl = Instance.new("TextLabel", CounterFrame);
FpsCounterLbl.Size = UDim2.new(1, -8, 0, 22);
FpsCounterLbl.Position = UDim2.new(0, 4, 0, 24);
FpsCounterLbl.BackgroundTransparency = 1;
FpsCounterLbl.Text = "FPS: 0";
FpsCounterLbl.Font = Enum.Font.GothamBold;
FpsCounterLbl.TextSize = 12;
FpsCounterLbl.TextColor3 = WHITE;
FpsCounterLbl.TextXAlignment = Enum.TextXAlignment.Left;
local PingCounterLbl = Instance.new("TextLabel", CounterFrame);
PingCounterLbl.Size = UDim2.new(1, -8, 0, 22);
PingCounterLbl.Position = UDim2.new(0, 4, 0, 46);
PingCounterLbl.BackgroundTransparency = 1;
PingCounterLbl.Text = "Ping: --ms";
PingCounterLbl.Font = Enum.Font.GothamBold;
PingCounterLbl.TextSize = 12;
PingCounterLbl.TextColor3 = WHITE;
PingCounterLbl.TextXAlignment = Enum.TextXAlignment.Left;
local cDrag, cStart, cPos;
CounterFrame.InputBegan:Connect(function(inp)
    if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
        cDrag = true;
        cStart = inp.Position;
        cPos = CounterFrame.Position;
        inp.Changed:Connect(function()
            if inp.UserInputState == Enum.UserInputState.End then
                cDrag = false; 
            end; 
        end); 
    end; 
end);
CounterFrame.InputChanged:Connect(function(inp)
    if cDrag and (inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch) then
        local d = inp.Position - cStart;
        CounterFrame.Position = UDim2.new(cPos.X.Scale, cPos.X.Offset + d.X, cPos.Y.Scale, cPos.Y.Offset + d.Y); 
    end; 
end);
local Frame = Instance.new("Frame", ScreenGui);
Frame.Size = UDim2.new(0, 210, 0, 300);
Frame.Position = UDim2.new(0.5, -105, 0.5, -150);
Frame.BackgroundColor3 = BLACK;
Frame.BackgroundTransparency = 0.05;
Frame.BorderSizePixel = 0;
Frame.ClipsDescendants = true;
Instance.new("UICorner", Frame).CornerRadius = UDim.new(0, 14);
local Stroke = Instance.new("UIStroke", Frame);
Stroke.Color = ORANGE;
Stroke.Thickness = 2;
local TitleBar = Instance.new("Frame", Frame);
TitleBar.Size = UDim2.new(1, 0, 0, 32);
TitleBar.BackgroundColor3 = ORANGE_BG;
TitleBar.BorderSizePixel = 0;
Instance.new("UICorner", TitleBar).CornerRadius = UDim.new(0, 14);
local Title = Instance.new("TextLabel", TitleBar);
Title.Size = UDim2.new(0.78, 0, 1, 0);
Title.Position = UDim2.new(0.04, 0, 0, 0);
Title.BackgroundTransparency = 1;
Title.Text = "Eagle Macro Paid";
Title.Font = Enum.Font.GothamBold;
Title.TextSize = 13;
Title.TextColor3 = ORANGE;
Title.TextXAlignment = Enum.TextXAlignment.Left;
local MinBtn = Instance.new("TextButton", TitleBar);
MinBtn.Size = UDim2.new(0, 26, 0, 26);
MinBtn.Position = UDim2.new(1, -30, 0.5, -13);
MinBtn.BackgroundColor3 = ORANGE_DARK;
MinBtn.Text = "_";
MinBtn.Font = Enum.Font.GothamBold;
MinBtn.TextSize = 14;
MinBtn.TextColor3 = WHITE;
MinBtn.BorderSizePixel = 0;
Instance.new("UICorner", MinBtn).CornerRadius = UDim.new(0, 6);
local Content = Instance.new("Frame", Frame);
Content.Size = UDim2.new(1, 0, 1, -32);
Content.Position = UDim2.new(0, 0, 0, 32);
Content.BackgroundTransparency = 1;
local StatusLabel = Instance.new("TextLabel", Content);
StatusLabel.Size = UDim2.new(1, 0, 0, 14);
StatusLabel.Position = UDim2.new(0, 0, 0, 4);
StatusLabel.BackgroundTransparency = 1;
StatusLabel.Text = "Waiting for remote...";
StatusLabel.Font = Enum.Font.Gotham;
StatusLabel.TextSize = 10;
StatusLabel.TextColor3 = Color3.fromRGB(150, 150, 150);
local CpsLabel = Instance.new("TextLabel", Content);
CpsLabel.Size = UDim2.new(1, 0, 0, 18);
CpsLabel.Position = UDim2.new(0, 0, 0, 22);
CpsLabel.BackgroundTransparency = 1;
CpsLabel.Text = "CPS: 450";
CpsLabel.Font = Enum.Font.GothamBold;
CpsLabel.TextSize = 12;
CpsLabel.TextColor3 = Color3.fromRGB(220, 220, 220);
local SliderBg = Instance.new("Frame", Content);
SliderBg.Size = UDim2.new(0.85, 0, 0, 7);
SliderBg.Position = UDim2.new(0.075, 0, 0, 44);
SliderBg.BackgroundColor3 = Color3.fromRGB(40, 15, 0);
SliderBg.BorderSizePixel = 0;
Instance.new("UICorner", SliderBg).CornerRadius = UDim.new(1, 0);
local SliderFill = Instance.new("Frame", SliderBg);
SliderFill.BackgroundColor3 = ORANGE;
SliderFill.BorderSizePixel = 0;
Instance.new("UICorner", SliderFill).CornerRadius = UDim.new(1, 0);
local SliderKnob = Instance.new("TextButton", SliderBg);
SliderKnob.Size = UDim2.new(0, 16, 0, 16);
SliderKnob.BackgroundColor3 = ORANGE_DARK;
SliderKnob.Text = "";
SliderKnob.BorderSizePixel = 0;
Instance.new("UICorner", SliderKnob).CornerRadius = UDim.new(1, 0);
local minCPS, maxCPS = 50, 450;
local draggingSlider = false;
local function updateSlider(val)
    val = math.clamp(val, 0, 1);
    targetCPS = math.floor(minCPS + (maxCPS - minCPS) * val);
    SliderFill.Size = UDim2.new(val, 0, 1, 0);
    SliderKnob.Position = UDim2.new(val, -8, 0.5, -8);
    CpsLabel.Text = "CPS: " .. targetCPS; 
end;
updateSlider((400 - minCPS) / (maxCPS - minCPS));
SliderKnob.InputBegan:Connect(function(i)
    if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
        draggingSlider = true; 
    end; 
end);
UserInputService.InputEnded:Connect(function(i)
    if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
        draggingSlider = false; 
    end; 
end);
UserInputService.InputChanged:Connect(function(i)
    if draggingSlider and (i.UserInputType == Enum.UserInputType.MouseMovement or i.UserInputType == Enum.UserInputType.Touch) then
        updateSlider((i.Position.X - SliderBg.AbsolutePosition.X) / SliderBg.AbsoluteSize.X); 
    end; 
end);
SliderBg.InputBegan:Connect(function(i)
    if i.UserInputType == Enum.UserInputType.MouseButton1 or i.UserInputType == Enum.UserInputType.Touch then
        updateSlider((i.Position.X - SliderBg.AbsolutePosition.X) / SliderBg.AbsoluteSize.X);
        draggingSlider = true; 
    end; 
end);
local function makDiv(y)
    local d = Instance.new("Frame", Content);
    d.Size = UDim2.new(0.85, 0, 0, 1);
    d.Position = UDim2.new(0.075, 0, 0, y);
    d.BackgroundColor3 = ORANGE_DARK;
    d.BorderSizePixel = 0; 
end;
local function makeRow(y, txt)
    local l = Instance.new("TextLabel", Content);
    l.Size = UDim2.new(0.55, 0, 0, 22);
    l.Position = UDim2.new(0.075, 0, 0, y);
    l.BackgroundTransparency = 1;
    l.Text = txt;
    l.Font = Enum.Font.GothamBold;
    l.TextSize = 11;
    l.TextColor3 = Color3.fromRGB(200, 200, 200);
    l.TextXAlignment = Enum.TextXAlignment.Left; 
end;
local function makeToggleBtn(y, txt, active)
    local b = Instance.new("TextButton", Content);
    b.Size = UDim2.new(0, 46, 0, 22);
    b.Position = UDim2.new(1, -56, 0, y);
    b.BackgroundColor3 = active and ORANGE or Color3.fromRGB(60, 60, 60);
    b.Text = txt;
    b.Font = Enum.Font.GothamBold;
    b.TextSize = 11;
    b.TextColor3 = WHITE;
    b.BorderSizePixel = 0;
    Instance.new("UICorner", b).CornerRadius = UDim.new(0, 8);
    return b; 
end;
local ToggleBtn = Instance.new("TextButton", Content);
ToggleBtn.Size = UDim2.new(0.85, 0, 0, 34);
ToggleBtn.Position = UDim2.new(0.075, 0, 0, 57);
ToggleBtn.BackgroundColor3 = ORANGE_DARK;
ToggleBtn.Text = "SPAM: OFF";
ToggleBtn.Font = Enum.Font.GothamBold;
ToggleBtn.TextSize = 14;
ToggleBtn.TextColor3 = WHITE;
ToggleBtn.BorderSizePixel = 0;
Instance.new("UICorner", ToggleBtn).CornerRadius = UDim.new(0, 10);
makDiv(99);
makeRow(105, "Mode");
local ModeSwitch = Instance.new("TextButton", Content);
ModeSwitch.Size = UDim2.new(0, 80, 0, 22);
ModeSwitch.Position = UDim2.new(1, -88, 0, 105);
ModeSwitch.BackgroundColor3 = Color3.fromRGB(60, 60, 60);
ModeSwitch.Text = "TOGGLE";
ModeSwitch.Font = Enum.Font.GothamBold;
ModeSwitch.TextSize = 10;
ModeSwitch.TextColor3 = WHITE;
ModeSwitch.BorderSizePixel = 0;
Instance.new("UICorner", ModeSwitch).CornerRadius = UDim.new(0, 8);
ModeSwitch.MouseButton1Click:Connect(function()
    isHoldMode = not isHoldMode;
    ModeSwitch.Text = isHoldMode and "HOLD" or "TOGGLE";
    ModeSwitch.BackgroundColor3 = isHoldMode and Color3.fromRGB(0, 100, 200) or Color3.fromRGB(60, 60, 60);
    if isHoldMode then
        spamActive = false;
        ToggleBtn.Text = "SPAM: OFF";
        ToggleBtn.BackgroundColor3 = ORANGE_DARK; 
    end; 
end);
makDiv(133);
makeRow(139, "Anim Fix");
local AnimBtn = makeToggleBtn(139, "ON", true);
AnimBtn.BackgroundColor3 = ORANGE;
AnimBtn.MouseButton1Click:Connect(function()
    animFix = not animFix;
    AnimBtn.Text = animFix and "ON" or "OFF";
    AnimBtn.BackgroundColor3 = animFix and ORANGE or Color3.fromRGB(60, 60, 60); 
end);
makDiv(167);
makeRow(173, "Spam Key");
local SpamKeyBtn = Instance.new("TextButton", Content);
SpamKeyBtn.Size = UDim2.new(0, 46, 0, 22);
SpamKeyBtn.Position = UDim2.new(1, -56, 0, 173);
SpamKeyBtn.BackgroundColor3 = ORANGE_DARK;
SpamKeyBtn.Text = "G";
SpamKeyBtn.Font = Enum.Font.GothamBold;
SpamKeyBtn.TextSize = 11;
SpamKeyBtn.TextColor3 = WHITE;
SpamKeyBtn.BorderSizePixel = 0;
Instance.new("UICorner", SpamKeyBtn).CornerRadius = UDim.new(0, 8);
SpamKeyBtn.MouseButton1Click:Connect(function()
    if waitingForKey then
        return; 
    end;
    waitingForKey = true;
    SpamKeyBtn.Text = "...";
    SpamKeyBtn.BackgroundColor3 = Color3.fromRGB(200, 150, 0);
    local conn;
    conn = UserInputService.InputBegan:Connect(function(inp, gp)
        if gp then
            return; 
        end;
        if inp.UserInputType == Enum.UserInputType.Keyboard then
            spamKey = inp.KeyCode;
            SpamKeyBtn.Text = inp.KeyCode.Name;
            SpamKeyBtn.BackgroundColor3 = ORANGE_DARK;
            waitingForKey = false;
            conn:Disconnect(); 
        end; 
    end); 
end);
makDiv(201);
local HintLabel = Instance.new("TextLabel", Content);
HintLabel.Size = UDim2.new(1, 0, 0, 14);
HintLabel.Position = UDim2.new(0, 0, 0, 207);
HintLabel.BackgroundTransparency = 1;
HintLabel.Text = "_ Hide UI";
HintLabel.Font = Enum.Font.Gotham;
HintLabel.TextSize = 9;
HintLabel.TextColor3 = Color3.fromRGB(100, 70, 30);
local fullSize = UDim2.new(0, 210, 0, 300);
local miniSize = UDim2.new(0, 210, 0, 32);
local function setOpen(state)
    isOpen = state;
    TweenService:Create(Frame, TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
        Size = state and fullSize or miniSize
    }):Play();
    MinBtn.Text = state and "_" or "▲"; 
end;
MinBtn.MouseButton1Click:Connect(function()
    setOpen(not isOpen); 
end);
local function toggleSpam()
    if isHoldMode then
        return; 
    end;
    if not remote then
        StatusLabel.Text = "Block first!";
        StatusLabel.TextColor3 = Color3.fromRGB(255, 80, 80);
        return; 
    end;
    spamActive = not spamActive;
    spamAccum = 0;
    ToggleBtn.Text = spamActive and "SPAM: ON" or "SPAM: OFF";
    ToggleBtn.BackgroundColor3 = spamActive and ORANGE or ORANGE_DARK; 
end;
ToggleBtn.MouseButton1Click:Connect(toggleSpam);
local dragging, dragStart, startPos;
TitleBar.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true;
        dragStart = input.Position;
        startPos = Frame.Position;
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false; 
            end; 
        end); 
    end; 
end);
TitleBar.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        local delta = input.Position - dragStart;
        Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y); 
    end; 
end);
UserInputService.InputBegan:Connect(function(input, gp)
    if gp or waitingForKey then
        return; 
    end;
    if input.KeyCode == Enum.KeyCode.LeftAlt or input.KeyCode == Enum.KeyCode.RightAlt then
        setOpen(not isOpen);
    elseif input.KeyCode == spamKey then
        if isHoldMode then
            if not remote then
                return; 
            end;
            holdActive = true;
            spamAccum = 0;
            ToggleBtn.Text = "SPAM: ON";
            ToggleBtn.BackgroundColor3 = ORANGE;
        else
            toggleSpam(); 
        end; 
    end; 
end);
UserInputService.InputEnded:Connect(function(input)
    if input.KeyCode == spamKey and isHoldMode then
        holdActive = false;
        ToggleBtn.Text = "SPAM: OFF";
        ToggleBtn.BackgroundColor3 = ORANGE_DARK; 
    end; 
end);
task.spawn(function()
    while not remoteHooked do
        task.wait(0.1); 
    end;
    StatusLabel.Text = "Ready";
    StatusLabel.TextColor3 = ORANGE; 
end);
RunService.Heartbeat:Connect(function(dt)
    fpsCount += 1;
    fpsTimer += dt;
    frameTime += dt;
    if fpsTimer >= 1 then
        local fps = math.floor(fpsCount / fpsTimer);
        fpsCount = 0;
        fpsTimer = 0;
        FpsCounterLbl.Text = "FPS: " .. fps;
        pcall(function()
            local ping = math.floor(StatsService.Network.ServerStatsItem["Data Ping"]:GetValue());
            PingCounterLbl.Text = "Ping: " .. ping .. "ms"; 
        end); 
    end;
    if frameTime >= 0.1 then
        local real = math.floor(frameFireCount / frameTime);
        CpsCounterLbl.Text = "CPS: " .. real;
        frameFireCount = 0;
        frameTime = 0; 
    end;
    local doSpam = isHoldMode and holdActive or not isHoldMode and spamActive;
    if doSpam and remote and f_raw then
        spamAccum = spamAccum + dt * targetCPS;
        local fires = math.floor(spamAccum);
        if fires > 0 then
            spamAccum = spamAccum - fires;
            local modified_args = getModifiedArgs();
            for _ = 1, fires do
                pcall(function()
                    if remote:IsA('RemoteEvent') then
                        f_raw(remote, unpack(modified_args));
                    elseif remote:IsA('RemoteFunction') then
                        remote:InvokeServer(unpack(modified_args)); 
                    end;
                    frameFireCount += 1; 
                end); 
            end; 
        end;
        if animFix then
            SpamParry_Animation(); 
        end;
    else
        spamAccum = 0; 
    end; 
end);