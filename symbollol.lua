local __M = {
    cache = {}::any,
}

do
    do
        local function __modImpl()
            local cache = {}

            cache.Players = cloneref(game:GetService('Players'))
            cache.RunService = cloneref(game:GetService('RunService'))
            cache.UserInputService = cloneref(game:GetService('UserInputService'))
            cache.HttpService = cloneref(game:GetService('HttpService'))
            cache.Stats = cloneref(game:GetService('Stats'))
            cache.Lighting = cloneref(game:GetService('Lighting'))
            cache.TeleportService = cloneref(game:GetService('TeleportService'))    
            cache.MarketplaceService = cloneref(game:GetService('MarketplaceService'))
            cache.TweenService = cloneref(game:GetService('TweenService'))
            cache.ReplicatedStorage = cloneref(game:GetService('ReplicatedStorage'))
            cache.StarterGui = cloneref(game:GetService('StarterGui'))
            cache.CoreGui = cloneref(game:GetService('CoreGui'))
            cache.GuiService = cloneref(game:GetService('GuiService'))
            cache.Debris = cloneref(game:GetService('Debris'))
            cache.lp = cache.Players.LocalPlayer
            cache.cam = workspace.CurrentCamera
            cache.ws = workspace
            cache.huge = math.huge
            cache.floor = math.floor
            cache.ceil = math.ceil
            cache.random = math.random
            cache.abs = math.abs
            cache.sin = math.sin
            cache.cos = math.cos
            cache.rad = math.rad
            cache.clamp = math.clamp
            cache.min = math.min
            cache.max = math.max
            cache.sqrt = math.sqrt
            cache.atan2 = math.atan2
            cache.pi = math.pi
            cache.insert = table.insert
            cache.remove = table.remove
            cache.sort = table.sort
            cache.concat = table.concat
            cache.clear = table.clear
            cache.find = table.find
            cache.vec2 = Vector2.new
            cache.vec3 = Vector3.new
            cache.cfr = CFrame.new
            cache.cfrAngles = CFrame.Angles
            cache.dim2 = UDim2.new
            cache.dim = UDim.new
            cache.c3 = Color3.new
            cache.c3rgb = Color3.fromRGB
            cache.c3hsv = Color3.fromHSV
            cache.c3hex = Color3.fromHex
            cache.tweenFast = TweenInfo.new(0.1, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
            cache.tweenMedium = TweenInfo.new(0.25, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
            cache.tweenSlow = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

            -- Tự động detect mobile
            cache.IS_MOBILE = cache.UserInputService.TouchEnabled and (not cache.UserInputService.KeyboardEnabled or true)

            function cache.getPing()
                local item = cache.Stats.Network.ServerStatsItem:FindFirstChild('Data Ping')
                if item then
                    local ok, v = pcall(function()
                        return item:GetValueString()
                    end)
                    if ok and v then
                        return (tonumber(v:match('%d+')) or 0) / 1000
                    end
                end
                return 0
            end

            function cache.getPingMs()
                local item = cache.Stats.Network.ServerStatsItem:FindFirstChild('Data Ping')
                if item then
                    local ok, v = pcall(function()
                        return item:GetValueString()
                    end)
                    if ok and v then
                        return tonumber(v:match('%d+')) or 0
                    end
                end
                return 0
            end

            function cache.getMainEvent()
                return cache.ReplicatedStorage:WaitForChild('MainEvent')
            end

            cache.icons = {
                ragebot = 'rbxassetid://10734934585',
                misc = 'rbxassetid://10709811939',
                visuals = 'rbxassetid://10723346959',
                settings = 'rbxassetid://10734950309',
            }

            return cache
        end

        function __M.a(): typeof(__modImpl())
            local v = __M.cache.a
            if not v then
                v = { c = __modImpl() }
                __M.cache.a = v
            end
            return v.c
        end
    end

    do
        local function __modImpl()
            local cache = __M.a()

            return {
                plr = cache.Players,
                rnd = cache.RunService,
                runService = cache.RunService,
                input = cache.UserInputService,
                http = cache.HttpService,
                stats = cache.Stats,
                lighting = cache.Lighting,
                tps = cache.TeleportService,
                mkt = cache.MarketplaceService,
                tweenService = cache.TweenService,
                repStorage = cache.ReplicatedStorage,
                lp = cache.lp,
                cam = cache.cam,
                ws = cache.ws,
                huge = cache.huge,
                floor = cache.floor,
                ceil = cache.ceil,
                random = cache.random,
                abs = cache.abs,
                sin = cache.sin,
                cos = cache.cos,
                rad = cache.rad,
                clamp = cache.clamp,
                min = cache.min,
                max = cache.max,
                sqrt = cache.sqrt,
                insert = cache.insert,
                remove = cache.remove,
                sort = cache.sort,
                concat = cache.concat,
                vec2 = cache.vec2,
                vec3 = cache.vec3,
                cfr = cache.cfr,
                dim2 = cache.dim2,
                c3 = cache.c3,
                c3rgb = cache.c3rgb,
                c3hsv = cache.c3hsv,
                c3hex = cache.c3hex,
                getPing = cache.getPing,
                getMainEvent = cache.getMainEvent,
                icons = cache.icons,
                cache = cache,
                IS_MOBILE = cache.IS_MOBILE,  -- export để dùng sau
            }
        end

        function __M.b(): typeof(__modImpl())
            local v = __M.cache.b
            if not v then
                v = { c = __modImpl() }
                __M.cache.b = v
            end
            return v.c
        end
    end
    do
        local function __modImpl()
            local Env = getgenv()

            if Env.Sakura then
                Env.Sakura.Utility.unload()
            end

            local Players = game:GetService('Players')
            local UserInputService = game:GetService('UserInputService')
            local RunService = game:GetService('RunService')
            local CoreGui = game:GetService('CoreGui')
            local HttpService = game:GetService('HttpService')
            local TweenService = game:GetService('TweenService')
            local TeleportService = game:GetService('TeleportService')
            local Workspace = game:GetService('Workspace')
            local GuiService = game:GetService('GuiService')
            local Lighting = game:GetService('Lighting')
            local Stats = game:GetService('Stats')

            if not LPH_OBFUSCATED then
                LPH_ENCSTR = function(...)
                    return ...
                end
                LPH_ENCNUM = function(...)
                    return ...
                end
                LPH_CRASH = function(...)
                    return ...
                end
                LPH_JIT = function(...)
                    return ...
                end
                LPH_JIT_MAX = function(...)
                    return ...
                end
                LPH_NO_VIRTUALIZE = function(...)
                    return ...
                end
                LPH_NO_UPVALUES = function(...)
                    return ...
                end
            end

            local Camera = workspace.CurrentCamera
            local HiddenUI = gethui()
            local LocalPlayer = Players.LocalPlayer
            local Loaded = false
            local Acceleration = Vector3.new(0, -Workspace.Gravity, 0)

            Env.Sakura = {}

            local BinLib = {
                methods = {
                    ['function'] = true,
                    thread = true,
                    RBXScriptConnection = 'Disconnect',
                },
            }

            do
                function BinLib.bin()
                    local bin = {storage = {}}

                    function bin:add(item, method)
                        table.insert(self.storage, {
                            main = item,
                            destroy = function()
                                local destroyMethod = method or BinLib.methods[typeof(item)] or 'Destroy'

                                if destroyMethod == true then
                                    if type(item) == 'function' then
                                        item()
                                    else
                                        task.cancel(item)
                                    end
                                else
                                    local callMethod = item[destroyMethod]

                                    if callMethod then
                                        callMethod(item)
                                    end
                                end
                            end,
                        })

                        return item
                    end
                    function bin:destroy()
                        if not (self and self.storage) then
                            return
                        end

                        for _, entry in ipairs(self.storage)do
                            if entry and entry.destroy then
                                entry.destroy()
                            end
                        end

                        self.storage = nil
                    end

                    return bin
                end
            end

            Env.Sakura.BinLib = BinLib
            Bin = BinLib.bin()
            Env.Sakura.Bin = Bin

            local Utility = {}

            do
                function Utility.unload()
                    Bin:destroy()

                    Env.Sakura = nil
                end
                function Utility.Connect(connection)
                    Bin:add(connection)

                    return connection
                end
                function Utility.New(sqr, props)
                    local Obj = Instance.new(sqr)

                    if props then
                        for _, v in props do
                            Obj[_] = v
                        end
                    end

                    Bin:add(Obj)

                    return Obj
                end
                function Utility.Round(number, float)
                    local Mult = 1 / (float or 1)

                    return math.floor(number * Mult + 0.5) / Mult
                end
                function Utility.GetTrans(obj)
                    local Index

                    if obj:IsA('Frame') then
                        Index = 'BackgroundTransparency'
                    elseif obj:IsA('TextLabel') or obj:IsA('TextButton') then
                        Index = 'TextTransparency'
                    elseif obj:IsA('ImageLabel') or obj:IsA('ImageButton') then
                        Index = 'ImageTransparency'
                    elseif obj:IsA('ScrollingFrame') then
                        Index = 'BackgroundTransparency'
                    elseif obj:IsA('TextBox') then
                        Index = 'TextTransparency'
                    end

                    return Index
                end
                function Utility.GetFiles(folder, extensions)
                    if not isfolder(folder) then
                        makefolder(folder)
                    end

                    local Files = isfolder(folder) and listfiles(folder) or {}
                    local StoredFiles = {}
                    local FileNames = {}

                    for _, v in Files do
                        for _, ext in extensions do
                            if v:find(ext) then
                                StoredFiles[#StoredFiles + 1] = v
                                FileNames[#FileNames + 1] = v:gsub(folder, ''):gsub(ext, '')
                            end
                        end
                    end

                    return StoredFiles, FileNames
                end
                function Utility.Lerp(a, b, c)
                    c = c or 0.125

                    local offset = math.abs(b - a)

                    if (offset < c) then
                        return b
                    end

                    return a + (b - a) * c
                end
                function Utility.LineMath(obj, from, to, thickness)
                    local Direction = (to - from)
                    local Center = (to + from) / 2
                    local Distance = Direction.Magnitude
                    local Theta = math.deg(math.atan2(Direction.Y, Direction.X))

                    obj.Position = UDim2.fromOffset(Center.x, Center.y)
                    obj.Rotation = Theta
                    obj.Size = UDim2.fromOffset(Distance, thickness)
                end

                Utility.Signal = Utility.Connect
            end

            Env.Sakura.Utility = Utility

            local Games = {
                Data = {
                    ['Arsenal'] = {
                        Name = 'Arsenal',
                        GameId = 111958650,
                        GetInfo = function(data, player, ...)
                            local NRPBS = player:FindFirstChild('NRPBS')
                            local Health = NRPBS and NRPBS:FindFirstChild('Health')
                            local MaxHealth = NRPBS and NRPBS:FindFirstChild('MaxHealth')
                            local EquippedTool = NRPBS and NRPBS:FindFirstChild('EquippedTool')

                            data.Tool = EquippedTool and EquippedTool.Value or nil
                            data.Health = Health and Health.Value or 0
                            data.MaxHealth = MaxHealth and MaxHealth.Value or 100
                        end,
                    },
                    ['Apocalypse Rising 2'] = {
                        Name = 'Apocalypse Rising 2',
                        GameId = 358276974,
                        GetPlayers = function()
                            local Entities = Players:GetPlayers()
                            local Zombies = workspace:FindFirstChild('Zombies')

                            if not Zombies then
                                return Entities
                            end

                            local Mobs = Zombies:FindFirstChild('Mobs')

                            if not Mobs then
                                return Entities
                            end

                            for _, mob in Mobs:GetChildren()do
                                table.insert(Entities, mob)
                            end

                            return Entities
                        end,
                        GetInfo = function(data, player, ...)
                            if data.IsPlayer then
                                local Stats = player:FindFirstChild('Stats')
                                local Health = Stats and Stats:FindFirstChild('Health')
                                local Weapon = Stats and Stats:FindFirstChild('Primary')

                                data.Tool = Weapon and Weapon.Value or nil
                                data.Health = Health and Health.Value or 0
                            else
                                data.Tool = 'None'
                                data.Health = 100
                                data.MaxHealth = 100
                                data.Team = nil
                                data.IsTeammate = false
                            end
                        end,
                    },
                    ['Typical Colors 2'] = {
                        Name = 'Typical Colors 2',
                        GameId = 147332621,
                        GetInfo = function(data, player, ...)
                            local Character = data.Character
                            local Gun = Character and Character:FindFirstChild('Gun')
                            local Boop = Gun and Gun:FindFirstChild('Boop')

                            data.Tool = Boop and Boop.Value or nil
                        end,
                    },
                },
            }

            function Games.GetGame()
                for _, v in Games.Data do
                    if game.GameId == v.GameId then
                        return v
                    end
                end

                return nil
            end

            local Game = Games.GetGame()
            local GameName = Game and Game.Name or ''
            local Folder = 'Sakura'

            makefolder(Folder)

            local ImagesFolder = string.format('%s\\%s\\', Folder, 'Images')

            makefolder(ImagesFolder)

            local FontsFolder = string.format('%s\\%s\\', Folder, 'FontsFolder')

            makefolder(FontsFolder)

            local ConfigFolder = string.format('%s\\%s\\', Folder, 'Configs')

            makefolder(ConfigFolder)

            local SoundsFolder = string.format('%s\\%s\\', Folder, 'Sounds')

            makefolder(SoundsFolder)

            local Folders = {
                Root = Folder,
                GetPath = function(subfolder)
                    return string.format('%s\\%s', Folder, subfolder)
                end,
                Create = function(subfolder)
                    local path = Folders.GetPath(subfolder)

                    if not isfolder(path) then
                        makefolder(path)
                    end

                    return path
                end,
            }

            Env.Sakura.Folders = Folders

            task.spawn(function()
                local soundsPath = Folders.GetPath('Sounds')

                local function downloadSound(fileName, url)
                    local path = soundsPath .. '\\' .. fileName

                    if isfile(path) then
                        return true
                    end

                    local success, data = pcall(function()
                        return game:HttpGet(url)
                    end)

                    if success and data then
                        writefile(path, data)

                        return true
                    end

                    return false
                end

                local success1, response1 = pcall(function()
                    return game:HttpGet(
[[https://api.github.com/repos/OnChangedCallback/sounds/contents/main]])
                end)

                if success1 then
                    local jsonSuccess, data = pcall(function()
                        return HttpService:JSONDecode(response1)
                    end)

                    if jsonSuccess and type(data) == 'table' then
                        for _, file in ipairs(data)do
                            if file.name and file.name:match('%.wav$') then
                                downloadSound(file.name, file.download_url)
                            end
                        end
                    end
                end

                local success2, response2 = pcall(function()
                    return game:HttpGet(
[[https://api.github.com/repos/f1nobe7650/Nebula/contents/Sounds]])
                end)

                if success2 then
                    local jsonSuccess, data = pcall(function()
                        return HttpService:JSONDecode(response2)
                    end)

                    if jsonSuccess and type(data) == 'table' then
                        for _, file in ipairs(data)do
                            if file.name and (file.name:match('%.wav$') or file.name:match('%.mp3$') or file.name:match('%.ogg$')) then
                                downloadSound('Nebula_' .. file.name, 
[[https://github.com/f1nobe7650/Nebula/raw/refs/heads/main/Sounds/]] .. file.name)
                            end
                        end
                    end
                end
            end)

            local Fonts = {
                URL = 
[[https://raw.githubusercontent.com/luminbot/FontStorage/main/]],
                Names = {
                    'Proggy',
                    'ProggyTiny',
                    'Minecraftia',
                    'SmallestPixel7',
                    'Verdana',
                    'VerdanaBold',
                    'Tahoma',
                    'ProggyClean',
                    'TahomaXP',
                },
                Data = {},
            }

            do
                function Fonts.Load(font)
                    local TTF = string.format('%s%s.ttf', FontsFolder, font)
                    local JSON = string.format('%s%s.json', FontsFolder, font)

                    if not isfile(TTF) then
                        local success, data = pcall(function()
                            return game:HttpGet(string.format('%s%s.txt', Fonts.URL, font))
                        end)

                        if success and data then
                            writefile(TTF, base64_decode(data))
                        else
                            return
                        end
                    end
                    if not isfile(JSON) then
                        local Font = {
                            name = font,
                            faces = {
                                {
                                    name = 'Regular',
                                    weight = 400,
                                    style = 'normal',
                                    assetId = getcustomasset(TTF),
                                },
                            },
                        }

                        writefile(JSON, HttpService:JSONEncode(Font))
                    end

                    Fonts.Data[font] = Font.new(getcustomasset(JSON), Enum.FontWeight.Regular)
                end
                function Fonts.Get(font)
                    return Fonts.Data[font]
                end

                for _, font in Fonts.Names do
                    Fonts.Load(font)
                end
            end

            Env.Sakura.Fonts = Fonts

            local Images = {
                URL = 
[[https://raw.githubusercontent.com/OxygenClub/LUAS/refs/heads/main/pictures/]],
                Names = {
                    'gear',
                },
                Data = {},
            }

            do
                function Images.Load(image)
                    local PNG = string.format('%s%s.png', ImagesFolder, image)

                    if not isfile(PNG) then
                        local success, data = pcall(function()
                            return game:HttpGet(string.format('%s%s.txt', Images.URL, image))
                        end)

                        if success and data then
                            writefile(PNG, base64_decode(data))
                        else
                            return
                        end
                    end

                    Images.Data[image] = getcustomasset(PNG)
                end
                function Images.Get(image)
                    return Images.Data[image]
                end

                for _, image in Images.Names do
                    Images.Load(image)
                end
            end

            Env.Sakura.Images = Images

            local AssetLoader = {
                URL = 'https://raw.githubusercontent.com/GhoulSER/env/main/',
                AssetsFolder = string.format('%s\\%s\\', Folder, 'assets'),
                Names = {
                    'peter.png',
                },
                Data = {},
                AssetNames = {},
            }

            do
                makefolder(AssetLoader.AssetsFolder)

                function AssetLoader:Init(directory)
                    self.AssetsFolder = string.format('%s\\%s\\', directory, 'assets')

                    if not isfolder(self.AssetsFolder) then
                        makefolder(self.AssetsFolder)
                    end
                end
                function AssetLoader:LoadAsset(assetName)
                    local ext = assetName:match('%.([^%.]+)$') or 'png'
                    local fileName = assetName:match('%.([^%.]+)$') and assetName or (assetName .. '.png')
                    local filePath = string.format('%s%s', self.AssetsFolder, fileName)

                    if isfile(filePath) then
                        local success, asset = pcall(function()
                            return getcustomasset(filePath)
                        end)

                        if success and asset then
                            self.Data[assetName] = asset

                            if not table.find(self.AssetNames, assetName) then
                                table.insert(self.AssetNames, assetName)
                            end

                            return asset
                        else
                            warn('[AssetLoader] Failed to load asset from file: ' .. filePath)

                            return nil
                        end
                    else
                        local success, data = pcall(function()
                            return game:HttpGet(string.format('%s%s', self.URL, fileName))
                        end)

                        if success and data then
                            writefile(filePath, data)

                            local success, asset = pcall(function()
                                return getcustomasset(filePath)
                            end)

                            if success and asset then
                                self.Data[assetName] = asset

                                if not table.find(self.AssetNames, assetName) then
                                    table.insert(self.AssetNames, assetName)
                                end

                                return asset
                            else
                                warn('[AssetLoader] Failed to load asset from file: ' .. filePath)

                                return nil
                            end
                        else
                            warn('[AssetLoader] Failed to load ' .. fileName .. 
[[ from GitHub. Make sure the file exists in the assets folder or on GitHub.]])

                            return nil
                        end
                    end
                end
                function AssetLoader:GetCustomAsset(assetName)
                    if self.Data[assetName] then
                        return self.Data[assetName]
                    end

                    return self:LoadAsset(assetName)
                end
                function AssetLoader:GetAssetNames()
                    return self.AssetNames
                end
                function AssetLoader:LoadAll(assetNames)
                    if assetNames then
                        for _, name in ipairs(assetNames)do
                            self:LoadAsset(name)
                        end
                    else
                        local files = isfolder(self.AssetsFolder) and listfiles(self.AssetsFolder) or {}

                        for _, filePath in ipairs(files)do
                            local fileName = filePath:gsub(self.AssetsFolder, '')

                            if fileName ~= '' then
                                self:LoadAsset(fileName)
                            end
                        end
                    end
                end
                function AssetLoader:PreloadDefaults()
                    for _, name in ipairs(self.Names)do
                        self:LoadAsset(name)
                    end
                end
            end
            do
                AssetLoader:PreloadDefaults()
                AssetLoader:LoadAll()
            end

            Env.Sakura.AssetLoader = AssetLoader

            local Library = {
                TweenSpeed = 0.2,
                TweenStyle = Enum.EasingStyle.Quad,
                ThemeObjects = {},
                Font = Font.new('rbxassetid://12187365364', Enum.FontWeight.Bold),
                FontSize = 15,
                Flags = {},
                ConfigFlags = {},
                LoadConfigCallbacks = {},
                OnToggleChange = nil,
                Popups = {},
                Dropdowns = {},
                Fps = 0,
                ScrollBar = 'rbxassetid://12776289446',
                Saturation = 'rbxassetid://13901004307',
                Checkers = 'http://www.roblox.com/asset/?id=18274452449',
                Converts = {
                    [0] = '0',
                    '1',
                    '2',
                    '3',
                    '4',
                    '5',
                    '6',
                    '7',
                    '8',
                    '9',
                },
                KeyConverters = {
                    escape = 'ESC',
                    backquote = '`',
                    backspace = 'BSP',
                    slash = '/',
                    leftquote = "'",
                    rightquote = '"',
                    leftbracket = '[',
                    rightbracket = ']',
                    semicolon = ';',
                    comma = ',',
                    period = '.',
                    backslash = '\\',
                    minus = '-',
                    equals = '=',
                    space = 'SPC',
                    ['return'] = 'ENT',
                    tab = 'TAB',
                    capslock = 'CAP',
                    leftshift = 'LSH',
                    mousebutton1 = 'MB1',
                    mousebutton2 = 'MB2',
                    mousebutton3 = 'MB3',
                    rightshift = 'RSH',
                    leftcontrol = 'CTRL',
                    leftalt = 'ALT',
                    leftsuper = 'WIN',
                    rightcontrol = 'CTRL',
                    rightalt = 'ALT',
                    rightsuper = 'WIN',
                    insert = 'INS',
                    delete = 'DEL',
                    home = 'HME',
                    pageup = 'PUD',
                    pagedown = 'PDN',
                    up = 'UP',
                    down = 'DWN',
                    left = 'LFT',
                    right = 'RGT',
                    numlock = 'NUM',
                    numpad0 = 'N0',
                    numpad1 = 'N1',
                    numpad2 = 'N2',
                    numpad3 = 'N3',
                    numpad4 = 'N4',
                    numpad5 = 'N5',
                    numpad6 = 'N6',
                    numpad7 = 'N7',
                    numpad8 = 'N8',
                    numpad9 = 'N9',
                },
                Theme = {
                    Inline = Color3.fromRGB(52, 52, 52),
                    Background = Color3.fromRGB(36, 36, 36),
                    ['Page Background'] = Color3.fromRGB(22, 22, 22),
                    ['Section Background'] = Color3.fromRGB(30, 30, 30),
                    ['Dark Background'] = Color3.fromRGB(19, 19, 19),
                    Accent = Color3.fromRGB(0, 134, 229),
                    ['Dark Text'] = Color3.fromRGB(120, 120, 120),
                    ['Light Text'] = Color3.fromRGB(160, 160, 160),
                    Text = Color3.fromRGB(220, 220, 220),
                },
                Notifications = {},
            }

            Library.__index = Library

            do
                Library.Folders = Folders
                Library.Utility = {
                    Objects = {},
                    Connections = {},
                }

                local Utility = Library.Utility

                do
                    function Utility.New(object, props, theme)
                        local Obj = Instance.new(object)

                        if props then
                            for prop, val in props do
                                Obj[prop] = val
                            end
                        end
                        if theme then
                            Library.AddObjectTheme(Obj, theme)
                        end

                        table.insert(Utility.Objects, Obj)

                        return Obj
                    end
                    function Utility.Signal(connection)
                        table.insert(Utility.Connections, connection)

                        return connection
                    end
                    function Utility.GetTransparency(obj)
                        if obj:IsA('Frame') then
                            return 'BackgroundTransparency'
                        elseif obj:IsA('TextLabel') or obj:IsA('TextButton') then
                            return {
                                'TextTransparency',
                                'BackgroundTransparency',
                            }
                        elseif obj:IsA('ImageLabel') or obj:IsA('ImageButton') then
                            return {
                                'BackgroundTransparency',
                                'ImageTransparency',
                            }
                        elseif obj:IsA('ScrollingFrame') then
                            return {
                                'BackgroundTransparency',
                                'ScrollBarImageTransparency',
                            }
                        elseif obj:IsA('TextBox') then
                            return {
                                'TextTransparency',
                                'BackgroundTransparency',
                            }
                        end

                        return nil
                    end
                    function Utility.Round(number, float)
                        local Mult = 1 / (float or 1)

                        return math.floor(number * Mult + 0.5) / Mult
                    end
                    function Utility.PositionOver(position, object, addedy)
                        addedy = addedy or 0

                        local posX, posY = object.AbsolutePosition.X, (object.AbsolutePosition.Y - addedy)
                        local size = object.AbsoluteSize
                        local sizeX, sizeY = posX + size.X, posY + size.Y + addedy

                        if position.X >= posX and position.Y >= posY and position.X <= sizeX and position.Y <= sizeY then
                            return true
                        end

                        return false
                    end
                    function Utility.MouseOver(object, input)
                        local posX, posY = object.AbsolutePosition.X, object.AbsolutePosition.Y
                        local size = object.AbsoluteSize
                        local sizeX, sizeY = posX + size.X, posY + size.Y
                        local position = input.Position

                        if position.X >= posX and position.Y >= posY and position.X <= sizeX and position.Y <= sizeY then
                            return true
                        end

                        return false
                    end
                    function Utility.Lerp(a, b, c)
                        c = c or 0.125

                        local offset = math.abs(b - a)

                        if (offset < c) then
                            return b
                        end

                        return a + (b - a) * c
                    end
                    function Utility.StringToEnum(enumstring)
                        local EnumType, EnumValue = enumstring:match('Enum%.([^%.]+)%.(.+)')

                        if EnumType and EnumValue then
                            return Enum[EnumType][EnumValue]
                        end

                        return nil
                    end
                    function Utility.TextTriggers(text)
                        local gameName = 'Universal'
                        local success, result = pcall(function()
                            return game:GetService('MarketplaceService'):GetProductInfo(game.PlaceId, Enum.InfoType.Asset).Name
                        end)

                        if success and result then
                            gameName = result
                        end

                        local Triggers = {
                            ['{hour}'] = os.date('%H'),
                            ['{minute}'] = os.date('%M'),
                            ['{second}'] = os.date('%S'),
                            ['{ap}'] = os.date('%p'),
                            ['{month}'] = os.date('%b'),
                            ['{day}'] = os.date('%d'),
                            ['{year}'] = os.date('%Y'),
                            ['{fps}'] = Library.Fps,
                            ['{ping}'] = math.floor(Stats.PerformanceStats.Ping:GetValue() or 0),
                            ['{time}'] = os.date('%H:%M:%S'),
                            ['{date}'] = os.date('%b. %d, %Y'),
                            ['{game}'] = gameName,
                            ['{n}'] = '\n',
                        }

                        for i, v in Triggers do
                            text = string.gsub(text, i, v)
                        end

                        return text
                    end
                end

                Library.ScreenGui = Utility.New('ScreenGui', {
                    Name = '\0',
                    DisplayOrder = 1,
                    Parent = HiddenUI,
                })

                function Library.Tween(obj, props, tweeninfo)
                    tweeninfo = tweeninfo or TweenInfo.new(Library.TweenSpeed, Library.TweenStyle)

                    local Tween = TweenService:Create(obj, tweeninfo, props)

                    Tween:Play()

                    return Tween
                end
                function Library.Fade(obj, prop, vis)
                    if not obj or not prop or not pcall(function()
                        return obj.Visible
                    end) then
                        return
                    end

                    local OldTransparency = obj[prop]

                    obj[prop] = vis and 1 or OldTransparency

                    local Tween = Library.Tween(obj, {
                        [prop] = vis and OldTransparency or 1,
                    })

                    Utility.Signal(Tween.Completed:Connect(function()
                        if not vis then
                            task.wait()

                            obj[prop] = OldTransparency
                        end
                    end))

                    return Tween
                end
                function Library.AddObjectTheme(object, props)
                    local Theme = {
                        Props = props,
                        Object = object,
                    }

                    for prop, v in props do
                        if type(v) == 'string' then
                            object[prop] = Library.Theme[v]
                        elseif type(v) == 'function' then
                            object[prop] = v()
                        end
                    end

                    Library.ThemeObjects[object] = Theme
                end
                function Library.ChangeObjectTheme(object, props, tweened)
                    local Theme = Library.ThemeObjects[object]

                    if Theme then
                        Theme.Props = props

                        for prop, v in props do
                            if type(v) == 'string' then
                                if tweened then
                                    Theme.Tween = Library.Tween(object, {
                                        [prop] = Library.Theme[v],
                                    })
                                else
                                    object[prop] = Library.Theme[v]
                                end
                            elseif type(v) == 'function' then
                                object[prop] = v()
                            end
                        end
                    end
                end
                function Library.UpdateTheme(theme, color)
                    if not Library.Theme[theme] then
                        return
                    end

                    Library.Theme[theme] = color

                    for _, themeobj in Library.ThemeObjects do
                        for prop, val in themeobj.Props do
                            if val == theme then
                                if themeobj.Tween then
                                    themeobj.Tween:Cancel()
                                end

                                themeobj.Object[prop] = color
                            end
                        end
                    end
                end
                function Library.Config(cfg, default)
                    local Table = {}

                    for name, val in cfg do
                        Table[name:lower()] = val
                    end
                    for name, val in default do
                        if Table[name] == nil then
                            Table[name] = val
                        end
                    end

                    return Table
                end
                function Library.Resize(holder, box)
                    local Start, StartSize, Resizing
                    local CurrentSize = holder.Size
                    local OriginalSize = holder.Size

                    Utility.Signal(box.InputBegan:Connect(function(input)
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            Resizing = true
                            Start = input.Position
                            StartSize = holder.Size
                        end
                    end))
                    Utility.Signal(UserInputService.InputChanged:Connect(function(
                        input
                    )
                        if input.UserInputType == Enum.UserInputType.MouseMovement and Resizing then
                            local ViewportSize = Camera.ViewportSize

                            CurrentSize = UDim2.new(0, math.clamp(StartSize.X.Offset + (input.Position.X - Start.X), OriginalSize.X.Offset, ViewportSize.x), 0, math.clamp(StartSize.Y.Offset + (input.Position.Y - Start.Y), OriginalSize.Y.Offset, ViewportSize.y))
                            holder.Size = CurrentSize
                        end
                    end))
                    Utility.Signal(UserInputService.InputEnded:Connect(function(
                        input
                    )
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            Resizing = false
                        end
                    end))
                end
                function Library.Dragging(holder, box)
    local UserInputService = game:GetService("UserInputService")
    local dragging, dragInput, dragStart, startPos

    box.InputBegan:Connect(function(input)
        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then
            dragging = true
            dragStart = input.Position
            startPos = holder.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    UserInputService.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            local delta = input.Position - dragStart
            holder.Position = UDim2.new(
                startPos.X.Scale, 
                startPos.X.Offset + delta.X, 
                startPos.Y.Scale, 
                startPos.Y.Offset + delta.Y
            )
        end
    end)
end

                function Library.ColorpickerWindow(self)
                    local Popup = {
                        Visible = false,
                        Tweening = false,
                        ZIndex = self.ZIndex,
                        Objects = {},
                        Flag = nil,
                        SetFunc = function() end,
                        Alpha = 1,
                        Color = Color3.new(1, 1, 1),
                        HuePos = nil,
                    }
                    local ZIndex = Popup.ZIndex
                    local Objects = Popup.Objects

                    do
                        Objects.Outline = Utility.New('Frame', {
                            Name = 'Outline',
                            Size = UDim2.new(0, 150, 0, 150),
                            BorderSizePixel = 0,
                            Parent = Library.ScreenGui,
                            ZIndex = ZIndex,
                            ClipsDescendants = true,
                            Visible = false,
                        }, {
                            BackgroundColor3 = 'Inline',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.Outline,
                            CornerRadius = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1
                        Objects.Background = Utility.New('TextButton', {
                            Name = 'Background',
                            Size = UDim2.new(1, -2, 1, -2),
                            Position = UDim2.fromOffset(1, 1),
                            Text = '',
                            AutoButtonColor = false,
                            Style = Enum.ButtonStyle.Custom,
                            BorderSizePixel = 0,
                            Parent = Objects.Outline,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Background',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.Background,
                            CornerRadius = UDim.new(0, 5),
                        })
                        Utility.New('UIPadding', {
                            Name = 'UIPadding',
                            Parent = Objects.Background,
                            PaddingLeft = UDim.new(0, 5),
                            PaddingRight = UDim.new(0, 5),
                            PaddingTop = UDim.new(0, 5),
                            PaddingBottom = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1
                        Objects.SaturationOutline = Utility.New('TextButton', {
                            Name = 'SaturationOutline',
                            Size = UDim2.new(1, -14, 1, -14),
                            BorderSizePixel = 0,
                            Parent = Objects.Background,
                            Text = '',
                            AutoButtonColor = false,
                            Style = Enum.ButtonStyle.Custom,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Inline',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.SaturationOutline,
                            CornerRadius = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1
                        Objects.SaturationBackground = Utility.New('ImageLabel', {
                            Name = 'SaturationBackground',
                            Size = UDim2.new(1, -2, 1, -2),
                            Position = UDim2.new(0, 1, 0, 1),
                            BackgroundColor3 = Color3.fromRGB(0, 0, 255),
                            BorderSizePixel = 0,
                            Parent = Objects.SaturationOutline,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.SaturationBackground,
                            CornerRadius = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1
                        Objects.SaturationImage = Utility.New('ImageLabel', {
                            Name = 'SaturationImage',
                            Size = UDim2.new(1, -2, 1, -2),
                            Position = UDim2.new(0, 1, 0, 1),
                            BorderSizePixel = 0,
                            Parent = Objects.SaturationOutline,
                            BackgroundTransparency = 1,
                            Image = Library.Saturation,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.SaturationImage,
                            CornerRadius = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1
                        Objects.SaturationPickerOutline = Utility.New('TextButton', {
                            Name = 'SaturationPickerOutline',
                            Size = UDim2.new(0, 6, 0, 6),
                            Position = UDim2.new(0, 0, 0, 0),
                            BorderSizePixel = 0,
                            Parent = Objects.SaturationImage,
                            Text = '',
                            AutoButtonColor = false,
                            Style = Enum.ButtonStyle.Custom,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Inline',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.SaturationPickerOutline,
                            CornerRadius = UDim.new(1, 0),
                        })

                        ZIndex = ZIndex + 1
                        Objects.SaturationPicker = Utility.New('Frame', {
                            Name = 'SaturationPicker',
                            Size = UDim2.new(1, -2, 1, -2),
                            Position = UDim2.new(0, 1, 0, 1),
                            BorderSizePixel = 0,
                            Parent = Objects.SaturationPickerOutline,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.SaturationPicker,
                            CornerRadius = UDim.new(1, 0),
                        })

                        Objects.HueOutline = Utility.New('TextButton', {
                            Name = 'HueOutline',
                            Size = UDim2.new(0, 12, 1, 0),
                            Position = UDim2.new(1, -12, 0, 0),
                            BorderSizePixel = 0,
                            Parent = Objects.Background,
                            Text = '',
                            AutoButtonColor = false,
                            Style = Enum.ButtonStyle.Custom,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Inline',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.HueOutline,
                            CornerRadius = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1
                        Objects.HueBackground = Utility.New('Frame', {
                            Name = 'HueBackground',
                            Size = UDim2.new(1, -2, 1, -2),
                            Position = UDim2.new(0, 1, 0, 1),
                            BackgroundColor3 = Color3.fromRGB(255, 255, 255),
                            BorderSizePixel = 0,
                            Parent = Objects.HueOutline,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.HueBackground,
                            CornerRadius = UDim.new(0, 5),
                        })
                        Utility.New('UIGradient', {
                            Color = ColorSequence.new{
                                ColorSequenceKeypoint.new(0, Color3.fromRGB(255, 0, 0)),
                                ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 0, 255)),
                                ColorSequenceKeypoint.new(0.33, Color3.fromRGB(0, 0, 255)),
                                ColorSequenceKeypoint.new(0.5, Color3.fromRGB(0, 255, 255)),
                                ColorSequenceKeypoint.new(0.67, Color3.fromRGB(0, 255, 0)),
                                ColorSequenceKeypoint.new(0.83, Color3.fromRGB(255, 255, 0)),
                                ColorSequenceKeypoint.new(1, Color3.fromRGB(255, 0, 0)),
                            },
                            Rotation = 90,
                            Parent = Objects.HueBackground,
                        })

                        ZIndex = ZIndex + 1
                        Objects.HuePickerOutline = Utility.New('TextButton', {
                            Name = 'HuePickerOutline',
                            Size = UDim2.new(0, 10, 0, 10),
                            Position = UDim2.new(0, 0, 0, 0),
                            BorderSizePixel = 0,
                            Parent = Objects.HueBackground,
                            Text = '',
                            AutoButtonColor = false,
                            Style = Enum.ButtonStyle.Custom,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Inline',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.HuePickerOutline,
                            CornerRadius = UDim.new(1, 0),
                        })

                        ZIndex = ZIndex + 1
                        Objects.HuePicker = Utility.New('Frame', {
                            Name = 'SaturationPicker',
                            Size = UDim2.new(1, -2, 1, -2),
                            Position = UDim2.new(0, 1, 0, 1),
                            BorderSizePixel = 0,
                            Parent = Objects.HuePickerOutline,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.HuePicker,
                            CornerRadius = UDim.new(1, 0),
                        })

                        Objects.AlphaOutline = Utility.New('TextButton', {
                            Name = 'AlphaOutline',
                            Size = UDim2.new(1, -14, 0, 12),
                            Position = UDim2.new(0, 0, 1, -12),
                            BorderSizePixel = 0,
                            Parent = Objects.Background,
                            Text = '',
                            AutoButtonColor = false,
                            Style = Enum.ButtonStyle.Custom,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Inline',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.AlphaOutline,
                            CornerRadius = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1
                        Objects.AlphaImage = Utility.New('ImageLabel', {
                            Name = 'AlphaImage',
                            Size = UDim2.new(1, -2, 1, -2),
                            Position = UDim2.new(0, 1, 0, 1),
                            BackgroundColor3 = Color3.fromRGB(0, 0, 255),
                            BorderSizePixel = 0,
                            Parent = Objects.AlphaOutline,
                            Image = Library.Checkers,
                            ScaleType = Enum.ScaleType.Tile,
                            TileSize = UDim2.new(0, 6, 0, 6),
                            ZIndex = ZIndex,
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.AlphaImage,
                            CornerRadius = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1
                        Objects.AlphaBackground = Utility.New('Frame', {
                            Name = 'SaturationPicker',
                            Size = UDim2.new(1, 0, 1, 0),
                            BorderSizePixel = 0,
                            Parent = Objects.AlphaImage,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.AlphaBackground,
                            CornerRadius = UDim.new(0, 5),
                        })
                        Utility.New('UIGradient', {
                            Parent = Objects.AlphaBackground,
                            Rotation = 180,
                            Transparency = NumberSequence.new({
                                NumberSequenceKeypoint.new(0, 1),
                                NumberSequenceKeypoint.new(1, 0),
                            }),
                        })

                        ZIndex = ZIndex + 1
                        Objects.AlphaPickerOutline = Utility.New('TextButton', {
                            Name = 'AlphaPickerOutline',
                            Size = UDim2.new(0, 10, 0, 10),
                            Position = UDim2.new(0, 0, 0, 0),
                            BorderSizePixel = 0,
                            Parent = Objects.AlphaBackground,
                            Text = '',
                            AutoButtonColor = false,
                            Style = Enum.ButtonStyle.Custom,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Inline',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.AlphaPickerOutline,
                            CornerRadius = UDim.new(1, 0),
                        })

                        ZIndex = ZIndex + 1
                        Objects.AlphaPicker = Utility.New('Frame', {
                            Name = 'AlphaPicker',
                            Size = UDim2.new(1, -2, 1, -2),
                            Position = UDim2.new(0, 1, 0, 1),
                            BorderSizePixel = 0,
                            Parent = Objects.AlphaPickerOutline,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.AlphaPicker,
                            CornerRadius = UDim.new(1, 0),
                        })
                    end

                    local Hue, Sat, Val

                    function Popup.Set(color, alpha, ignore)
                        alpha = alpha or Popup.Alpha
                        Hue, Sat, Val = color:ToHSV()
                        Popup.Color = color
                        Popup.Alpha = alpha

                        if not ignore then
                            Objects.SaturationPickerOutline.Position = UDim2.new(math.clamp(Sat, 0, 1), Sat < 1 and 0 or 
-6, math.clamp(1 - Val, 0, 1), 1 - Val < 1 and 0 or -6)
                            Popup.HuePos = Hue
                            Objects.HuePickerOutline.Position = UDim2.new(0, 0, math.clamp(1 - Hue, 0, 1), 1 - Hue < 1 and 0 or 
-10)
                            Objects.AlphaPickerOutline.Position = UDim2.new(math.clamp(alpha, 0, 1), alpha < 1 and 0 or 
-10, 0, 0)
                        end
                        if Popup.SetFunc and type(Popup.SetFunc) == 'function' then
                            Popup.SetFunc(color, alpha)
                        end

                        Objects.HuePicker.BackgroundColor3 = Color3.fromHSV(Popup.HuePos, 1, 1)
                        Objects.SaturationPicker.BackgroundColor3 = color
                        Objects.AlphaPicker.BackgroundColor3 = color
                        Objects.AlphaBackground.BackgroundColor3 = color
                        Objects.SaturationBackground.BackgroundColor3 = Color3.fromHSV(Popup.HuePos, 1, 1)
                    end
                    function Popup.Open(position)
                        if Popup.Tweening then
                            return
                        end

                        Popup.Tweening = true
                        Popup.Visible = not Popup.Visible

                        if Popup.Visible then
                            Objects.Outline.Visible = true
                        end

                        local ParentObjects = Objects.Outline:GetDescendants()

                        table.insert(ParentObjects, Objects.Outline)

                        for _, obj in ParentObjects do
                            local Index = Utility.GetTransparency(obj)

                            if Index then
                                if type(Index) == 'table' then
                                    for _, prop in Index do
                                        Library.Fade(obj, prop, Popup.Visible)
                                    end
                                else
                                    Library.Fade(obj, Index, Popup.Visible)
                                end
                            end
                        end

                        if position then
                            Objects.Outline.Position = UDim2.new(0, position.X, 0, position.Y)
                        end

                        local Size = Objects.Outline.AbsoluteSize

                        Objects.Outline.Size = Popup.Visible and UDim2.new(0, Size.X, 0, 20) or UDim2.new(0, Size.X, 0, Size.Y)

                        local Tween = Library.Tween(Objects.Outline, {
                            Size = Popup.Visible and UDim2.new(0, Size.X, 0, Size.Y) or UDim2.new(0, Size.X, 0, 20),
                        })

                        Utility.Signal(Tween.Completed:Connect(function()
                            Objects.Outline.Visible = Popup.Visible
                            Objects.Outline.Size = UDim2.new(0, Size.X, 0, Size.Y)
                            Popup.Tweening = false
                        end))
                    end
                    function Popup.SlideSaturation(input)
                        local SizeX = math.clamp((input.Position.X - Objects.SaturationOutline.AbsolutePosition.X) / Objects.SaturationOutline.AbsoluteSize.X, 0, 1)
                        local SizeY = 1 - math.clamp((input.Position.Y - Objects.SaturationOutline.AbsolutePosition.Y) / Objects.SaturationOutline.AbsoluteSize.Y, 0, 1)

                        Objects.SaturationPickerOutline.Position = UDim2.new(SizeX, 0, 1 - SizeY, 0)
                        Objects.SaturationPickerOutline.AnchorPoint = Vector2.new(SizeX, 1 - SizeY)

                        Popup.Set(Color3.fromHSV(Popup.HuePos, SizeX, SizeY), Popup.Alpha, true)
                    end

                    Utility.Signal(Objects.SaturationOutline.MouseButton1Down:Connect(function(
                    )
                        Popup.SlidingSaturation = true

                        Popup.SlideSaturation({
                            Position = UserInputService:GetMouseLocation() - Vector2.new(0, 62),
                        })
                    end))

                    function Popup.SlideHue(input)
                        local SizeY = 1 - math.clamp((input.Position.Y - Objects.HueOutline.AbsolutePosition.Y) / Objects.HueOutline.AbsoluteSize.Y, 0, 1)

                        Objects.HuePickerOutline.Position = UDim2.new(0, 0, 1 - SizeY, 0)
                        Objects.HuePickerOutline.AnchorPoint = Vector2.new(0, 1 - SizeY)
                        Popup.HuePos = SizeY

                        Popup.Set(Color3.fromHSV(SizeY, Sat, Val), Popup.Alpha, true)
                    end

                    Utility.Signal(Objects.HueOutline.MouseButton1Down:Connect(function(
                    )
                        Popup.SlidingHue = true

                        Popup.SlideHue({
                            Position = UserInputService:GetMouseLocation() - Vector2.new(0, 62),
                        })
                    end))

                    function Popup.SlideAlpha(input)
                        local SizeX = math.clamp((input.Position.X - Objects.AlphaOutline.AbsolutePosition.X) / Objects.AlphaOutline.AbsoluteSize.X, 0, 1)

                        Objects.AlphaPickerOutline.Position = UDim2.new(SizeX, 0, 0, 0)
                        Objects.AlphaPickerOutline.AnchorPoint = Vector2.new(SizeX, 0)

                        Popup.Set(Popup.Color, SizeX, true)
                    end

                    Utility.Signal(Objects.AlphaOutline.MouseButton1Down:Connect(function(
                    )
                        Popup.SlidingAlpha = true

                        Popup.SlideAlpha({
                            Position = UserInputService:GetMouseLocation(),
                        })
                    end))
                    Utility.Signal(UserInputService.InputChanged:Connect(function(
                        input
                    )
                        if input.UserInputType == Enum.UserInputType.MouseMovement then
                            if Popup.SlidingSaturation then
                                Popup.SlideSaturation({
                                    Position = UserInputService:GetMouseLocation() - Vector2.new(0, 62),
                                })
                            end
                            if Popup.SlidingHue then
                                Popup.SlideHue({
                                    Position = UserInputService:GetMouseLocation() - Vector2.new(0, 62),
                                })
                            end
                            if Popup.SlidingAlpha then
                                Popup.SlideAlpha({
                                    Position = UserInputService:GetMouseLocation(),
                                })
                            end
                        end
                    end))
                    Utility.Signal(UserInputService.InputEnded:Connect(function(
                        input
                    )
                        if input.UserInputType == Enum.UserInputType.MouseButton1 then
                            Popup.SlidingSaturation, Popup.SlidingHue, Popup.SlidingAlpha = false, false, false
                        end
                    end))

                    return Popup
                end

                do
                    local ColorpickerWindowFunc = Library.ColorpickerWindow

                    Library.ColorpickerWindow = ColorpickerWindowFunc({ZIndex = 5000})
                end

                function Library.Window(self, cfg)
                    cfg = cfg or {}
                    cfg = Library.Config(cfg, {
                        name = 'User Interface',
                        size = UDim2.fromOffset(350, 430),
                        open = true,
                        fontsize = 15,
                    })

                    local Window = {
                        Objects = {},
                        Visible = cfg.open,
                        Tweening = false,
                        TabsTweening = false,
                        ZIndex = 0,
                        Tabs = {},
                    }
                    local ZIndex = Window.ZIndex
                    local Objects = Window.Objects

                    do
                        Objects.ScreenGui = Utility.New('ScreenGui', {
                            Name = '\0',
                            Parent = HiddenUI,
                            IgnoreGuiInset = true,
                        })
                        Objects.Outline = Utility.New('Frame', {
                            Name = 'Outline',
                            Size = cfg.size,
                            Position = UDim2.new(0.5, -cfg.size.X.Offset / 2, 0.5, 
-cfg.size.Y.Offset / 2),
                            BorderSizePixel = 0,
                            Parent = Objects.ScreenGui,
                            ZIndex = ZIndex,
                            Visible = Window.Visible,
                            ClipsDescendants = true,
                        }, {
                            BackgroundColor3 = 'Page Background',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.Outline,
                            CornerRadius = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1
                        Objects.SideInline = Utility.New('Frame', {
                            Name = 'SideInline',
                            Size = UDim2.new(0, 160, 1, 0),
                            Position = UDim2.fromOffset(0, 0),
                            BorderSizePixel = 0,
                            Parent = Objects.Outline,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Inline',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.SideInline,
                            CornerRadius = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1
                        Objects.SideBackground = Utility.New('Frame', {
                            Name = 'SideBackground',
                            Size = UDim2.new(1, -1, 1, 0),
                            Position = UDim2.fromOffset(0, 0),
                            BorderSizePixel = 0,
                            Parent = Objects.SideInline,
                            ZIndex = ZIndex,
                            ClipsDescendants = true,
                        }, {
                            BackgroundColor3 = 'Dark Background',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.SideBackground,
                            CornerRadius = UDim.new(0, 5),
                        })
                        Library.Dragging(Objects.Outline, Objects.SideBackground)
                        Utility.New('UIPadding', {
                            Name = 'UIPadding',
                            PaddingLeft = UDim.new(0, 5),
                            PaddingRight = UDim.new(0, 5),
                            PaddingTop = UDim.new(0, 8),
                            PaddingBottom = UDim.new(0, 5),
                            Parent = Objects.SideBackground,
                        })

                        ZIndex = ZIndex + 1
                        Objects.Title = Utility.New('TextLabel', {
                            Name = 'Title',
                            TextStrokeTransparency = 0.8,
                            BackgroundTransparency = 1,
                            TextSize = cfg.fontsize + 6,
                            TextYAlignment = Enum.TextYAlignment.Center,
                            FontFace = Library.Font,
                            Size = UDim2.new(1, 0, 0, 0),
                            Position = UDim2.new(0, 0, 0, 0),
                            Text = cfg.name,
                            Parent = Objects.SideBackground,
                            ZIndex = ZIndex,
                        }, {
                            TextColor3 = 'Text',
                        })
                        Objects.Title.Size = UDim2.new(1, 0, 0, Objects.Title.TextBounds.Y + 22)
                        Objects.SideScroll = Utility.New('ScrollingFrame', {
                            Name = 'SideScroll',
                            Size = UDim2.new(1, 0, 1, -Objects.Title.AbsoluteSize.Y),
                            Position = UDim2.fromOffset(0, Objects.Title.AbsoluteSize.Y),
                            BackgroundTransparency = 1,
                            BorderSizePixel = 0,
                            Parent = Objects.SideBackground,
                            ZIndex = ZIndex,
                            AutomaticCanvasSize = Enum.AutomaticSize.Y,
                            CanvasSize = UDim2.new(0, 0, 0, 0),
                            BottomImage = Library.ScrollBar,
                            MidImage = Library.ScrollBar,
                            TopImage = Library.ScrollBar,
                            ScrollBarThickness = 2,
                        }, {
                            ScrollBarImageColor3 = 'Accent',
                        })
                        Objects.SideContent = Utility.New('Frame', {
                            Name = 'SideContent',
                            Size = UDim2.new(1, 0, 0, 0),
                            AutomaticSize = Enum.AutomaticSize.Y,
                            Position = UDim2.fromOffset(0, 0),
                            BackgroundTransparency = 1,
                            BorderSizePixel = 0,
                            Parent = Objects.SideScroll,
                            ZIndex = ZIndex,
                        })

                        Utility.Signal(Objects.SideScroll:GetPropertyChangedSignal('AbsoluteCanvasSize'):Connect(function(
                        )
                            if Objects.SideScroll.AbsoluteCanvasSize.Y > Objects.SideScroll.AbsoluteSize.Y then
                                Objects.SideContent.Size = UDim2.new(1, -7, 0, 0)
                            else
                                Objects.SideContent.Size = UDim2.new(1, 0, 0, 0)
                            end
                        end))
                        Utility.Signal(Objects.SideScroll:GetPropertyChangedSignal('AbsoluteSize'):Connect(function(
                        )
                            if Objects.SideScroll.AbsoluteCanvasSize.Y > Objects.SideScroll.AbsoluteSize.Y then
                                Objects.SideContent.Size = UDim2.new(1, -7, 0, 0)
                            else
                                Objects.SideContent.Size = UDim2.new(1, 0, 0, 0)
                            end
                        end))
                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Vertical,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            Parent = Objects.SideContent,
                            Padding = UDim.new(0, 6),
                        })

                        Window.SideHolder = Objects.SideContent
                        Objects.ResizeBar = Utility.New('Frame', {
                            Name = 'ResizeBar',
                            BorderSizePixel = 0,
                            BackgroundTransparency = 1,
                            Size = UDim2.new(0, 5, 0, 5),
                            Position = UDim2.new(1, -5, 1, -5),
                            Parent = Objects.Outline,
                            ZIndex = ZIndex,
                        })

                        Library.Resize(Objects.Outline, Objects.ResizeBar)

                        Objects.PageHolder = Utility.New('Frame', {
                            Name = 'PageHolder',
                            Size = UDim2.new(1, -Objects.SideInline.AbsoluteSize.X, 1, 0),
                            Position = UDim2.new(0, Objects.SideInline.AbsoluteSize.X, 0, 0),
                            BackgroundTransparency = 1,
                            BorderSizePixel = 0,
                            Parent = Objects.Outline,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UIPadding', {
                            Name = 'UIPadding',
                            PaddingLeft = UDim.new(0, 5),
                            PaddingRight = UDim.new(0, 5),
                            PaddingTop = UDim.new(0, 5),
                            PaddingBottom = UDim.new(0, 5),
                            Parent = Objects.PageHolder,
                        })

                        Window.PageHolder = Objects.PageHolder
                        ZIndex = ZIndex + 1
                    end

                    Window.ZIndex = ZIndex

                    local AnimationSizeAmount = 20

                    function Window.Open()
                        if Window.Tweening then
                            return
                        end

                        for _, popup in Library.Popups do
                            if popup.Objects.Outline.Visible then
                                popup.Visible(false)
                            end
                        end
                        for _, dropdown in Library.Dropdowns do
                            if dropdown.Visible then
                                dropdown.Open()
                            end
                        end

                        if Library.ColorpickerWindow and type(Library.ColorpickerWindow) == 'table' and Library.ColorpickerWindow.Visible then
                            if Library.ColorpickerWindow.Open and type(Library.ColorpickerWindow.Open) == 'function' then
                                Library.ColorpickerWindow.Open()
                            end
                        end

                        Window.Tweening = true
                        Window.Visible = not Window.Visible

                        if Window.Visible then
                            Objects.Outline.Visible = true
                        end

                        for _, obj in Objects.ScreenGui:GetDescendants()do
                            local Index = Utility.GetTransparency(obj)

                            if Index then
                                if type(Index) == 'table' then
                                    for _, prop in Index do
                                        Library.Fade(obj, prop, Window.Visible)
                                    end
                                else
                                    Library.Fade(obj, Index, Window.Visible)
                                end
                            end
                        end

                        local OldSize = Objects.Outline.AbsoluteSize

                        Objects.Outline.Size = Window.Visible and UDim2.fromOffset(OldSize.X - AnimationSizeAmount, OldSize.Y - AnimationSizeAmount) or UDim2.fromOffset(OldSize.X, OldSize.Y)

                        local Tween = Library.Tween(Objects.Outline, {
                            Size = Window.Visible and UDim2.fromOffset(OldSize.x, OldSize.y) or UDim2.fromOffset(OldSize.x - AnimationSizeAmount, OldSize.y - AnimationSizeAmount),
                        })

                        Utility.Signal(Tween.Completed:Connect(function()
                            Objects.Outline.Size = UDim2.fromOffset(OldSize.X, OldSize.Y)
                            Window.Tweening = false
                            Objects.Outline.Visible = Window.Visible
                        end))
                    end

                    return setmetatable(Window, Library)
                end
                function Library.Info(self, cfg)
                    cfg = cfg or {}
                    cfg = Library.Config(cfg, {
                        name = 'Misc',
                    })

                    local Info = {
                        Objects = {},
                        ZIndex = self.ZIndex,
                    }
                    local ZIndex = Info.ZIndex
                    local Objects = Info.Objects

                    do
                        Objects.Holder = Utility.New('Frame', {
                            BackgroundTransparency = 1,
                            Size = UDim2.new(1, 0, 0, 0),
                            AutomaticSize = Enum.AutomaticSize.Y,
                            Parent = self.SideHolder,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UIPadding', {
                            Name = 'UIPadding',
                            PaddingLeft = UDim.new(0, 7),
                            PaddingRight = UDim.new(0, 7),
                            PaddingTop = UDim.new(0, 0),
                            PaddingBottom = UDim.new(0, 0),
                            Parent = Objects.Holder,
                        })

                        ZIndex = ZIndex + 1
                        Objects.Text = Utility.New('TextLabel', {
                            Name = 'Text',
                            TextStrokeTransparency = 0.8,
                            BackgroundTransparency = 1,
                            TextSize = Library.FontSize - 2,
                            FontFace = Library.Font,
                            Size = UDim2.new(0, 0, 0, 0),
                            Position = UDim2.new(0, 0, 0, 0),
                            AutomaticSize = Enum.AutomaticSize.XY,
                            TextColor3 = Color3.fromRGB(255, 255, 255),
                            Text = cfg.name,
                            Parent = Objects.Holder,
                            ZIndex = ZIndex,
                        }, {
                            TextColor3 = 'Dark Text',
                        })
                        ZIndex = ZIndex + 1
                    end

                    Info.ZIndex = ZIndex

                    return setmetatable(Info, Library)
                end
                function Library.Tab(self, cfg)
                    cfg = cfg or {}
                    cfg = Library.Config(cfg, {
                        name = 'New Tab',
                        icon = 'rbxassetid://284402752',
                    })

                    local Tab = {
                        ZIndex = self.ZIndex,
                        Tweening = false,
                        Objects = {},
                        Sections = {},
                        Name = cfg.name,
                    }
                    local ZIndex = Tab.ZIndex
                    local Objects = Tab.Objects

                    do
                        Objects.Holder = Utility.New('Frame', {
                            BackgroundTransparency = 1,
                            Size = UDim2.new(1, 0, 0, 0),
                            AutomaticSize = Enum.AutomaticSize.Y,
                            Parent = self.SideHolder,
                            ZIndex = ZIndex,
                        })
                        ZIndex = ZIndex + 1
                        Objects.Background = Utility.New('TextButton', {
                            Name = 'Background',
                            Size = UDim2.new(1, 0, 0, 0),
                            Position = UDim2.new(0, 0, 0, 0),
                            AutomaticSize = Enum.AutomaticSize.Y,
                            BorderSizePixel = 0,
                            BackgroundTransparency = 1,
                            Text = '',
                            AutoButtonColor = false,
                            Style = Enum.ButtonStyle.Custom,
                            Parent = Objects.Holder,
                            ZIndex = ZIndex,
                            ClipsDescendants = true,
                        }, {
                            BackgroundColor3 = 'Background',
                        })
                        ZIndex = ZIndex + 1

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.Background,
                            CornerRadius = UDim.new(0, 5),
                        })
                        Utility.New('UIPadding', {
                            Name = 'UIPadding',
                            Parent = Objects.Background,
                            PaddingLeft = UDim.new(0, 8),
                            PaddingRight = UDim.new(0, 8),
                            PaddingTop = UDim.new(0, 6),
                            PaddingBottom = UDim.new(0, 6),
                        })
                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            Parent = Objects.Background,
                            FillDirection = Enum.FillDirection.Horizontal,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            Padding = UDim.new(0, 7),
                        })

                        if cfg.icon then
                            Objects.Icon = Utility.New('ImageLabel', {
                                Name = 'Icon',
                                Size = UDim2.new(0, 20, 0, 20),
                                Position = UDim2.new(0, 0, 0, 0),
                                AutomaticSize = Enum.AutomaticSize.XY,
                                BackgroundTransparency = 1,
                                Image = cfg.icon,
                                Parent = Objects.Background,
                                ZIndex = ZIndex,
                            }, {
                                ImageColor3 = 'Dark Text',
                            })
                        end

                        Objects.Text = Utility.New('TextLabel', {
                            Name = 'Text',
                            TextStrokeTransparency = 0.8,
                            BackgroundTransparency = 1,
                            TextSize = Library.FontSize,
                            FontFace = Library.Font,
                            Size = UDim2.new(0, 0, 0, 0),
                            Position = UDim2.new(0, 0, 0, 0),
                            TextColor3 = Color3.fromRGB(255, 255, 255),
                            Text = cfg.name,
                            Parent = Objects.Background,
                            ZIndex = ZIndex,
                        }, {
                            TextColor3 = 'Dark Text',
                        })
                        Objects.Text.Size = UDim2.new(0, Objects.Text.TextBounds.X, 0, Objects.Text.TextBounds.Y - 2)

                        if Objects.Icon then
                            Objects.Icon.Size = UDim2.new(0, Objects.Text.TextBounds.Y, 0, Objects.Text.TextBounds.Y)
                        end

                        Objects.Page = Utility.New('Frame', {
                            Name = 'Page',
                            BackgroundTransparency = 1,
                            Size = UDim2.new(1, 0, 1, 0),
                            Position = UDim2.new(0, 0, 0, 0),
                            Parent = self.PageHolder,
                            Visible = false,
                            ZIndex = ZIndex,
                        })
                        ZIndex = ZIndex + 1
                        Objects.Left = Utility.New('Frame', {
                            Name = 'Left',
                            BackgroundTransparency = 1,
                            BorderSizePixel = 0,
                            Size = UDim2.new(0.5, -2, 1, 0),
                            Position = UDim2.new(0, 0, 0, 0),
                            Parent = Objects.Page,
                            ZIndex = ZIndex,
                        })

                        table.insert(Tab.Sections, Objects.Left)
                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            Parent = Objects.Left,
                            FillDirection = Enum.FillDirection.Vertical,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            VerticalFlex = Enum.UIFlexAlignment.Fill,
                            Padding = UDim.new(0, 4),
                        })

                        Tab.left = Objects.Left
                        Objects.Right = Utility.New('Frame', {
                            Name = 'Right',
                            BackgroundTransparency = 1,
                            BorderSizePixel = 0,
                            Size = UDim2.new(0.5, -2, 1, 0),
                            Position = UDim2.new(0.5, 2, 0, 0),
                            Parent = Objects.Page,
                            ZIndex = ZIndex,
                        })

                        table.insert(Tab.Sections, Objects.Right)
                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            Parent = Objects.Right,
                            FillDirection = Enum.FillDirection.Vertical,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            VerticalFlex = Enum.UIFlexAlignment.Fill,
                            Padding = UDim.new(0, 4),
                        })

                        Tab.right = Objects.Right
                    end

                    Tab.ZIndex = ZIndex

                    function Tab.Set(status, nested)
                        if self.TabsTweening and status then
                            return
                        end

                        Library.Tween(Objects.Background, {
                            BackgroundTransparency = status and 0 or 1,
                        })
                        Library.ChangeObjectTheme(Objects.Text, {
                            TextColor3 = status and 'Text' or 'Dark Text',
                        }, true)

                        if Objects.Icon then
                            Library.ChangeObjectTheme(Objects.Icon, {
                                ImageColor3 = status and 'Text' or 'Dark Text',
                            }, true)
                        end

                        Objects.Page.Visible = status

                        if not self.TabsTweening then
                            if not nested then
                                self.TabsTweening = true

                                for _, tab in self.Tabs do
                                    if tab.Name ~= Tab.Name then
                                        tab.Set(false, true)
                                    end
                                end
                                for _, obj in Objects.Page:GetDescendants()do
                                    local Index = Utility.GetTransparency(obj)

                                    if Index then
                                        if type(Index) == 'table' then
                                            for _, prop in Index do
                                                Library.Fade(obj, prop, status)
                                            end
                                        else
                                            Library.Fade(obj, Index, status)
                                        end
                                    end
                                end

                                Objects.Page.Position = status and UDim2.fromOffset(0, 20) or UDim2.fromOffset(0, 0)

                                local Tween = Library.Tween(Objects.Page, {
                                    Position = status and UDim2.fromOffset(0, 0) or UDim2.fromOffset(0, 20),
                                })

                                Utility.Signal(Tween.Completed:Connect(function()
                                    self.TabsTweening = false
                                end))
                            end
                        end
                    end

                    Utility.Signal(Objects.Background.MouseButton1Click:Connect(function(
                    )
                        Tab.Set(true)
                    end))
                    table.insert(self.Tabs, Tab)

                    return setmetatable(Tab, Library)
                end
                function Library.Section(self, cfg)
                    cfg = cfg or {}
                    cfg = Library.Config(cfg, {
                        name = 'New Section',
                        description = nil,
                        side = 'left',
                        size = 1,
                    })

                    local Section = {
                        ZIndex = self.ZIndex,
                        Objects = {},
                        Resizing = false,
                        Dragging = false,
                    }
                    local Parent = self[cfg.side:lower()]
                    local ZIndex = Section.ZIndex
                    local Objects = Section.Objects

                    do
                        Objects.Outline = Utility.New('Frame', {
                            Name = 'Background',
                            BorderSizePixel = 0,
                            Size = UDim2.fromScale(1, 0),
                            Position = UDim2.new(0, 0, 0, 0),
                            Parent = Parent,
                            ZIndex = ZIndex,
                            ClipsDescendants = true,
                        }, {
                            BackgroundColor3 = 'Section Background',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.Outline,
                            CornerRadius = UDim.new(0, 5),
                        })

                        Objects.Constraint = Utility.New('UISizeConstraint', {
                            Parent = Objects.Outline,
                            MinSize = Vector2.new(math.huge, cfg.size or math.huge),
                            MinSize = Vector2.new(0, 40),
                        })
                        ZIndex = ZIndex + 1
                        Objects.Dragging = Utility.New('TextButton', {
                            Name = 'Dragging',
                            BorderSizePixel = 0,
                            BackgroundTransparency = 1,
                            Size = UDim2.new(1, 0, 0, 5),
                            Position = UDim2.new(0, 0, 0, 0),
                            AutoButtonColor = false,
                            Style = Enum.ButtonStyle.Custom,
                            Text = '',
                            Parent = Objects.Outline,
                            ZIndex = ZIndex,
                        })
                        ZIndex = ZIndex + 1
                        Objects.TopInline = Utility.New('Frame', {
                            Name = 'TopInline',
                            BorderSizePixel = 0,
                            Size = UDim2.new(1, 0, 0, 0),
                            AutomaticSize = Enum.AutomaticSize.Y,
                            Position = UDim2.new(0, 0, 0, 0),
                            Parent = Objects.Outline,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Inline',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.TopInline,
                            CornerRadius = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1
                        Objects.TopBackground = Utility.New('Frame', {
                            Name = 'TopBackground',
                            BorderSizePixel = 0,
                            Size = UDim2.new(1, 0, 1, -1),
                            Position = UDim2.new(0, 0, 0, 0),
                            Parent = Objects.TopInline,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Background',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.TopBackground,
                            CornerRadius = UDim.new(0, 5),
                        })
                        Utility.New('UIPadding', {
                            Name = 'UIPadding',
                            Parent = Objects.TopBackground,
                            PaddingLeft = UDim.new(0, 5),
                            PaddingRight = UDim.new(0, 5),
                            PaddingTop = UDim.new(0, 2),
                            PaddingBottom = UDim.new(0, 5),
                        })
                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            Parent = Objects.TopBackground,
                            FillDirection = Enum.FillDirection.Vertical,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            Padding = UDim.new(0, 2),
                        })

                        ZIndex = ZIndex + 1
                        Objects.Title = Utility.New('TextLabel', {
                            Name = 'Title',
                            TextStrokeTransparency = 0.8,
                            BackgroundTransparency = 1,
                            TextSize = Library.FontSize,
                            FontFace = Library.Font,
                            Size = UDim2.new(1, 0, 0, 0),
                            Position = UDim2.new(0, 0, 0, 0),
                            Text = cfg.name,
                            AutomaticSize = Enum.AutomaticSize.Y,
                            TextXAlignment = Enum.TextXAlignment.Left,
                            Parent = Objects.TopBackground,
                            ZIndex = ZIndex,
                        }, {
                            TextColor3 = 'Text',
                        })
                        ZIndex = ZIndex + 1

                        if cfg.description then
                            Objects.Description = Utility.New('TextLabel', {
                                Name = 'Description',
                                TextStrokeTransparency = 0.8,
                                BackgroundTransparency = 1,
                                TextSize = Library.FontSize - 2,
                                FontFace = Library.Font,
                                Size = UDim2.new(1, 0, 0, 0),
                                AutomaticSize = Enum.AutomaticSize.Y,
                                Text = cfg.description,
                                TextXAlignment = Enum.TextXAlignment.Left,
                                Parent = Objects.TopBackground,
                                ZIndex = ZIndex,
                                TextWrapped = true,
                            }, {
                                TextColor3 = 'Light Text',
                            })
                            ZIndex = ZIndex + 1
                        end

                        Objects.TopCoverInline = Utility.New('Frame', {
                            Name = 'TopCoverInline',
                            BorderSizePixel = 0,
                            Size = UDim2.new(1, 0, 0, 4),
                            Position = UDim2.new(0, 0, 0, Objects.TopInline.AbsoluteSize.Y - 4),
                            Parent = Objects.Outline,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Inline',
                        })
                        ZIndex = ZIndex + 1
                        Objects.TopCoverBackground = Utility.New('Frame', {
                            Name = 'TopCoverBackground',
                            BorderSizePixel = 0,
                            Size = UDim2.new(1, 0, 1, -1),
                            Position = UDim2.new(0, 0, 0, 0),
                            Parent = Objects.TopCoverInline,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Background',
                        })
                        ZIndex = ZIndex + 1
                        Objects.Padded = Utility.New('Frame', {
                            Name = 'Padded',
                            BorderSizePixel = 0,
                            BackgroundTransparency = 1,
                            Size = UDim2.new(1, -10, 1, -(Objects.TopBackground.AbsoluteSize.Y + 10)),
                            Position = UDim2.new(0, 5, 0, Objects.TopBackground.AbsoluteSize.Y + 5),
                            Parent = Objects.Outline,
                            ZIndex = ZIndex,
                        })
                        ZIndex = ZIndex + 1
                        Objects.Scrolling = Utility.New('ScrollingFrame', {
                            Name = 'Scrolling',
                            Size = UDim2.new(1, 0, 1, 0),
                            Position = UDim2.fromOffset(0, 0),
                            BackgroundTransparency = 1,
                            BorderSizePixel = 0,
                            Parent = Objects.Padded,
                            ZIndex = ZIndex,
                            AutomaticCanvasSize = Enum.AutomaticSize.Y,
                            CanvasSize = UDim2.new(0, 0, 0, 0),
                            BottomImage = Library.ScrollBar,
                            MidImage = Library.ScrollBar,
                            TopImage = Library.ScrollBar,
                            ScrollBarThickness = 2,
                        }, {
                            ScrollBarImageColor3 = 'Accent',
                        })
                        ZIndex = ZIndex + 1
                        Objects.Content = Utility.New('Frame', {
                            Name = 'Content',
                            Size = UDim2.new(1, 0, 0, 0),
                            AutomaticSize = Enum.AutomaticSize.Y,
                            Position = UDim2.fromOffset(0, 0),
                            BackgroundTransparency = 1,
                            BorderSizePixel = 0,
                            Parent = Objects.Scrolling,
                            ZIndex = ZIndex,
                        })
                        Section.Holder = Objects.Content

                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Vertical,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            Parent = Objects.Content,
                            Padding = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1

                        Utility.Signal(Objects.Scrolling:GetPropertyChangedSignal('AbsoluteCanvasSize'):Connect(function(
                        )
                            if Objects.Scrolling.AbsoluteCanvasSize.Y > Objects.Scrolling.AbsoluteSize.Y then
                                Objects.Content.Size = UDim2.new(1, -7, 0, 0)
                            else
                                Objects.Content.Size = UDim2.new(1, 0, 0, 0)
                            end
                        end))
                        Utility.Signal(Objects.Scrolling:GetPropertyChangedSignal('AbsoluteSize'):Connect(function(
                        )
                            if Objects.Scrolling.AbsoluteCanvasSize.Y > Objects.Scrolling.AbsoluteSize.Y then
                                Objects.Content.Size = UDim2.new(1, -7, 0, 0)
                            else
                                Objects.Content.Size = UDim2.new(1, 0, 0, 0)
                            end
                        end))

                        Objects.ResizeBar = Utility.New('TextButton', {
                            Name = 'ResizeBar',
                            BorderSizePixel = 0,
                            BackgroundTransparency = 1,
                            Size = UDim2.new(1, 0, 0, 3),
                            Position = UDim2.new(0, 0, 1, -3),
                            AutoButtonColor = false,
                            Style = Enum.ButtonStyle.Custom,
                            Text = '',
                            Parent = Objects.Outline,
                            ZIndex = ZIndex,
                        })
                    end

                    Section.ZIndex = ZIndex

                    Utility.Signal(Objects.ResizeBar.MouseButton1Down:Connect(function(
                    )
                        Library.ChangeObjectTheme(Objects.Title, {
                            TextColor3 = 'Accent',
                        }, true)

                        Section.Resizing = true

                        local Resize = Utility.Signal(UserInputService.InputChanged:Connect(function(
                            input
                        )
                            if not Section.Resizing or input.UserInputType ~= Enum.UserInputType.MouseMovement then
                                return
                            end

                            Objects.Constraint.MaxSize = Vector2.new(math.huge, math.clamp(input.Position.Y - Objects.Outline.AbsolutePosition.Y, 25, 9e9))
                        end))
                        local ResizeStop

                        ResizeStop = Utility.Signal(UserInputService.InputEnded:Connect(function(
                            input
                        )
                            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                Section.Resizing = false

                                Resize:Disconnect()
                                ResizeStop:Disconnect()
                                Library.ChangeObjectTheme(Objects.Title, {
                                    TextColor3 = 'Text',
                                }, true)
                            end
                        end))
                    end))

                    Section.OldParent = Objects.Outline.Parent

                    Utility.Signal(Objects.Dragging.MouseButton1Down:Connect(function(
                    )
                        Section.Dragging = true

                        local MousePosition = UserInputService:GetMouseLocation()
                        local Offset = Vector2.new(MousePosition.X - Objects.Dragging.AbsolutePosition.X, MousePosition.Y - Objects.Dragging.AbsolutePosition.Y)

                        Objects.Outline.Size = UDim2.new(0, Objects.Outline.AbsoluteSize.X, 0, Objects.Outline.AbsoluteSize.Y)
                        Objects.Outline.Position = UDim2.new(0, Objects.Outline.AbsolutePosition.X, 0, Objects.Outline.AbsolutePosition.Y)
                        Objects.Outline.Parent = Library.ScreenGui

                        local ClosestHolder, Indicator
                        local Drag = Utility.Signal(UserInputService.InputChanged:Connect(function(
                            input
                        )
                            if not Section.Dragging or input.UserInputType ~= Enum.UserInputType.MouseMovement then
                                return
                            end

                            Objects.Outline.Position = UDim2.new(0, input.Position.X - Offset.X, 0, input.Position.Y - Offset.Y)

                            local MinDistance = math.huge

                            for _, holder in self.Sections do
                                local Distance = (Vector2.new(input.Position.x, input.Position.y) - holder.AbsolutePosition).Magnitude

                                if Distance < MinDistance then
                                    MinDistance = Distance
                                    ClosestHolder = holder
                                end
                            end

                            if ClosestHolder then
                                if not Indicator then
                                    Indicator = Utility.New('Frame', {
                                        Parent = ClosestHolder,
                                        BorderSizePixel = 0,
                                        Size = UDim2.new(1, 0, 0, Objects.Outline.AbsoluteSize.Y),
                                        ZIndex = 5000,
                                    }, {
                                        BackgroundColor3 = 'Accent',
                                    })

                                    Utility.New('UICorner', {
                                        Name = 'UICorner',
                                        Parent = Indicator,
                                        CornerRadius = UDim.new(0, 5),
                                    })

                                    local Background = Utility.New('Frame', {
                                        Parent = Indicator,
                                        BorderSizePixel = 0,
                                        Size = UDim2.new(1, -2, 1, -2),
                                        Position = UDim2.new(0, 1, 0, 1),
                                        ZIndex = 5001,
                                    }, {
                                        BackgroundColor3 = 'Section Background',
                                    })

                                    Utility.New('UICorner', {
                                        Name = 'UICorner',
                                        Parent = Background,
                                        CornerRadius = UDim.new(0, 5),
                                    })
                                    Utility.New('UISizeConstraint', {
                                        Parent = Indicator,
                                        MaxSize = Objects.Constraint.MaxSize,
                                        MinSize = Objects.Constraint.MinSize,
                                    })
                                end

                                Indicator.Parent = ClosestHolder
                                Indicator.Position = UDim2.new(0, 0, 0, 0)
                                Indicator.Visible = true
                            else
                                if Indicator then
                                    Indicator:Destroy()

                                    Indicator = nil
                                end
                            end
                        end))
                        local DragStop

                        DragStop = Utility.Signal(UserInputService.InputEnded:Connect(function(
                            input
                        )
                            if input.UserInputType == Enum.UserInputType.MouseButton1 then
                                Section.Dragging = false

                                Drag:Disconnect()
                                DragStop:Disconnect()

                                Objects.Outline.Position = UDim2.new()
                                Objects.Outline.Size = UDim2.new(1, 0, 0, 0)

                                if ClosestHolder then
                                    Objects.Outline.Parent = ClosestHolder
                                else
                                    Objects.Outline.Parent = Section.OldParent
                                end
                                if Indicator then
                                    Indicator:Destroy()
                                end
                            end
                        end))
                    end))

                    return setmetatable(Section, Library)
                end
                function Library.PopupMenu(self, cfg)
                    cfg = cfg or {}
                    cfg = Library.Config(cfg, {size = 120})

                    local Popup = {
                        Tweening = false,
                        Objects = {},
                        ZIndex = self.ZIndex,
                        ParentPopup = nil,
                        ChildPopups = {},
                    }
                    local ZIndex = Popup.ZIndex
                    local Objects = Popup.Objects

                    do
                        Objects.Outline = Utility.New('Frame', {
                            Name = 'Outline',
                            Size = UDim2.new(0, cfg.size, 0, 0),
                            AutomaticSize = Enum.AutomaticSize.Y,
                            BorderSizePixel = 0,
                            Parent = Library.ScreenGui,
                            ZIndex = ZIndex,
                            ClipsDescendants = true,
                            Visible = false,
                        }, {
                            BackgroundColor3 = 'Inline',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.Outline,
                            CornerRadius = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1
                        Objects.Background = Utility.New('TextButton', {
                            Name = 'Background',
                            Size = UDim2.new(1, -2, 1, -2),
                            Position = UDim2.fromOffset(1, 1),
                            Text = '',
                            AutoButtonColor = false,
                            Style = Enum.ButtonStyle.Custom,
                            BorderSizePixel = 0,
                            Parent = Objects.Outline,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Background',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.Background,
                            CornerRadius = UDim.new(0, 5),
                        })
                        Utility.New('UIPadding', {
                            Name = 'UIPadding',
                            Parent = Objects.Background,
                            PaddingLeft = UDim.new(0, 5),
                            PaddingRight = UDim.new(0, 5),
                            PaddingTop = UDim.new(0, 5),
                            PaddingBottom = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1
                        Objects.Holder = Utility.New('Frame', {
                            Name = 'Holder',
                            Size = UDim2.new(1, 0, 0, 0),
                            AutomaticSize = Enum.AutomaticSize.Y,
                            BorderSizePixel = 0,
                            BackgroundTransparency = 1,
                            Parent = Objects.Background,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Vertical,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            Parent = Objects.Holder,
                            Padding = UDim.new(0, 5),
                        })

                        Popup.Holder = Objects.Holder
                    end

                    Popup.ZIndex = ZIndex

                    function Popup.Visible(
                        visibility,
                        position,
                        stopPropagation
                    )
                        if Popup.Tweening then
                            return
                        end

                        Popup.Tweening = true

                        if visibility then
                            Objects.Outline.Visible = true

                            if not stopPropagation then
                                local parentChain = Popup:GetParentChain()
                                local parentChainMap = {}

                                for _, parent in ipairs(parentChain)do
                                    parentChainMap[parent] = true
                                end

                                if Popup.ParentPopup and Popup.ParentElement then
                                    for _, childPopup in pairs(Popup.ParentPopup.ChildPopups)do
                                        if childPopup ~= Popup and not parentChainMap[childPopup] and childPopup.Objects.Outline.Visible and childPopup.ParentElement == Popup.ParentElement then
                                            childPopup.Visible(false, nil, true)
                                        end
                                    end
                                elseif not Popup.ParentPopup then
                                    for _, popup in pairs(Library.Popups)do
                                        if popup ~= Popup and not parentChainMap[popup] and popup.Objects.Outline.Visible and not popup.ParentPopup and popup.ParentElement == Popup.ParentElement then
                                            popup.Visible(false, nil, true)
                                        end
                                    end
                                end
                            end
                        end

                        local ParentObjects = Objects.Outline:GetDescendants()

                        table.insert(ParentObjects, Objects.Outline)

                        for _, obj in ParentObjects do
                            local Index = Utility.GetTransparency(obj)

                            if not Index then
                            end
                            if type(Index) == 'table' then
                                for _, prop in Index do
                                    Library.Fade(obj, prop, visibility)
                                end
                            else
                                Library.Fade(obj, Index, visibility)
                            end
                        end

                        local OldSize = Objects.Outline.AbsoluteSize

                        Objects.Outline.AutomaticSize = Enum.AutomaticSize.None
                        Objects.Outline.Size = visibility and UDim2.new(0, cfg.size, 0, 0) or UDim2.new(0, cfg.size, 0, OldSize.Y)

                        if position then
                            Objects.Outline.Position = UDim2.new(0, position.X, 0, position.Y)
                        end

                        local Tween = Library.Tween(Objects.Outline, {
                            Size = visibility and UDim2.new(0, cfg.size, 0, OldSize.Y) or UDim2.new(0, cfg.size, 0, 0),
                        })

                        Utility.Signal(Tween.Completed:Connect(function()
                            Popup.Tweening = false
                            Objects.Outline.Size = UDim2.new(0, cfg.size, 0, 0)
                            Objects.Outline.AutomaticSize = Enum.AutomaticSize.Y
                            Objects.Outline.Visible = visibility

                            if not visibility and not stopPropagation then
                                for _, childPopup in pairs(Popup.ChildPopups)do
                                    if childPopup.Objects.Outline.Visible then
                                        childPopup.Visible(false)
                                    end
                                end
                                for _, dropdown in pairs(Library.Dropdowns)do
                                    if dropdown.ParentPopup == Popup and dropdown.Visible then
                                        dropdown.Open()
                                    end
                                end
                            end
                        end))
                    end
                    function Popup:NestedPopup(cfg)
                        local NestedPopup = Library.PopupMenu(self, cfg)

                        NestedPopup.ParentPopup = self

                        table.insert(self.ChildPopups, NestedPopup)

                        return NestedPopup
                    end
                    function Popup:GetParentChain()
                        local chain = {}
                        local current = self

                        while current do
                            table.insert(chain, current)

                            current = current.ParentPopup
                        end

                        return chain
                    end

                    table.insert(Library.Popups, Popup)

                    return setmetatable(Popup, Library)
                end
                function Library.Popup(self, cfg)
                    cfg = cfg or {}
                    cfg = Library.Config(cfg, {size = 120})

                    local Cog = {
                        Objects = {},
                        ZIndex = self.ZIndex,
                        Visible = false,
                    }
                    local ZIndex = Cog.ZIndex
                    local Objects = Cog.Objects

                    do
                        Objects.Icon = Utility.New('ImageButton', {
                            Name = 'Icon',
                            Size = UDim2.new(0, self.SideHolder.AbsoluteSize.Y, 0, self.SideHolder.AbsoluteSize.Y),
                            BackgroundTransparency = 1,
                            AutoButtonColor = false,
                            Style = Enum.ButtonStyle.Custom,
                            Image = 'rbxassetid://81593156472608',
                            Parent = self.SideHolder,
                            ZIndex = ZIndex,
                        }, {
                            ImageColor3 = 'Dark Text',
                        })
                    end

                    local Popup = self:PopupMenu(cfg)

                    Popup.BoundObjects = {
                        Objects.Icon,
                        Popup.Objects.Outline,
                        (Library.ColorpickerWindow and type(Library.ColorpickerWindow) == 'table' and Library.ColorpickerWindow.Objects and Library.ColorpickerWindow.Objects.Outline) or nil,
                    }
                    Popup.ParentElement = self

                    function Cog.InsideBounds(input)
                        for _, obj in Popup.BoundObjects do
                            if obj and Utility.MouseOver(obj, input) then
                                return true
                            end
                        end
                        for _, childPopup in pairs(Popup.ChildPopups)do
                            if childPopup.Objects.Outline.Visible then
                                if Utility.MouseOver(childPopup.Objects.Outline, input) then
                                    return true
                                end

                                for _, nestedObj in pairs(childPopup.BoundObjects or {})do
                                    if nestedObj and Utility.MouseOver(nestedObj, input) then
                                        return true
                                    end
                                end
                            end
                        end

                        return false
                    end

                    if not Library.GlobalPopupClickHandler then
                        Library.GlobalPopupClickHandler = true

                        Utility.Signal(UserInputService.InputBegan:Connect(function(
                            input
                        )
                            if input.UserInputType ~= Enum.UserInputType.MouseButton1 then
                                return
                            end

                            local function isLibraryUI(obj)
                                while obj do
                                    if obj == Library.ScreenGui then
                                        return true
                                    end

                                    obj = obj.Parent
                                end

                                return false
                            end

                            local ignoreCloseCheck = false
                            local guiObjectsAtPosition = game:GetService('CoreGui'):GetGuiObjectsAtPosition(input.Position.X, input.Position.Y)

                            for _, obj in ipairs(guiObjectsAtPosition)do
                                if isLibraryUI(obj) then
                                    if obj:IsA('ImageButton') or obj:IsA('TextButton') then
                                        ignoreCloseCheck = true

                                        break
                                    end
                                end
                            end

                            if ignoreCloseCheck then
                                return
                            end

                            for _, popup in pairs(Library.Popups)do
                                if popup.Objects.Outline.Visible then
                                    local function isInsidePopupHierarchy(
                                        p,
                                        input
                                    )
                                        if Utility.MouseOver(p.Objects.Outline, input) then
                                            return true
                                        end

                                        for _, child in pairs(p.ChildPopups)do
                                            if child.Objects.Outline.Visible and isInsidePopupHierarchy(child, input) then
                                                return true
                                            end
                                        end

                                        return false
                                    end

                                    if not isInsidePopupHierarchy(popup, input) then
                                        local isChildOfActiveParent = false

                                        local function isInParentOfPopup(
                                            p,
                                            input
                                        )
                                            if p.ParentPopup and p.ParentPopup.Objects.Outline.Visible then
                                                if Utility.MouseOver(p.ParentPopup.Objects.Outline, input) then
                                                    return true
                                                end

                                                return isInParentOfPopup(p.ParentPopup, input)
                                            end

                                            return false
                                        end

                                        if not isInParentOfPopup(popup, input) and popup.ParentElement then
                                            popup.Visible(false, nil, true)

                                            if popup.ParentElement.Objects and popup.ParentElement.Objects.Icon then
                                                Library.ChangeObjectTheme(popup.ParentElement.Objects.Icon, {
                                                    ImageColor3 = 'Dark Text',
                                                }, true)
                                            end
                                        end
                                    end
                                end
                            end
                            for _, dropdown in pairs(Library.Dropdowns)do
                                if dropdown.Visible then
                                    if not Utility.MouseOver(dropdown.Popup.Outline, input) and not Utility.MouseOver(dropdown.Objects.Outline, input) then
                                        dropdown.Open()
                                    end
                                end
                            end
                        end))
                    end

                    Utility.Signal(Objects.Icon:GetPropertyChangedSignal('AbsolutePosition'):Connect(function(
                    )
                        if Popup.Objects.Outline.Visible then
                            local AbsolutePosition = Objects.Icon.AbsolutePosition
                            local AbsoluteSize = Objects.Icon.AbsoluteSize

                            Popup.Objects.Outline.Position = UDim2.new(0, AbsolutePosition.x, 0, AbsolutePosition.y + AbsoluteSize.y + 5)
                        end
                    end))
                    Utility.Signal(Objects.Icon.MouseButton1Click:Connect(function(
                    )
                        Cog.Visible = not Cog.Visible

                        local AbsolutePosition = Objects.Icon.AbsolutePosition
                        local AbsoluteSize = Objects.Icon.AbsoluteSize
                        local Position = Vector2.new(AbsolutePosition.x, AbsolutePosition.y + AbsoluteSize.y + 5)

                        Library.ChangeObjectTheme(Objects.Icon, {
                            ImageColor3 = Cog.Visible and 'Text' or 'Dark Text',
                        }, true)

                        local stopPropagation = true

                        Popup.Visible(Cog.Visible, Position, stopPropagation)
                    end))

                    return Popup
                end
                function Library.Toggle(self, cfg)
                    cfg = cfg or {}
                    cfg = Library.Config(cfg, {
                        name = 'New Toggle',
                        description = nil,
                        value = false,
                        callback = function() end,
                        flag = nil,
                        children = nil,
                    })

                    if not cfg.flag then
                        cfg.flag = cfg.name
                    end

                    local Toggle = {
                        Objects = {},
                        Tweening = false,
                        ZIndex = self.ZIndex,
                        Value = false,
                    }
                    local ZIndex = Toggle.ZIndex
                    local Objects = Toggle.Objects

                    do
                        Objects.Holder = Utility.New('Frame', {
                            Name = 'Holder',
                            Size = UDim2.new(1, 0, 0, 0),
                            Position = UDim2.fromOffset(0, 0),
                            BackgroundTransparency = 1,
                            AutomaticSize = Enum.AutomaticSize.Y,
                            BorderSizePixel = 0,
                            Parent = self.Holder,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Vertical,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            Parent = Objects.Holder,
                            Padding = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1
                        Objects.Line = Utility.New('TextButton', {
                            Name = 'Line',
                            Size = UDim2.new(1, 0, 0, 0),
                            Position = UDim2.fromOffset(0, 0),
                            BackgroundTransparency = 1,
                            AutoButtonColor = false,
                            AutomaticSize = Enum.AutomaticSize.Y,
                            Style = Enum.ButtonStyle.Custom,
                            Text = '',
                            Parent = Objects.Holder,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Vertical,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            Parent = Objects.Line,
                            Padding = UDim.new(0, 2),
                        })

                        ZIndex = ZIndex + 1
                        Objects.Text = Utility.New('TextLabel', {
                            Name = 'Text',
                            TextStrokeTransparency = 0.8,
                            BackgroundTransparency = 1,
                            TextSize = Library.FontSize,
                            FontFace = Library.Font,
                            Size = UDim2.new(1, 0, 0, 0),
                            AutomaticSize = Enum.AutomaticSize.Y,
                            Text = cfg.name,
                            TextXAlignment = Enum.TextXAlignment.Left,
                            Parent = Objects.Line,
                            ZIndex = ZIndex,
                        }, {
                            TextColor3 = 'Dark Text',
                        })

                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Horizontal,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            HorizontalAlignment = Enum.HorizontalAlignment.Right,
                            Parent = Objects.Text,
                            Padding = UDim.new(0, 2),
                        })

                        ZIndex = ZIndex + 1
                        Objects.SideHolder = Utility.New('Frame', {
                            Name = 'SideHolder',
                            Size = UDim2.new(0, 0, 1, 0),
                            AutomaticSize = Enum.AutomaticSize.X,
                            Position = UDim2.fromOffset(0, 0),
                            BackgroundTransparency = 1,
                            BorderSizePixel = 0,
                            Parent = Objects.Text,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Horizontal,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            HorizontalAlignment = Enum.HorizontalAlignment.Right,
                            Parent = Objects.SideHolder,
                            Padding = UDim.new(0, 2),
                        })

                        Toggle.SideHolder = Objects.SideHolder
                        ZIndex = ZIndex + 1

                        if cfg.description then
                            Objects.Description = Utility.New('TextLabel', {
                                Name = 'Description',
                                TextStrokeTransparency = 0.8,
                                BackgroundTransparency = 1,
                                TextSize = Library.FontSize - 2,
                                FontFace = Library.Font,
                                Size = UDim2.new(1, 0, 0, 0),
                                AutomaticSize = Enum.AutomaticSize.Y,
                                Text = cfg.description,
                                TextXAlignment = Enum.TextXAlignment.Left,
                                Parent = Objects.Line,
                                ZIndex = ZIndex,
                                TextWrapped = true,
                            }, {
                                TextColor3 = 'Light Text',
                            })
                            ZIndex = ZIndex + 1
                        end

                        Objects.Outline = Utility.New('Frame', {
                            Name = 'Outline',
                            Size = UDim2.new(0, 0, 0, 0),
                            Position = UDim2.fromOffset(0, 0),
                            BorderSizePixel = 0,
                            BackgroundTransparency = 0,
                            Parent = Objects.Text,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Inline',
                        })
                        Objects.Outline.Size = UDim2.new(0, Objects.Text.AbsoluteSize.Y, 0, Objects.Text.AbsoluteSize.Y)

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            CornerRadius = UDim.new(0, 5),
                            Parent = Objects.Outline,
                        })

                        ZIndex = ZIndex + 1
                        Objects.Background = Utility.New('Frame', {
                            Name = 'Background',
                            Size = UDim2.new(1, -2, 1, -2),
                            Position = UDim2.fromOffset(1, 1),
                            BorderSizePixel = 0,
                            Parent = Objects.Outline,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Background',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            CornerRadius = UDim.new(0, 5),
                            Parent = Objects.Background,
                        })

                        ZIndex = ZIndex + 1
                        Objects.Icon = Utility.New('ImageLabel', {
                            Name = 'Icon',
                            Size = UDim2.new(1.1, 0, 1.1, 0),
                            Position = UDim2.new(0.5, 0, 0.5, 0),
                            AnchorPoint = Vector2.new(0.5, 0.5),
                            BackgroundTransparency = 1,
                            Image = 'rbxassetid://10709790644',
                            ImageColor3 = Color3.fromRGB(255, 255, 255),
                            Parent = Objects.Background,
                            ZIndex = ZIndex,
                            Visible = false,
                        })
                        ZIndex = ZIndex + 1

                        if cfg.children ~= nil then
                            Objects.ChildrenHolder = Utility.New('Frame', {
                                Name = 'ChildrenHolder',
                                Size = UDim2.new(1, 0, 0, 0),
                                Position = UDim2.fromOffset(0, 0),
                                BackgroundTransparency = 1,
                                AutomaticSize = Enum.AutomaticSize.Y,
                                BorderSizePixel = 0,
                                Parent = Objects.Holder,
                                ZIndex = ZIndex,
                                Visible = cfg.children,
                                ClipsDescendants = true,
                            })

                            Utility.New('UIListLayout', {
                                Name = 'UIListLayout',
                                FillDirection = Enum.FillDirection.Vertical,
                                SortOrder = Enum.SortOrder.LayoutOrder,
                                Parent = Objects.ChildrenHolder,
                                Padding = UDim.new(0, 5),
                            })

                            Toggle.Holder = Objects.ChildrenHolder
                            ZIndex = ZIndex + 1
                        end
                    end

                    Toggle.ZIndex = ZIndex

                    function Toggle.Children(visibility)
                        if cfg.children == nil and not Toggle.Holder then
                            return
                        end
                        if Toggle.Tweening then
                            return
                        end
                        if visibility == Objects.ChildrenHolder.Visible then
                            return
                        end

                        Toggle.Tweening = true

                        if visibility then
                            Objects.ChildrenHolder.Visible = true
                        end

                        for _, obj in Objects.ChildrenHolder:GetDescendants()do
                            local Index = Utility.GetTransparency(obj)

                            if not Index then
                            end
                            if type(Index) == 'table' then
                                for _, prop in Index do
                                    Library.Fade(obj, prop, visibility)
                                end
                            else
                                Library.Fade(obj, Index, visibility)
                            end
                        end

                        local OldSize = Objects.ChildrenHolder.AbsoluteSize

                        Objects.ChildrenHolder.AutomaticSize = Enum.AutomaticSize.None
                        Objects.ChildrenHolder.Size = visibility and UDim2.new(1, 0, 0, 0) or UDim2.new(1, 0, 0, OldSize.Y)

                        local Tween = Library.Tween(Objects.ChildrenHolder, {
                            Size = visibility and UDim2.new(1, 0, 0, OldSize.Y) or UDim2.new(1, 0, 0, 0),
                        })

                        Utility.Signal(Tween.Completed:Connect(function()
                            Toggle.Tweening = false
                            Objects.ChildrenHolder.Size = UDim2.new(1, 0, 0, 0)
                            Objects.ChildrenHolder.AutomaticSize = Enum.AutomaticSize.Y
                            Objects.ChildrenHolder.Visible = visibility
                        end))
                    end
                    function Toggle.Set(value)
                        if Toggle.Tweening then
                            return
                        end

                        Toggle.Value = value

                        Toggle.Children(value)
                        Library.ChangeObjectTheme(Objects.Background, {
                            BackgroundColor3 = value and 'Accent' or 'Background',
                        }, true)
                        Library.ChangeObjectTheme(Objects.Text, {
                            TextColor3 = value and 'Text' or 'Dark Text',
                        }, true)

                        if Objects.Icon then
                            Objects.Icon.Visible = value
                        end

                        cfg.callback(value)

                        Library.Flags[cfg.flag] = value

                        if Library.OnToggleChange then
                            Library.OnToggleChange(cfg.name, value)
                        end
                    end
                    function Toggle.Enable()
                        Toggle.Set(not Toggle.Value)
                    end

                    Utility.Signal(Objects.Line.MouseButton1Click:Connect(Toggle.Enable))
                    Toggle.Set(cfg.value)

                    Library.ConfigFlags[cfg.flag] = Toggle.Set

                    return setmetatable(Toggle, Library)
                end
                function Library.Slider(self, cfg)
                    cfg = cfg or {}
                    cfg = Library.Config(cfg, {
                        name = 'New Slider',
                        description = nil,
                        value = 50,
                        min = 0,
                        max = 100,
                        float = 1,
                        suffix = '%s',
                        callback = function() end,
                        flag = nil,
                        children = nil,
                    })

                    if not cfg.flag then
                        cfg.flag = cfg.name
                    end

                    local Slider = {
                        Tweening = false,
                        Objects = {},
                        ZIndex = self.ZIndex,
                        Value = cfg.value,
                        Sliding = false,
                    }
                    local ZIndex = Slider.ZIndex
                    local Objects = Slider.Objects

                    do
                        Objects.Holder = Utility.New('Frame', {
                            Name = 'Holder',
                            Size = UDim2.new(1, 0, 0, 0),
                            Position = UDim2.fromOffset(0, 0),
                            BackgroundTransparency = 1,
                            AutomaticSize = Enum.AutomaticSize.Y,
                            BorderSizePixel = 0,
                            Parent = self.Holder,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UIPadding', {
                            Parent = Objects.Holder,
                            PaddingBottom = UDim.new(0, 2),
                        })
                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Vertical,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            Parent = Objects.Holder,
                            Padding = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1
                        Objects.Line = Utility.New('TextButton', {
                            Name = 'Line',
                            Size = UDim2.new(1, 0, 0, 0),
                            Position = UDim2.fromOffset(0, 0),
                            BackgroundTransparency = 1,
                            AutoButtonColor = false,
                            AutomaticSize = Enum.AutomaticSize.Y,
                            Style = Enum.ButtonStyle.Custom,
                            Text = '',
                            Parent = Objects.Holder,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Vertical,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            Parent = Objects.Line,
                            Padding = UDim.new(0, 2),
                        })

                        ZIndex = ZIndex + 1
                        Objects.Text = Utility.New('TextLabel', {
                            Name = 'Text',
                            TextStrokeTransparency = 0.8,
                            BackgroundTransparency = 1,
                            TextSize = Library.FontSize,
                            FontFace = Library.Font,
                            Size = UDim2.new(1, 0, 0, 0),
                            AutomaticSize = Enum.AutomaticSize.Y,
                            Text = cfg.name,
                            TextXAlignment = Enum.TextXAlignment.Left,
                            Parent = Objects.Line,
                            ZIndex = ZIndex,
                        }, {
                            TextColor3 = 'Dark Text',
                        })

                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Horizontal,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            HorizontalAlignment = Enum.HorizontalAlignment.Right,
                            Parent = Objects.Text,
                            Padding = UDim.new(0, 2),
                        })

                        ZIndex = ZIndex + 1
                        Objects.SideHolder = Utility.New('Frame', {
                            Name = 'SideHolder',
                            Size = UDim2.new(0, 0, 1, 0),
                            AutomaticSize = Enum.AutomaticSize.X,
                            Position = UDim2.fromOffset(0, 0),
                            BackgroundTransparency = 1,
                            BorderSizePixel = 0,
                            Parent = Objects.Text,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Horizontal,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            HorizontalAlignment = Enum.HorizontalAlignment.Right,
                            Parent = Objects.SideHolder,
                            Padding = UDim.new(0, 2),
                        })

                        Slider.SideHolder = Objects.SideHolder
                        ZIndex = ZIndex + 1
                        Objects.Value = Utility.New('TextLabel', {
                            Name = 'Value',
                            TextStrokeTransparency = 0.8,
                            BackgroundTransparency = 1,
                            TextSize = Library.FontSize,
                            FontFace = Library.Font,
                            Size = UDim2.new(0, 0, 0, 0),
                            AutomaticSize = Enum.AutomaticSize.XY,
                            Text = '',
                            TextXAlignment = Enum.TextXAlignment.Left,
                            Parent = Objects.Text,
                            ZIndex = ZIndex,
                        }, {
                            TextColor3 = 'Dark Text',
                        })
                        ZIndex = ZIndex + 1

                        if cfg.description then
                            Objects.Description = Utility.New('TextLabel', {
                                Name = 'Description',
                                TextStrokeTransparency = 0.8,
                                BackgroundTransparency = 1,
                                TextSize = Library.FontSize - 2,
                                FontFace = Library.Font,
                                Size = UDim2.new(1, 0, 0, 0),
                                AutomaticSize = Enum.AutomaticSize.Y,
                                Text = cfg.description,
                                TextXAlignment = Enum.TextXAlignment.Left,
                                Parent = Objects.Line,
                                ZIndex = ZIndex,
                                TextWrapped = true,
                            }, {
                                TextColor3 = 'Light Text',
                            })
                            ZIndex = ZIndex + 1
                        end

                        Objects.Outline = Utility.New('TextButton', {
                            Name = 'Line',
                            Size = UDim2.new(1, 0, 0, 8),
                            Position = UDim2.fromOffset(0, 0),
                            BorderSizePixel = 0,
                            AutoButtonColor = false,
                            Style = Enum.ButtonStyle.Custom,
                            Text = '',
                            Parent = Objects.Holder,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Inline',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            CornerRadius = UDim.new(0, 5),
                            Parent = Objects.Outline,
                        })

                        ZIndex = ZIndex + 1
                        Objects.Background = Utility.New('Frame', {
                            Name = 'Background',
                            Size = UDim2.new(1, -2, 1, -2),
                            Position = UDim2.fromOffset(1, 1),
                            BorderSizePixel = 0,
                            Parent = Objects.Outline,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Background',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            CornerRadius = UDim.new(0, 5),
                            Parent = Objects.Background,
                        })

                        ZIndex = ZIndex + 1
                        Objects.Accent = Utility.New('Frame', {
                            Name = 'Accent',
                            Size = UDim2.new(0, 0, 1, 0),
                            BorderSizePixel = 0,
                            Parent = Objects.Background,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Accent',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            CornerRadius = UDim.new(0, 5),
                            Parent = Objects.Accent,
                        })

                        Objects.CircleOutline = Utility.New('Frame', {
                            Name = 'CircleOutline',
                            Size = UDim2.new(0, 12, 0, 12),
                            Position = UDim2.new(1, -5, 0.5, -6),
                            BorderSizePixel = 0,
                            Parent = Objects.Background,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Inline',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            CornerRadius = UDim.new(1, 0),
                            Parent = Objects.CircleOutline,
                        })

                        ZIndex = ZIndex + 1
                        Objects.Circle = Utility.New('Frame', {
                            Name = 'Circle',
                            Size = UDim2.new(1, -2, 1, -2),
                            Position = UDim2.fromOffset(1, 1),
                            BorderSizePixel = 0,
                            Parent = Objects.CircleOutline,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Accent',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            CornerRadius = UDim.new(1, 0),
                            Parent = Objects.Circle,
                        })
                    end

                    Slider.ZIndex = ZIndex

                    function Slider.Set(value)
                        Slider.Value = math.clamp(Utility.Round(value, cfg.float), cfg.min, cfg.max)
                        Objects.Value.Text = string.format(cfg.suffix, tostring(Slider.Value))

                        Library.Tween(Objects.Accent, {
                            Size = UDim2.new((Slider.Value - cfg.min) / (cfg.max - cfg.min), 0, 1, 0),
                        })
                        Library.Tween(Objects.CircleOutline, {
                            Position = UDim2.new((Slider.Value - cfg.min) / (cfg.max - cfg.min), 0, 0.5, 0),
                            AnchorPoint = Vector2.new((Slider.Value - cfg.min) / (cfg.max - cfg.min), 0.5),
                        })
                        Library.ChangeObjectTheme(Objects.Text, {
                            TextColor3 = value > cfg.min and 'Text' or 'Dark Text',
                        }, true)
                        Library.ChangeObjectTheme(Objects.Value, {
                            TextColor3 = value > cfg.min and 'Text' or 'Dark Text',
                        }, true)
                        cfg.callback(Slider.Value)

                        Library.Flags[cfg.flag] = Slider.Value
                    end

                    Utility.Signal(Objects.Outline.MouseButton1Down:Connect(function(
                        input
                    )
                        local MouseLocation = UserInputService:GetMouseLocation()

                        Slider.Sliding = true

                        Slider.Set(((cfg.max - cfg.min) * ((MouseLocation.x - Objects.Outline.AbsolutePosition.x) / Objects.Outline.AbsoluteSize.x)) + cfg.min)
                    end))
                    Utility.Signal(UserInputService.InputEnded:Connect(function(
                        input
                    )
                        if input.UserInputType == Enum.UserInputType.MouseButton1 and Slider.Sliding then
                            Slider.Sliding = false
                        end
                    end))
                    Utility.Signal(UserInputService.InputChanged:Connect(function(
                        input
                    )
                        if input.UserInputType == Enum.UserInputType.MouseMovement and Slider.Sliding then
                            Slider.Set(((cfg.max - cfg.min) * ((input.Position.x - Objects.Outline.AbsolutePosition.x) / Objects.Outline.AbsoluteSize.x)) + cfg.min)
                        end
                    end))
                    Slider.Set(cfg.value)

                    Library.ConfigFlags[cfg.flag] = Slider.Set

                    return setmetatable(Slider, Library)
                end
                function Library.Button(self, cfg)
                    cfg = cfg or {}
                    cfg = Library.Config(cfg, {
                        name = 'New Button',
                        confirm = false,
                        autosize = false,
                        callback = function() end,
                    })

                    local Button = {
                        Clicked = false,
                        ZIndex = self.ZIndex,
                        Time = 0,
                        Objects = {},
                    }
                    local ZIndex = Button.ZIndex
                    local Objects = Button.Objects

                    do
                        Objects.Outline = Utility.New('TextButton', {
                            Name = 'Outline',
                            Size = cfg.autosize and UDim2.new(0, 0, 0, 0) or UDim2.new(1, 0, 0, 0),
                            AutomaticSize = cfg.autosize and Enum.AutomaticSize.XY or Enum.AutomaticSize.Y,
                            BorderSizePixel = 0,
                            Parent = self.Holder,
                            TextSize = 0,
                            Text = '',
                            AutoButtonColor = false,
                            Style = Enum.ButtonStyle.Custom,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Inline',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            CornerRadius = UDim.new(0, 5),
                            Parent = Objects.Outline,
                        })

                        ZIndex = ZIndex + 1
                        Objects.Background = Utility.New('Frame', {
                            Name = 'Background',
                            Size = UDim2.new(1, -2, 1, -2),
                            Position = UDim2.fromOffset(1, 1),
                            BorderSizePixel = 0,
                            Parent = Objects.Outline,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Background',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            CornerRadius = UDim.new(0, 5),
                            Parent = Objects.Background,
                        })
                        Utility.New('UIPadding', {
                            Name = 'UIPadding',
                            PaddingTop = UDim.new(0, 2),
                            PaddingBottom = UDim.new(0, 5),
                            PaddingLeft = UDim.new(0, 5),
                            PaddingRight = UDim.new(0, 5),
                            Parent = Objects.Background,
                        })

                        ZIndex = ZIndex + 1
                        Objects.Text = Utility.New('TextLabel', {
                            Name = 'Text',
                            Size = cfg.autosize and UDim2.new(0, 0, 0, 0) or UDim2.new(1, 0, 0, 0),
                            Text = cfg.name,
                            TextSize = Library.FontSize,
                            FontFace = Library.Font,
                            TextXAlignment = Enum.TextXAlignment.Center,
                            BackgroundTransparency = 1,
                            TextStrokeTransparency = 0.8,
                            Parent = Objects.Background,
                            ZIndex = ZIndex,
                        }, {
                            TextColor3 = 'Dark Text',
                        })
                        Objects.Text.Size = UDim2.new(cfg.autosize and 0 or 1, cfg.autosize and Objects.Text.TextBounds.X or 0, 0, Objects.Text.TextBounds.Y - 2)
                    end

                    Button.ZIndex = ZIndex

                    function Button.StartConfirmation()
                        Button.Clicked = true
                        Button.Time = 5
                        Objects.Text.Text = string.format('Confirm %s? (%s)', cfg.name, Button.Time)
                        Button.Coroutine = coroutine.create(function()
                            for i = 1, 5 do
                                task.wait(1)

                                Button.Time = Button.Time - 1

                                if Button.Time > 0 then
                                    Objects.Text.Text = string.format('Confirm %s? (%s)', cfg.name, Button.Time)
                                else
                                    Objects.Text.Text = cfg.name

                                    if Button.Clicked then
                                        Library.ChangeObjectTheme(Objects.Text, {
                                            TextColor3 = 'Dark Text',
                                        }, true)

                                        Button.Clicked = false
                                    end

                                    break
                                end
                            end
                        end)

                        coroutine.resume(Button.Coroutine)
                    end
                    function Button.Click()
                        if cfg.confirm then
                            if Button.Clicked then
                                Library.ChangeObjectTheme(Objects.Text, {
                                    TextColor3 = 'Dark Text',
                                }, true)
                                coroutine.close(Button.Coroutine)

                                Objects.Text.Text = cfg.name
                                Button.Clicked = false

                                cfg.callback()
                            else
                                Library.ChangeObjectTheme(Objects.Text, {
                                    TextColor3 = 'Accent',
                                }, true)
                                Button.StartConfirmation()
                            end
                        else
                            cfg.callback()
                            Library.ChangeObjectTheme(Objects.Text, {
                                TextColor3 = 'Accent',
                            }, true)
                            task.wait(Library.TweenSpeed)
                            Library.ChangeObjectTheme(Objects.Text, {
                                TextColor3 = 'Dark Text',
                            }, true)
                        end
                    end

                    Utility.Signal(Objects.Outline.MouseButton1Click:Connect(Button.Click))

                    return setmetatable(Button, Library)
                end
                function Library.List(self, cfg)
                    cfg = cfg or {}
                    cfg = Library.Config(cfg, {
                        name = 'New List',
                        description = nil,
                        value = 'value1',
                        values = {
                            'value1',
                            'value2',
                            'value3',
                            'value4',
                            'value5',
                            'value6',
                        },
                        multi = false,
                        size = 100,
                        callback = function() end,
                        flag = nil,
                    })

                    if not cfg.flag then
                        cfg.flag = cfg.name
                    end

                    local List = {
                        ZIndex = self.ZIndex,
                        Objects = {},
                        Popup = {},
                        Items = {},
                        Value = nil,
                    }
                    local ZIndex = List.ZIndex
                    local Objects = List.Objects

                    do
                        Objects.Holder = Utility.New('Frame', {
                            Name = 'Holder',
                            Size = UDim2.new(1, 0, 0, 0),
                            Position = UDim2.fromOffset(0, 0),
                            BackgroundTransparency = 1,
                            AutomaticSize = Enum.AutomaticSize.Y,
                            BorderSizePixel = 0,
                            Parent = self.Holder,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Vertical,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            Parent = Objects.Holder,
                            Padding = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1
                        Objects.Line = Utility.New('TextButton', {
                            Name = 'Line',
                            Size = UDim2.new(1, 0, 0, 0),
                            Position = UDim2.fromOffset(0, 0),
                            BackgroundTransparency = 1,
                            AutoButtonColor = false,
                            AutomaticSize = Enum.AutomaticSize.Y,
                            Style = Enum.ButtonStyle.Custom,
                            Text = '',
                            Parent = Objects.Holder,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Vertical,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            Parent = Objects.Line,
                            Padding = UDim.new(0, 2),
                        })

                        ZIndex = ZIndex + 1
                        Objects.Text = Utility.New('TextLabel', {
                            Name = 'Text',
                            TextStrokeTransparency = 0.8,
                            BackgroundTransparency = 1,
                            TextSize = Library.FontSize,
                            FontFace = Library.Font,
                            Size = UDim2.new(1, 0, 0, 0),
                            AutomaticSize = Enum.AutomaticSize.Y,
                            Text = cfg.name,
                            TextXAlignment = Enum.TextXAlignment.Left,
                            Parent = Objects.Line,
                            ZIndex = ZIndex,
                        }, {
                            TextColor3 = 'Dark Text',
                        })

                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Horizontal,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            HorizontalAlignment = Enum.HorizontalAlignment.Right,
                            Parent = Objects.Text,
                            Padding = UDim.new(0, 2),
                        })

                        ZIndex = ZIndex + 1
                        Objects.SideHolder = Utility.New('Frame', {
                            Name = 'SideHolder',
                            Size = UDim2.new(0, 0, 1, 0),
                            AutomaticSize = Enum.AutomaticSize.X,
                            Position = UDim2.fromOffset(0, 0),
                            BackgroundTransparency = 1,
                            BorderSizePixel = 0,
                            Parent = Objects.Text,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Horizontal,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            HorizontalAlignment = Enum.HorizontalAlignment.Right,
                            Parent = Objects.SideHolder,
                            Padding = UDim.new(0, 2),
                        })

                        List.SideHolder = Objects.SideHolder
                        ZIndex = ZIndex + 1

                        if cfg.description then
                            Objects.Description = Utility.New('TextLabel', {
                                Name = 'Description',
                                TextStrokeTransparency = 0.8,
                                BackgroundTransparency = 1,
                                TextSize = Library.FontSize - 2,
                                FontFace = Library.Font,
                                Size = UDim2.new(1, 0, 0, 0),
                                AutomaticSize = Enum.AutomaticSize.Y,
                                Text = cfg.description,
                                TextXAlignment = Enum.TextXAlignment.Left,
                                Parent = Objects.Line,
                                ZIndex = ZIndex,
                                TextWrapped = true,
                            }, {
                                TextColor3 = 'Light Text',
                            })
                            ZIndex = ZIndex + 1
                        end

                        Objects.Outline = Utility.New('TextButton', {
                            Name = 'Outline',
                            Size = UDim2.new(1, 0, 0, cfg.size),
                            Position = UDim2.fromOffset(0, 0),
                            BorderSizePixel = 0,
                            AutoButtonColor = false,
                            Style = Enum.ButtonStyle.Custom,
                            Text = '',
                            Parent = Objects.Holder,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Inline',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            CornerRadius = UDim.new(0, 5),
                            Parent = Objects.Outline,
                        })

                        ZIndex = ZIndex + 1
                        Objects.Background = Utility.New('Frame', {
                            Name = 'Background',
                            Size = UDim2.new(1, -2, 1, -2),
                            Position = UDim2.fromOffset(1, 1),
                            BorderSizePixel = 0,
                            Parent = Objects.Outline,
                            ZIndex = ZIndex,
                            ClipsDescendants = true,
                        }, {
                            BackgroundColor3 = 'Background',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            CornerRadius = UDim.new(0, 5),
                            Parent = Objects.Background,
                        })
                        Utility.New('UIPadding', {
                            Name = 'UIPadding',
                            PaddingLeft = UDim.new(0, 5),
                            PaddingRight = UDim.new(0, 5),
                            PaddingTop = UDim.new(0, 5),
                            PaddingBottom = UDim.new(0, 5),
                            Parent = Objects.Background,
                        })

                        ZIndex = ZIndex + 1
                        Objects.Scrolling = Utility.New('ScrollingFrame', {
                            Name = 'Scrolling',
                            Size = UDim2.new(1, 0, 1, 0),
                            Position = UDim2.fromOffset(0, 0),
                            BackgroundTransparency = 1,
                            BorderSizePixel = 0,
                            Parent = Objects.Background,
                            ZIndex = ZIndex,
                            AutomaticCanvasSize = Enum.AutomaticSize.Y,
                            CanvasSize = UDim2.new(0, 0, 0, 0),
                            BottomImage = Library.ScrollBar,
                            MidImage = Library.ScrollBar,
                            TopImage = Library.ScrollBar,
                            ScrollBarThickness = 2,
                        }, {
                            ScrollBarImageColor3 = 'Accent',
                        })
                        ZIndex = ZIndex + 1
                        Objects.Content = Utility.New('Frame', {
                            Name = 'Content',
                            Size = UDim2.new(1, 0, 0, 0),
                            AutomaticSize = Enum.AutomaticSize.Y,
                            Position = UDim2.fromOffset(0, 0),
                            BackgroundTransparency = 1,
                            BorderSizePixel = 0,
                            Parent = Objects.Scrolling,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Vertical,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            HorizontalAlignment = Enum.HorizontalAlignment.Center,
                            Parent = Objects.Content,
                            Padding = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1
                    end

                    List.ZIndex = ZIndex

                    function List.Set(value)
                        if cfg.multi then
                            if type(value) == 'table' then
                                for _, item in List.Items do
                                    item.Select(false)
                                end
                                for _, item in value do
                                    for _, item2 in List.Items do
                                        if item2.Name == item then
                                            item2.Select(true)
                                        end
                                    end
                                end

                                List.Value = value

                                cfg.callback(List.Value)

                                Library.Flags[cfg.flag] = List.Value
                            else
                                local Index = table.find(List.Value, value)

                                if Index then
                                    table.remove(List.Value, Index)

                                    for _, item in List.Items do
                                        if item.Name == value then
                                            item.Select(false)
                                        end
                                    end

                                    cfg.callback(List.Value)

                                    Library.Flags[cfg.flag] = List.Value
                                else
                                    table.insert(List.Value, value)

                                    for _, item in List.Items do
                                        if item.Name == value then
                                            item.Select(true)
                                        end
                                    end

                                    cfg.callback(List.Value)

                                    Library.Flags[cfg.flag] = List.Value
                                end
                            end
                        else
                            for _, item in List.Items do
                                item.Select(item.Name == value)
                            end

                            List.Value = value

                            cfg.callback(List.Value)

                            Library.Flags[cfg.flag] = List.Value
                        end
                    end
                    function List.Add(name)
                        local Item = {
                            Objects = {},
                            Name = name,
                            Selected = false,
                        }
                        local Objs = Item.Objects

                        do
                            Objs.Text = Utility.New('TextButton', {
                                Name = 'Text',
                                TextStrokeTransparency = 0.8,
                                BackgroundTransparency = 1,
                                TextSize = Library.FontSize,
                                FontFace = Library.Font,
                                Size = UDim2.new(1, 0, 0, 0),
                                AutomaticSize = Enum.AutomaticSize.Y,
                                Text = name,
                                AutoButtonColor = false,
                                Style = Enum.ButtonStyle.Custom,
                                TextXAlignment = Enum.TextXAlignment.Left,
                                Parent = Objects.Content,
                                ZIndex = ZIndex,
                            }, {
                                TextColor3 = 'Dark Text',
                            })
                        end

                        function Item.Select(value)
                            Library.ChangeObjectTheme(Objs.Text, {
                                TextColor3 = value and 'Text' or 'Dark Text',
                            }, true)

                            Item.Selected = value
                        end

                        Utility.Signal(Objs.Text.MouseButton1Click:Connect(function(
                        )
                            List.Set(name)
                        end))
                        table.insert(List.Items, Item)

                        return Item
                    end
                    function List.Refresh(tbl)
                        for _, item in List.Items do
                            item.Objects.Text:Destroy()
                        end

                        List.Items = {}
                        List.Value = cfg.multi and {} or nil

                        for _, item in tbl do
                            if type(item) == 'string' then
                                List.Add(item)
                            end
                        end
                    end

                    for _, item in cfg.values do
                        List.Add(item)
                    end

                    List.Set(cfg.value)

                    Library.ConfigFlags[cfg.flag] = List.Set

                    return setmetatable(List, Library)
                end
                function Library.Dropdown(self, cfg)
                    cfg = cfg or {}
                    cfg = Library.Config(cfg, {
                        name = 'New Dropdown',
                        description = nil,
                        values = {
                            'value1',
                            'value2',
                            'value3',
                            'value4',
                            'value5',
                        },
                        value = 'value1',
                        multi = false,
                        flag = nil,
                        callback = function() end,
                    })

                    if not cfg.flag then
                        cfg.flag = cfg.name
                    end

                    local Dropdown = {
                        Tweening = false,
                        Visible = false,
                        ZIndex = self.ZIndex,
                        Objects = {},
                        Popup = {},
                        Items = {},
                        Value = nil,
                        ParentPopup = self,
                    }
                    local ZIndex = self.ZIndex
                    local Objects = Dropdown.Objects

                    do
                        Objects.Holder = Utility.New('Frame', {
                            Name = 'Holder',
                            Size = UDim2.new(1, 0, 0, 0),
                            Position = UDim2.fromOffset(0, 0),
                            BackgroundTransparency = 1,
                            AutomaticSize = Enum.AutomaticSize.Y,
                            BorderSizePixel = 0,
                            Parent = self.Holder,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Vertical,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            Parent = Objects.Holder,
                            Padding = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1
                        Objects.Line = Utility.New('TextButton', {
                            Name = 'Line',
                            Size = UDim2.new(1, 0, 0, 0),
                            Position = UDim2.fromOffset(0, 0),
                            BackgroundTransparency = 1,
                            AutoButtonColor = false,
                            AutomaticSize = Enum.AutomaticSize.Y,
                            Style = Enum.ButtonStyle.Custom,
                            Text = '',
                            Parent = Objects.Holder,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Vertical,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            Parent = Objects.Line,
                            Padding = UDim.new(0, 2),
                        })

                        ZIndex = ZIndex + 1
                        Objects.Text = Utility.New('TextLabel', {
                            Name = 'Text',
                            TextStrokeTransparency = 0.8,
                            BackgroundTransparency = 1,
                            TextSize = Library.FontSize,
                            FontFace = Library.Font,
                            Size = UDim2.new(1, 0, 0, 0),
                            AutomaticSize = Enum.AutomaticSize.Y,
                            Text = cfg.name,
                            TextXAlignment = Enum.TextXAlignment.Left,
                            Parent = Objects.Line,
                            ZIndex = ZIndex,
                        }, {
                            TextColor3 = 'Dark Text',
                        })

                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Horizontal,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            HorizontalAlignment = Enum.HorizontalAlignment.Right,
                            Parent = Objects.Text,
                            Padding = UDim.new(0, 2),
                        })

                        ZIndex = ZIndex + 1
                        Objects.SideHolder = Utility.New('Frame', {
                            Name = 'SideHolder',
                            Size = UDim2.new(0, 0, 1, 0),
                            AutomaticSize = Enum.AutomaticSize.X,
                            Position = UDim2.fromOffset(0, 0),
                            BackgroundTransparency = 1,
                            BorderSizePixel = 0,
                            Parent = Objects.Text,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Horizontal,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            HorizontalAlignment = Enum.HorizontalAlignment.Right,
                            Parent = Objects.SideHolder,
                            Padding = UDim.new(0, 2),
                        })

                        Dropdown.SideHolder = Objects.SideHolder
                        ZIndex = ZIndex + 1

                        if cfg.description then
                            Objects.Description = Utility.New('TextLabel', {
                                Name = 'Description',
                                TextStrokeTransparency = 0.8,
                                BackgroundTransparency = 1,
                                TextSize = Library.FontSize - 2,
                                FontFace = Library.Font,
                                Size = UDim2.new(1, 0, 0, 0),
                                AutomaticSize = Enum.AutomaticSize.Y,
                                Text = cfg.description,
                                TextXAlignment = Enum.TextXAlignment.Left,
                                Parent = Objects.Line,
                                ZIndex = ZIndex,
                                TextWrapped = true,
                            }, {
                                TextColor3 = 'Light Text',
                            })
                            ZIndex = ZIndex + 1
                        end

                        Objects.Outline = Utility.New('TextButton', {
                            Name = 'Outline',
                            Size = UDim2.new(1, 0, 0, 20),
                            Position = UDim2.fromOffset(0, 0),
                            BorderSizePixel = 0,
                            AutoButtonColor = false,
                            Style = Enum.ButtonStyle.Custom,
                            Text = '',
                            Parent = Objects.Holder,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Inline',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            CornerRadius = UDim.new(0, 5),
                            Parent = Objects.Outline,
                        })

                        ZIndex = ZIndex + 1
                        Objects.Background = Utility.New('Frame', {
                            Name = 'Background',
                            Size = UDim2.new(1, -2, 1, -2),
                            Position = UDim2.fromOffset(1, 1),
                            BorderSizePixel = 0,
                            Parent = Objects.Outline,
                            ZIndex = ZIndex,
                            ClipsDescendants = true,
                        }, {
                            BackgroundColor3 = 'Background',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            CornerRadius = UDim.new(0, 5),
                            Parent = Objects.Background,
                        })
                        Utility.New('UIPadding', {
                            Name = 'UIPadding',
                            PaddingLeft = UDim.new(0, 5),
                            PaddingRight = UDim.new(0, 5),
                            PaddingTop = UDim.new(0, 2),
                            PaddingBottom = UDim.new(0, 2),
                            Parent = Objects.Background,
                        })

                        ZIndex = ZIndex + 1
                        Objects.Value = Utility.New('TextLabel', {
                            Name = 'Text',
                            TextStrokeTransparency = 0.8,
                            BackgroundTransparency = 1,
                            TextSize = Library.FontSize,
                            FontFace = Library.Font,
                            Size = UDim2.new(1, 0, 1, -2),
                            Text = 'Value',
                            TextXAlignment = Enum.TextXAlignment.Left,
                            Parent = Objects.Background,
                            ZIndex = ZIndex,
                        }, {
                            TextColor3 = 'Text',
                        })
                        ZIndex = ZIndex + 1
                    end

                    Dropdown.ZIndex = ZIndex

                    local Popup = Dropdown.Popup

                    do
                        Popup.Outline = Utility.New('Frame', {
                            Name = 'Outline',
                            Size = UDim2.new(0, 0, 0, 0),
                            BorderSizePixel = 0,
                            Parent = Library.ScreenGui,
                            ZIndex = ZIndex,
                            ClipsDescendants = true,
                            Visible = false,
                        }, {
                            BackgroundColor3 = 'Inline',
                        })

                        if self.BoundObjects then
                            table.insert(self.BoundObjects, Popup.Outline)
                        end

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Popup.Outline,
                            CornerRadius = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1
                        Popup.Background = Utility.New('TextButton', {
                            Name = 'Background',
                            Size = UDim2.new(1, -2, 1, -2),
                            Position = UDim2.fromOffset(1, 1),
                            Text = '',
                            AutoButtonColor = false,
                            Style = Enum.ButtonStyle.Custom,
                            BorderSizePixel = 0,
                            Parent = Popup.Outline,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Background',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Popup.Background,
                            CornerRadius = UDim.new(0, 5),
                        })
                        Utility.New('UIPadding', {
                            Name = 'UIPadding',
                            Parent = Popup.Background,
                            PaddingLeft = UDim.new(0, 5),
                            PaddingRight = UDim.new(0, 5),
                            PaddingTop = UDim.new(0, 5),
                            PaddingBottom = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1
                        Popup.Scroll = Utility.New('ScrollingFrame', {
                            Name = 'Scroll',
                            Size = UDim2.new(1, 0, 1, 0),
                            Position = UDim2.fromOffset(0, 0),
                            BackgroundTransparency = 1,
                            BorderSizePixel = 0,
                            Parent = Popup.Background,
                            ZIndex = ZIndex,
                            AutomaticCanvasSize = Enum.AutomaticSize.Y,
                            CanvasSize = UDim2.new(0, 0, 0, 0),
                            BottomImage = Library.ScrollBar,
                            MidImage = Library.ScrollBar,
                            TopImage = Library.ScrollBar,
                            ScrollBarThickness = 2,
                        }, {
                            ScrollBarImageColor3 = 'Accent',
                        })
                        Popup.Holder = Utility.New('Frame', {
                            Name = 'Holder',
                            Size = UDim2.new(1, 0, 0, 0),
                            AutomaticSize = Enum.AutomaticSize.Y,
                            BorderSizePixel = 0,
                            BackgroundTransparency = 1,
                            Parent = Popup.Scroll,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Vertical,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            Parent = Popup.Holder,
                            Padding = UDim.new(0, 5),
                        })
                    end

                    Popup.ZIndex = ZIndex

                    Utility.Signal(Objects.Outline:GetPropertyChangedSignal('AbsolutePosition'):Connect(function(
                    )
                        if Dropdown.Visible then
                            local Size = Objects.Outline.AbsoluteSize
                            local Position = Objects.Outline.AbsolutePosition

                            Popup.Outline.Position = UDim2.new(0, Position.X, 0, Position.Y + Size.Y + 5)
                        end
                    end))
                    Utility.Signal(UserInputService.InputBegan:Connect(function(
                        input
                    )
                        if input.UserInputType == Enum.UserInputType.MouseButton1 and Dropdown.Visible then
                            if not Utility.MouseOver(Popup.Outline, input) and not Utility.MouseOver(Objects.Outline, input) then
                                Dropdown.Open()
                            end
                        end
                    end))

                    function Dropdown.Display()
                        local Value = Dropdown.Value

                        if cfg.multi then
                            local CurrentText = {}

                            if Value and #Value > 0 then
                                for _, item in Value do
                                    if type(item) == 'string' then
                                        table.insert(CurrentText, item)
                                    end
                                end

                                if #CurrentText > 0 then
                                    Objects.Value.Text = table.concat(CurrentText, ', ')
                                else
                                    Objects.Value.Text = '-'
                                end
                            else
                                Objects.Value.Text = '-'
                            end
                        else
                            if type(Value) == 'string' then
                                Objects.Value.Text = Value ~= '' and Value or '-'
                            else
                                Objects.Value.Text = '-'
                            end
                        end
                    end
                    function Dropdown.Size()
                        local Size = 0
                        local Count = 0

                        for _, v in Popup.Holder:GetChildren()do
                            Count = Count + 1

                            if v:IsA('TextButton') then
                                Size = Size + v.AbsoluteSize.y + 5
                            end
                            if Count > 4 then
                                break
                            end
                        end

                        Size = Size + 10

                        return Size
                    end
                    function Dropdown.Open()
                        if Dropdown.Tweening then
                            return
                        end

                        Dropdown.Tweening = true
                        Dropdown.Visible = not Dropdown.Visible

                        if Dropdown.Visible then
                            Popup.Outline.Visible = true
                        end

                        local ParentObjects = Popup.Outline:GetDescendants()

                        table.insert(ParentObjects, Popup.Outline)

                        for _, obj in ParentObjects do
                            local Index = Utility.GetTransparency(obj)

                            if not Index then
                            end
                            if type(Index) == 'table' then
                                for _, prop in Index do
                                    Library.Fade(obj, prop, Dropdown.Visible)
                                end
                            else
                                Library.Fade(obj, Index, Dropdown.Visible)
                            end
                        end

                        local Size = Objects.Outline.AbsoluteSize
                        local Position = Objects.Outline.AbsolutePosition

                        Popup.Outline.Position = UDim2.new(0, Position.X, 0, Position.Y + Size.Y + 5)
                        Popup.Outline.Size = Dropdown.Visible and UDim2.new(0, Size.X, 0, 20) or UDim2.new(0, Size.X, 0, Dropdown.Size())

                        local Tween = Library.Tween(Popup.Outline, {
                            Size = Dropdown.Visible and UDim2.new(0, Size.X, 0, Dropdown.Size()) or UDim2.new(0, Size.X, 0, 20),
                        })

                        Utility.Signal(Tween.Completed:Connect(function()
                            Popup.Outline.Visible = Dropdown.Visible
                            Dropdown.Tweening = false
                        end))
                    end
                    function Dropdown.Set(value, ignore)
                        if cfg.multi then
                            if type(value) == 'table' then
                                for _, item in Dropdown.Items do
                                    item.Select(false)
                                end
                                for _, item in value do
                                    for _, item2 in Dropdown.Items do
                                        if item2.Name == item then
                                            item2.Select(true)
                                        end
                                    end
                                end

                                Dropdown.Value = value

                                Dropdown.Display()

                                if not ignore then
                                    cfg.callback(Dropdown.Value)
                                end

                                Library.Flags[cfg.flag] = Dropdown.Value
                            else
                                local Index = table.find(Dropdown.Value, value)

                                if Index then
                                    table.remove(Dropdown.Value, Index)

                                    for _, item in Dropdown.Items do
                                        if item.Name == value then
                                            item.Select(false)
                                        end
                                    end

                                    Dropdown.Display()

                                    if not ignore then
                                        cfg.callback(Dropdown.Value)
                                    end

                                    Library.Flags[cfg.flag] = Dropdown.Value
                                else
                                    table.insert(Dropdown.Value, value)

                                    for _, item in Dropdown.Items do
                                        if item.Name == value then
                                            item.Select(true)
                                        end
                                    end

                                    Dropdown.Display()

                                    if not ignore then
                                        cfg.callback(Dropdown.Value)
                                    end

                                    Library.Flags[cfg.flag] = Dropdown.Value
                                end
                            end
                        else
                            for _, item in Dropdown.Items do
                                item.Select(item.Name == value)
                            end

                            Dropdown.Value = type(value) == 'string' and value or nil

                            Dropdown.Display()

                            if not ignore then
                                cfg.callback(Dropdown.Value)
                            end

                            Library.Flags[cfg.flag] = Dropdown.Value
                        end
                    end
                    function Dropdown.Add(name)
                        if type(name) ~= 'string' then
                            return
                        end

                        local Item = {
                            Objects = {},
                            Name = name,
                            Selected = false,
                        }
                        local Objects = Item.Objects

                        do
                            Objects.Text = Utility.New('TextButton', {
                                Name = 'Text',
                                TextStrokeTransparency = 0.8,
                                BackgroundTransparency = 1,
                                TextSize = Library.FontSize,
                                FontFace = Library.Font,
                                Size = UDim2.new(1, 0, 0, 0),
                                AutomaticSize = Enum.AutomaticSize.Y,
                                Text = name,
                                AutoButtonColor = false,
                                Style = Enum.ButtonStyle.Custom,
                                TextXAlignment = Enum.TextXAlignment.Left,
                                Parent = Popup.Holder,
                                ZIndex = ZIndex,
                            }, {
                                TextColor3 = 'Dark Text',
                            })
                        end

                        function Item.Select(value)
                            Library.ChangeObjectTheme(Objects.Text, {
                                TextColor3 = value and 'Text' or 'Dark Text',
                            }, true)

                            Item.Selected = value
                        end

                        Utility.Signal(Objects.Text.MouseButton1Click:Connect(function(
                        )
                            Dropdown.Set(name)
                        end))
                        table.insert(Dropdown.Items, Item)

                        return Item
                    end
                    function Dropdown.Refresh(tbl)
                        for _, item in Dropdown.Items do
                            item.Objects.Text:Destroy()
                        end

                        Dropdown.Items = {}
                        Dropdown.Value = cfg.multi and {} or nil

                        for _, item in tbl do
                            if type(item) == 'string' then
                                Dropdown.Add(item)
                            end
                        end

                        Dropdown.Display()
                    end

                    for _, item in cfg.values do
                        Dropdown.Add(item)
                    end

                    Dropdown.Set(cfg.value)
                    Utility.Signal(Objects.Outline.MouseButton1Click:Connect(Dropdown.Open))

                    Library.ConfigFlags[cfg.flag] = Dropdown.Set

                    table.insert(Library.Dropdowns, Dropdown)

                    return setmetatable(Dropdown, Library)
                end
                function Library.Colorpicker(self, cfg)
                    cfg = cfg or {}
                    cfg = Library.Config(cfg, {
                        name = 'New Colorpicker',
                        value = Color3.new(1, 1, 1),
                        alpha = 0,
                        flag = nil,
                        callback = function() end,
                    })

                    local Colorpicker = {
                        Tweening = false,
                        ZIndex = self.ZIndex,
                        Objects = {},
                        Popup = {},
                        Value = cfg.value,
                        Alpha = cfg.alpha,
                    }
                    local ZIndex = Colorpicker.ZIndex
                    local Objects = Colorpicker.Objects

                    do
                        if not self.SideHolder then
                            Objects.Holder = Utility.New('Frame', {
                                Name = 'Holder',
                                Size = UDim2.new(1, 0, 0, 0),
                                Position = UDim2.fromOffset(0, 0),
                                BackgroundTransparency = 1,
                                AutomaticSize = Enum.AutomaticSize.Y,
                                BorderSizePixel = 0,
                                Parent = self.Holder,
                                ZIndex = ZIndex,
                            })

                            Utility.New('UIListLayout', {
                                Name = 'UIListLayout',
                                FillDirection = Enum.FillDirection.Vertical,
                                SortOrder = Enum.SortOrder.LayoutOrder,
                                Parent = Objects.Holder,
                                Padding = UDim.new(0, 5),
                            })

                            ZIndex = ZIndex + 1
                            Objects.Line = Utility.New('TextButton', {
                                Name = 'Line',
                                Size = UDim2.new(1, 0, 0, 0),
                                Position = UDim2.fromOffset(0, 0),
                                BackgroundTransparency = 1,
                                AutoButtonColor = false,
                                AutomaticSize = Enum.AutomaticSize.Y,
                                Style = Enum.ButtonStyle.Custom,
                                Text = '',
                                Parent = Objects.Holder,
                                ZIndex = ZIndex,
                            })

                            Utility.New('UIListLayout', {
                                Name = 'UIListLayout',
                                FillDirection = Enum.FillDirection.Vertical,
                                SortOrder = Enum.SortOrder.LayoutOrder,
                                Parent = Objects.Line,
                                Padding = UDim.new(0, 2),
                            })

                            ZIndex = ZIndex + 1
                            Objects.Text = Utility.New('TextLabel', {
                                Name = 'Text',
                                TextStrokeTransparency = 0.8,
                                BackgroundTransparency = 1,
                                TextSize = Library.FontSize,
                                FontFace = Library.Font,
                                Size = UDim2.new(1, 0, 0, 0),
                                AutomaticSize = Enum.AutomaticSize.Y,
                                Text = cfg.name,
                                TextXAlignment = Enum.TextXAlignment.Left,
                                Parent = Objects.Line,
                                ZIndex = ZIndex,
                            }, {
                                TextColor3 = 'Dark Text',
                            })

                            Utility.New('UIListLayout', {
                                Name = 'UIListLayout',
                                FillDirection = Enum.FillDirection.Horizontal,
                                SortOrder = Enum.SortOrder.LayoutOrder,
                                HorizontalAlignment = Enum.HorizontalAlignment.Right,
                                Parent = Objects.Text,
                                Padding = UDim.new(0, 2),
                            })

                            ZIndex = ZIndex + 1
                            Objects.SideHolder = Utility.New('Frame', {
                                Name = 'SideHolder',
                                Size = UDim2.new(0, 0, 1, 0),
                                AutomaticSize = Enum.AutomaticSize.X,
                                Position = UDim2.fromOffset(0, 0),
                                BackgroundTransparency = 1,
                                BorderSizePixel = 0,
                                Parent = Objects.Text,
                                ZIndex = ZIndex,
                            })

                            Utility.New('UIListLayout', {
                                Name = 'UIListLayout',
                                FillDirection = Enum.FillDirection.Horizontal,
                                SortOrder = Enum.SortOrder.LayoutOrder,
                                HorizontalAlignment = Enum.HorizontalAlignment.Right,
                                Parent = Objects.SideHolder,
                                Padding = UDim.new(0, 2),
                            })

                            Colorpicker.SideHolder = Objects.SideHolder
                            ZIndex = ZIndex + 1
                        end

                        local Parent = self.SideHolder or Objects.Text

                        Objects.Outline = Utility.New('TextButton', {
                            Name = 'Outline',
                            Size = UDim2.new(0, 0, 0, 0),
                            Position = UDim2.fromOffset(0, 0),
                            BorderSizePixel = 0,
                            BackgroundTransparency = 0,
                            Text = '',
                            AutoButtonColor = false,
                            Style = Enum.ButtonStyle.Custom,
                            Parent = Parent,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Inline',
                        })
                        Objects.Outline.Size = UDim2.new(0, Parent.AbsoluteSize.Y, 0, Parent.AbsoluteSize.Y)

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            CornerRadius = UDim.new(0, 5),
                            Parent = Objects.Outline,
                        })

                        ZIndex = ZIndex + 1
                        Objects.Background = Utility.New('Frame', {
                            Name = 'Background',
                            Size = UDim2.new(1, -2, 1, -2),
                            Position = UDim2.fromOffset(1, 1),
                            BorderSizePixel = 0,
                            BackgroundTransparency = 0,
                            Parent = Objects.Outline,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            CornerRadius = UDim.new(0, 5),
                            Parent = Objects.Background,
                        })

                        ZIndex = ZIndex + 1
                    end

                    Colorpicker.ZIndex = ZIndex

                    local ColorpickerWindow = Library.ColorpickerWindow

                    function Colorpicker.Set(value, alpha)
                        local Color, Alpha

                        if type(value) == 'table' then
                            Color = value.c
                            Alpha = value.a
                        else
                            Color = value
                            Alpha = alpha or Colorpicker.Alpha
                        end

                        Colorpicker.Value = Color

                        if Alpha then
                            Colorpicker.Alpha = Alpha
                            Objects.Background.BackgroundTransparency = Alpha
                        end

                        Objects.Background.BackgroundColor3 = Color
                        Library.Flags[cfg.flag] = {
                            c = Color,
                            a = Alpha,
                        }

                        cfg.callback({
                            c = Color,
                            a = Alpha,
                        })
                    end

                    Utility.Signal(Objects.Outline.MouseButton1Click:Connect(function(
                        input
                    )
                        ColorpickerWindow.Flag = cfg.flag
                        ColorpickerWindow.SetFunc = Colorpicker.Set

                        ColorpickerWindow.Set(Colorpicker.Value, Colorpicker.Alpha)

                        if ColorpickerWindow.Open then
                            ColorpickerWindow.Open(Objects.Outline.AbsolutePosition + Vector2.new(0, Objects.Outline.AbsoluteSize.Y + 2))
                        end
                    end))
                    Utility.Signal(UserInputService.InputBegan:Connect(function(
                        input
                    )
                        if input.UserInputType == Enum.UserInputType.MouseButton1 and ColorpickerWindow.Visible and ColorpickerWindow.Flag == cfg.flag and not (Utility.MouseOver(ColorpickerWindow.Objects.Outline, input) or Utility.MouseOver(Objects.Outline, input)) then
                            if ColorpickerWindow.Open then
                                ColorpickerWindow.Open(Objects.Outline.AbsolutePosition + Vector2.new(0, Objects.Outline.AbsoluteSize.Y + 2))
                            end
                        end
                    end))
                    Utility.Signal(Objects.Outline:GetPropertyChangedSignal('AbsolutePosition'):Connect(function(
                    )
                        if ColorpickerWindow.Visible and ColorpickerWindow.Flag == cfg.flag then
                            local Position = Objects.Outline.AbsolutePosition + Vector2.new(0, Objects.Outline.AbsoluteSize.Y + 2)

                            ColorpickerWindow.Objects.Outline.Position = UDim2.new(0, Position.x, 0, Position.y)
                        end
                    end))
                    Colorpicker.Set(cfg.value, cfg.alpha)

                    Library.ConfigFlags[cfg.flag] = Colorpicker.Set

                    return setmetatable(Colorpicker, Library)
                end
                function Library.Textbox(self, cfg)
                    cfg = cfg or {}
                    cfg = Library.Config(cfg, {
                        name = 'New Textbox',
                        value = '',
                        callback = function() end,
                        flag = nil,
                    })

                    if not cfg.flag then
                        cfg.flag = cfg.name
                    end

                    local Textbox = {
                        ZIndex = self.ZIndex,
                        Objects = {},
                    }
                    local ZIndex = Textbox.ZIndex
                    local Objects = Textbox.Objects

                    do
                        Objects.Outline = Utility.New('TextButton', {
                            Name = 'Outline',
                            Size = UDim2.new(1, 0, 0, 0),
                            AutomaticSize = Enum.AutomaticSize.Y,
                            BorderSizePixel = 0,
                            Parent = self.Holder,
                            TextSize = 0,
                            Text = '',
                            AutoButtonColor = false,
                            Style = Enum.ButtonStyle.Custom,
                            ZIndex = ZIndex,
                            ClipsDescendants = true,
                        }, {
                            BackgroundColor3 = 'Inline',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            CornerRadius = UDim.new(0, 5),
                            Parent = Objects.Outline,
                        })

                        ZIndex = ZIndex + 1
                        Objects.Background = Utility.New('Frame', {
                            Name = 'Background',
                            Size = UDim2.new(1, -2, 1, -2),
                            Position = UDim2.fromOffset(1, 1),
                            BorderSizePixel = 0,
                            Parent = Objects.Outline,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Background',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            CornerRadius = UDim.new(0, 5),
                            Parent = Objects.Background,
                        })
                        Utility.New('UIPadding', {
                            Name = 'UIPadding',
                            PaddingTop = UDim.new(0, 2),
                            PaddingBottom = UDim.new(0, 5),
                            PaddingLeft = UDim.new(0, 5),
                            PaddingRight = UDim.new(0, 5),
                            Parent = Objects.Background,
                        })

                        ZIndex = ZIndex + 1
                        Objects.TextBox = Utility.New('TextBox', {
                            Name = 'TextBox',
                            Size = UDim2.new(1, 0, 0, 0),
                            Text = cfg.value,
                            ClearTextOnFocus = false,
                            PlaceholderText = cfg.name,
                            ClipsDescendants = true,
                            MultiLine = false,
                            TextSize = Library.FontSize,
                            FontFace = Library.Font,
                            TextXAlignment = Enum.TextXAlignment.Center,
                            BackgroundTransparency = 1,
                            TextStrokeTransparency = 0.8,
                            Parent = Objects.Background,
                            ZIndex = ZIndex,
                        }, {
                            TextColor3 = 'Text',
                            PlaceholderColor3 = 'Dark Text',
                        })
                        Objects.TextBox.Size = UDim2.new(1, 0, 0, Objects.TextBox.TextBounds.Y - 2)
                    end

                    Textbox.ZIndex = ZIndex

                    function Textbox.Set(value)
                        Objects.TextBox.Text = value
                        Library.Flags[cfg.flag] = value

                        cfg.callback(value)
                    end

                    Utility.Signal(Objects.TextBox.FocusLost:Connect(function()
                        Textbox.Set(Objects.TextBox.Text)
                    end))
                    Textbox.Set(cfg.value)

                    Library.ConfigFlags[cfg.flag] = Textbox.Set

                    return setmetatable(Textbox, Library)
                end
                function Library.Keybind(self, cfg)
                    cfg = cfg or {}
                    cfg = Library.Config(cfg, {
                        name = 'New Keybind',
                        value = false,
                        key = Enum.KeyCode.Unknown,
                        mode = 'Toggle',
                        callback = function() end,
                        flag = nil,
                    })

                    if not cfg.flag then
                        cfg.flag = cfg.name
                    end

                    local Keybind = {
                        Tweening = false,
                        Visible = false,
                        ZIndex = self.ZIndex,
                        Objects = {},
                        Popup = {},
                        Key = nil,
                        Mode = nil,
                        Value = false,
                        OnHold = nil,
                        Listener = nil,
                    }
                    local ZIndex = Keybind.ZIndex
                    local Objects = Keybind.Objects

                    do
                        if not self.SideHolder then
                            Objects.Holder = Utility.New('Frame', {
                                Name = 'Holder',
                                Size = UDim2.new(1, 0, 0, 0),
                                Position = UDim2.fromOffset(0, 0),
                                BackgroundTransparency = 1,
                                AutomaticSize = Enum.AutomaticSize.Y,
                                BorderSizePixel = 0,
                                Parent = self.Holder,
                                ZIndex = ZIndex,
                            })

                            Utility.New('UIListLayout', {
                                Name = 'UIListLayout',
                                FillDirection = Enum.FillDirection.Vertical,
                                SortOrder = Enum.SortOrder.LayoutOrder,
                                Parent = Objects.Holder,
                                Padding = UDim.new(0, 5),
                            })

                            ZIndex = ZIndex + 1
                            Objects.Line = Utility.New('TextButton', {
                                Name = 'Line',
                                Size = UDim2.new(1, 0, 0, 0),
                                Position = UDim2.fromOffset(0, 0),
                                BackgroundTransparency = 1,
                                AutoButtonColor = false,
                                AutomaticSize = Enum.AutomaticSize.Y,
                                Style = Enum.ButtonStyle.Custom,
                                Text = '',
                                Parent = Objects.Holder,
                                ZIndex = ZIndex,
                            })

                            Utility.New('UIListLayout', {
                                Name = 'UIListLayout',
                                FillDirection = Enum.FillDirection.Vertical,
                                SortOrder = Enum.SortOrder.LayoutOrder,
                                Parent = Objects.Line,
                                Padding = UDim.new(0, 2),
                            })

                            ZIndex = ZIndex + 1
                            Objects.Text = Utility.New('TextLabel', {
                                Name = 'Text',
                                TextStrokeTransparency = 0.8,
                                BackgroundTransparency = 1,
                                TextSize = Library.FontSize,
                                FontFace = Library.Font,
                                Size = UDim2.new(1, 0, 0, 0),
                                AutomaticSize = Enum.AutomaticSize.Y,
                                Text = cfg.name,
                                TextXAlignment = Enum.TextXAlignment.Left,
                                Parent = Objects.Line,
                                ZIndex = ZIndex,
                            }, {
                                TextColor3 = 'Dark Text',
                            })

                            Utility.New('UIListLayout', {
                                Name = 'UIListLayout',
                                FillDirection = Enum.FillDirection.Horizontal,
                                SortOrder = Enum.SortOrder.LayoutOrder,
                                HorizontalAlignment = Enum.HorizontalAlignment.Right,
                                Parent = Objects.Text,
                                Padding = UDim.new(0, 2),
                            })

                            ZIndex = ZIndex + 1
                            Objects.SideHolder = Utility.New('Frame', {
                                Name = 'SideHolder',
                                Size = UDim2.new(0, 0, 1, 0),
                                AutomaticSize = Enum.AutomaticSize.X,
                                Position = UDim2.fromOffset(0, 0),
                                BackgroundTransparency = 1,
                                BorderSizePixel = 0,
                                Parent = Objects.Text,
                                ZIndex = ZIndex,
                            })

                            Utility.New('UIListLayout', {
                                Name = 'UIListLayout',
                                FillDirection = Enum.FillDirection.Horizontal,
                                SortOrder = Enum.SortOrder.LayoutOrder,
                                HorizontalAlignment = Enum.HorizontalAlignment.Right,
                                Parent = Objects.SideHolder,
                                Padding = UDim.new(0, 2),
                            })

                            Keybind.SideHolder = Objects.SideHolder
                            ZIndex = ZIndex + 1
                        end

                        local Parent = self.SideHolder or Objects.Text

                        Objects.Icon = Utility.New('ImageButton', {
                            Name = 'Icon',
                            BackgroundTransparency = 1,
                            AutoButtonColor = false,
                            Style = Enum.ButtonStyle.Custom,
                            Image = 'rbxassetid://81471583706380',
                            Parent = Parent,
                            ZIndex = ZIndex,
                            ScaleType = Enum.ScaleType.Crop,
                        }, {
                            ImageColor3 = 'Text',
                        })
                        Objects.Icon.Size = UDim2.new(0, Parent.AbsoluteSize.Y, 0, Parent.AbsoluteSize.Y)
                    end

                    Keybind.ZIndex = ZIndex

                    local Popup = Keybind.Popup

                    do
                        Popup.Outline = Utility.New('Frame', {
                            Name = 'Outline',
                            Size = UDim2.new(0, 150, 0, 0),
                            AutomaticSize = Enum.AutomaticSize.Y,
                            BorderSizePixel = 0,
                            Parent = Library.ScreenGui,
                            ZIndex = ZIndex,
                            ClipsDescendants = true,
                            Visible = false,
                        }, {
                            BackgroundColor3 = 'Inline',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Popup.Outline,
                            CornerRadius = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1
                        Popup.Background = Utility.New('TextButton', {
                            Name = 'Background',
                            Size = UDim2.new(1, -2, 1, -2),
                            Position = UDim2.fromOffset(1, 1),
                            Text = '',
                            AutoButtonColor = false,
                            Style = Enum.ButtonStyle.Custom,
                            BorderSizePixel = 0,
                            Parent = Popup.Outline,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Background',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Popup.Background,
                            CornerRadius = UDim.new(0, 5),
                        })
                        Utility.New('UIPadding', {
                            Name = 'UIPadding',
                            Parent = Popup.Background,
                            PaddingLeft = UDim.new(0, 5),
                            PaddingRight = UDim.new(0, 5),
                            PaddingTop = UDim.new(0, 5),
                            PaddingBottom = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1
                        Popup.Holder = Utility.New('Frame', {
                            Name = 'Holder',
                            Size = UDim2.new(1, 0, 0, 0),
                            AutomaticSize = Enum.AutomaticSize.Y,
                            BorderSizePixel = 0,
                            BackgroundTransparency = 1,
                            Parent = Popup.Background,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Vertical,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            Parent = Popup.Holder,
                            Padding = UDim.new(0, 5),
                        })

                        Popup.Line = Utility.New('TextButton', {
                            Name = 'Line',
                            Size = UDim2.new(1, 0, 0, 0),
                            Position = UDim2.fromOffset(0, 0),
                            BackgroundTransparency = 1,
                            AutoButtonColor = false,
                            AutomaticSize = Enum.AutomaticSize.Y,
                            Style = Enum.ButtonStyle.Custom,
                            Text = '',
                            Parent = Popup.Holder,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Vertical,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            Parent = Popup.Line,
                            Padding = UDim.new(0, 2),
                        })

                        ZIndex = ZIndex + 1
                        Popup.Text = Utility.New('TextLabel', {
                            Name = 'Text',
                            TextStrokeTransparency = 0.8,
                            BackgroundTransparency = 1,
                            TextSize = Library.FontSize,
                            FontFace = Library.Font,
                            Size = UDim2.new(1, 0, 0, 0),
                            AutomaticSize = Enum.AutomaticSize.Y,
                            Text = 'Key',
                            TextXAlignment = Enum.TextXAlignment.Left,
                            Parent = Popup.Line,
                            ZIndex = ZIndex,
                        }, {
                            TextColor3 = 'Dark Text',
                        })

                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Horizontal,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            HorizontalAlignment = Enum.HorizontalAlignment.Right,
                            Parent = Popup.Text,
                            Padding = UDim.new(0, 2),
                        })

                        ZIndex = ZIndex + 1
                        Popup.KeyOutline = Utility.New('TextButton', {
                            Name = 'Outline',
                            Size = UDim2.new(0, 0, 0, 0),
                            Position = UDim2.fromOffset(0, 0),
                            BorderSizePixel = 0,
                            BackgroundTransparency = 0,
                            Parent = Popup.Text,
                            Text = '',
                            AutoButtonColor = false,
                            Style = Enum.ButtonStyle.Custom,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Inline',
                        })
                        Popup.KeyOutline.Size = UDim2.new(0, 25, 0, Popup.Text.AbsoluteSize.Y)

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            CornerRadius = UDim.new(0, 5),
                            Parent = Popup.KeyOutline,
                        })

                        ZIndex = ZIndex + 1
                        Popup.KeyBackground = Utility.New('Frame', {
                            Name = 'Background',
                            Size = UDim2.new(1, -2, 1, -2),
                            Position = UDim2.fromOffset(1, 1),
                            BorderSizePixel = 0,
                            Parent = Popup.KeyOutline,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Background',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            CornerRadius = UDim.new(0, 5),
                            Parent = Popup.KeyBackground,
                        })

                        ZIndex = ZIndex + 1
                        Popup.Key = Utility.New('TextLabel', {
                            Name = 'Text',
                            TextStrokeTransparency = 0.8,
                            BackgroundTransparency = 1,
                            TextSize = Library.FontSize - 2,
                            FontFace = Library.Font,
                            Size = UDim2.new(1, 0, 1, -2),
                            Text = 'E',
                            Parent = Popup.KeyBackground,
                            ZIndex = ZIndex,
                        }, {
                            TextColor3 = 'Dark Text',
                        })
                    end

                    Keybind.ZIndex = ZIndex

                    function Keybind.Set(value, ignore)
                        if type(value) == 'table' then
                            for _, v in value do
                                Keybind.Set(v, true)
                            end

                            return
                        end

                        local Type = typeof(value)

                        if Type == 'EnumItem' then
                            Keybind.Key = value
                            value = (value == Enum.KeyCode.Unknown and 'None' or value.Name)
                            Popup.Key.Text = Library.KeyConverters[value:lower()] or value

                            Library.Tween(Popup.KeyOutline, {
                                Size = UDim2.new(0, Popup.Key.TextBounds.X + 10, 0, Popup.Text.AbsoluteSize.Y),
                            })
                        elseif Type == 'boolean' then
                            if Keybind.Mode == 'Always' and not value then
                                value = true
                            end

                            Keybind.Value = value
                        elseif Type == 'string' then
                            if Keybind.OnHold and value ~= 'Hold' then
                                Keybind.OnHold:Disconnect()

                                Keybind.OnHold = nil
                            end

                            Keybind.Mode = value

                            if Popup.Dropdown then
                                Popup.Dropdown.Set(Keybind.Mode, true)
                            end
                            if value == 'Always' then
                                Keybind.Value = true
                            end
                        end
                        if not ignore then
                            Library.Flags[cfg.flag] = Keybind.Value

                            cfg.callback(Keybind.Value)
                        end

                        Library.Flags[string.format('%s_data', cfg.flag)] = {
                            value = Keybind.Value,
                            key = Keybind.Key,
                            mode = Keybind.Mode,
                        }
                    end

                    Popup.Dropdown = Library.Dropdown({
                        ZIndex = ZIndex,
                        Holder = Popup.Holder,
                    }, {
                        Name = 'Mode',
                        Values = {
                            'Toggle',
                            'Hold',
                            'Always',
                        },
                        Value = cfg.mode,
                        Callback = function(v)
                            Keybind.Set(v, true)
                        end,
                    })

                    function Keybind.Open()
                        if Keybind.Tweening then
                            return
                        end

                        Keybind.Tweening = true
                        Keybind.Visible = not Keybind.Visible

                        if Keybind.Visible then
                            Popup.Outline.Visible = true
                        end

                        local ParentObjects = Popup.Outline:GetDescendants()

                        table.insert(ParentObjects, Popup.Outline)

                        for _, obj in ParentObjects do
                            local Index = Utility.GetTransparency(obj)

                            if Index then
                                if type(Index) == 'table' then
                                    for _, prop in Index do
                                        Library.Fade(obj, prop, Keybind.Visible)
                                    end
                                else
                                    Library.Fade(obj, Index, Keybind.Visible)
                                end
                            end
                        end

                        local OldSize = Popup.Outline.AbsoluteSize
                        local Position = Objects.Icon.AbsolutePosition + Vector2.new(0, Objects.Icon.AbsoluteSize.y + 5)

                        Popup.Outline.AutomaticSize = Enum.AutomaticSize.None
                        Popup.Outline.Size = Keybind.Visible and UDim2.new(0, OldSize.x, 0, 0) or UDim2.new(0, OldSize.x, 0, OldSize.Y)
                        Popup.Outline.Position = UDim2.new(0, Position.X, 0, Position.Y)

                        local Tween = Library.Tween(Popup.Outline, {
                            Size = Keybind.Visible and UDim2.new(0, OldSize.x, 0, OldSize.Y) or UDim2.new(0, OldSize.x, 0, 0),
                        })

                        Utility.Signal(Tween.Completed:Connect(function()
                            Keybind.Tweening = false
                            Popup.Outline.Size = UDim2.new(0, OldSize.x, 0, 0)
                            Popup.Outline.AutomaticSize = Enum.AutomaticSize.Y
                            Popup.Outline.Visible = Keybind.Visible
                        end))
                    end

                    Utility.Signal(Popup.KeyOutline.MouseButton1Click:Connect(function(
                        input
                    )
                        if Keybind.Listener then
                            Library.ChangeObjectTheme(Popup.Key, {
                                TextColor3 = 'Dark Text',
                            }, true)
                            Keybind.Listener:Disconnect()

                            Keybind.Listener = nil

                            return
                        end

                        Library.ChangeObjectTheme(Popup.Key, {
                            TextColor3 = 'Accent',
                        }, true)
                        task.wait(2E-2)

                        Keybind.Listener = Utility.Signal(UserInputService.InputBegan:Connect(function(
                            input
                        )
                            if input.KeyCode == Enum.KeyCode.Escape or input.KeyCode == Enum.KeyCode.Backspace then
                                Keybind.Set(Enum.KeyCode.Unknown)
                                Keybind.Listener:Disconnect()

                                Keybind.Listener = nil

                                Library.ChangeObjectTheme(Popup.Key, {
                                    TextColor3 = 'Dark Text',
                                }, true)

                                return
                            end
                            if input.UserInputType == Enum.UserInputType.Keyboard or table.find({
                                Enum.UserInputType.MouseButton1,
                                Enum.UserInputType.MouseButton2,
                                Enum.UserInputType.MouseButton3,
                            }, input.UserInputType) then
                                local Key = input.KeyCode ~= Enum.KeyCode.Unknown and input.KeyCode or input.UserInputType or Enum.KeyCode.Unknown

                                Keybind.Set(Key)
                                Library.ChangeObjectTheme(Popup.Key, {
                                    TextColor3 = 'Dark Text',
                                }, true)
                                Keybind.Listener:Disconnect()

                                Keybind.Listener = nil
                            end
                        end))
                    end))
                    Utility.Signal(UserInputService.InputBegan:Connect(function(
                        input
                    )
                        if Keybind.Key ~= Enum.KeyCode.Unknown and (input.KeyCode == Keybind.Key or input.UserInputType == Keybind.Key) then
                            if UserInputService:GetFocusedTextBox() then
                                return
                            end

                            local Value = Keybind.Mode ~= 'Toggle' or not Keybind.Value

                            Keybind.Set(Value)

                            if Keybind.Mode == 'Hold' then
                                if Keybind.OnHold then
                                    Keybind.OnHold:Disconnect()
                                end

                                Keybind.OnHold = Utility.Signal(UserInputService.InputEnded:Connect(function(
                                    input
                                )
                                    if Keybind.Key ~= Enum.KeyCode.Unknown and (input.KeyCode == Keybind.Key or input.UserInputType == Keybind.Key) then
                                        Keybind.Set(false)

                                        if Keybind.OnHold then
                                            Keybind.OnHold:Disconnect()

                                            Keybind.OnHold = nil
                                        end
                                    end
                                end))
                            end
                        end
                    end))
                    Utility.Signal(UserInputService.InputBegan:Connect(function(
                        input
                    )
                        if input.UserInputType == Enum.UserInputType.MouseButton1 and Keybind.Visible and not (Utility.MouseOver(Popup.Outline, input) or Utility.MouseOver(Objects.Icon, input) or Utility.MouseOver(Popup.Dropdown.Popup.Outline, input)) then
                            if Keybind.Open then
                                Keybind.Open()
                            end
                        end
                    end))
                    Utility.Signal(Objects.Icon.MouseButton1Click:Connect(function(
                    )
                        if Keybind.Open then
                            Keybind.Open()
                        end
                    end))
                    Keybind.Set({
                        cfg.key,
                        cfg.mode,
                        cfg.value,
                    }, true)

                    Library.ConfigFlags[string.format('%s_data', cfg.flag)] = Keybind.Set

                    return setmetatable(Keybind, Library)
                end
                function Library.Label(self, cfg)
                    cfg = cfg or {}
                    cfg = Library.Config(cfg, {
                        name = 'New Label',
                        bold = true,
                        dark = false,
                    })

                    local Label = {
                        Objects = {},
                        ZIndex = self.ZIndex,
                    }
                    local ZIndex = Label.ZIndex
                    local Objects = Label.Objects

                    do
                        Objects.Holder = Utility.New('Frame', {
                            Name = 'Holder',
                            Size = UDim2.new(1, 0, 0, 0),
                            Position = UDim2.fromOffset(0, 0),
                            BackgroundTransparency = 1,
                            AutomaticSize = Enum.AutomaticSize.Y,
                            BorderSizePixel = 0,
                            Parent = self.Holder,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Vertical,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            Parent = Objects.Holder,
                            Padding = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1
                        Objects.Text = Utility.New('TextLabel', {
                            Name = 'Text',
                            TextStrokeTransparency = 0.8,
                            BackgroundTransparency = 1,
                            TextSize = cfg.bold and Library.FontSize or Library.FontSize - 2,
                            FontFace = Library.Font,
                            Size = UDim2.new(1, 0, 0, 0),
                            Position = UDim2.new(0, 0, 0, 0),
                            AutomaticSize = Enum.AutomaticSize.Y,
                            Text = cfg.name,
                            TextWrapped = true,
                            TextXAlignment = Enum.TextXAlignment.Left,
                            Parent = Objects.Holder,
                            ZIndex = ZIndex,
                        }, {
                            TextColor3 = cfg.dark and 'Light Text' or 'Text',
                        })

                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Horizontal,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            HorizontalAlignment = Enum.HorizontalAlignment.Right,
                            Parent = Objects.Text,
                            Padding = UDim.new(0, 2),
                        })

                        ZIndex = ZIndex + 1
                        Objects.SideHolder = Utility.New('Frame', {
                            Name = 'SideHolder',
                            Size = UDim2.new(0, 0, 1, 0),
                            AutomaticSize = Enum.AutomaticSize.X,
                            Position = UDim2.fromOffset(0, 0),
                            BackgroundTransparency = 1,
                            BorderSizePixel = 0,
                            Parent = Objects.Text,
                            ZIndex = ZIndex,
                        })

                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Horizontal,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            HorizontalAlignment = Enum.HorizontalAlignment.Right,
                            Parent = Objects.SideHolder,
                            Padding = UDim.new(0, 2),
                        })

                        Label.SideHolder = Objects.SideHolder
                        ZIndex = ZIndex + 1
                    end

                    Label.ZIndex = ZIndex

                    return setmetatable(Label, Library)
                end
                function Library.Notification(cfg)
                    cfg = cfg or {}
                    cfg = Library.Config(cfg, {
                        name = 'New Notification',
                        description = nil,
                        type = 'Normal',
                        buttons = nil,
                        showbuttons = false,
                        time = 5,
                    })

                    local ZIndex = 100
                    local Notification = {
                        Objects = {},
                        Name = cfg.name,
                        Description = cfg.description,
                        Type = cfg.type,
                        Time = cfg.time,
                        Clock = os.clock(),
                        Buttons = {},
                        ShowButtons = cfg.showbuttons,
                        ButtonLerp = 1,
                        Lerp = 1,
                    }
                    local Objects = Notification.Objects

                    do
                        Objects.Holder = Utility.New('Frame', {
                            Name = 'Holder',
                            BorderSizePixel = 0,
                            BackgroundTransparency = 1,
                            Size = UDim2.new(0, 0, 0, 0),
                            AutomaticSize = Enum.AutomaticSize.XY,
                            ZIndex = ZIndex,
                            Parent = Library.ScreenGui,
                        })

                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Vertical,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            Parent = Objects.Holder,
                            Padding = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1
                        Objects.Outline = Utility.New('Frame', {
                            Name = 'Outline',
                            BorderSizePixel = 0,
                            Size = UDim2.new(0, 0, 0, 0),
                            AutomaticSize = Enum.AutomaticSize.XY,
                            Position = UDim2.new(0, 0, 1, 0),
                            Parent = Objects.Holder,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Inline',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.Outline,
                            CornerRadius = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1
                        Objects.Background = Utility.New('Frame', {
                            Name = 'Background',
                            BorderSizePixel = 0,
                            Size = UDim2.new(1, -2, 1, -2),
                            Position = UDim2.fromOffset(1, 1),
                            Parent = Objects.Outline,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Background',
                        })

                        Utility.New('UIPadding', {
                            Name = 'UIPadding',
                            PaddingLeft = UDim.new(0, 5),
                            PaddingRight = UDim.new(0, 5),
                            PaddingTop = UDim.new(0, 5),
                            PaddingBottom = UDim.new(0, 6),
                            Parent = Objects.Background,
                        })
                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            Parent = Objects.Background,
                            CornerRadius = UDim.new(0, 5),
                        })
                        Utility.New('UIListLayout', {
                            Name = 'UIListLayout',
                            FillDirection = Enum.FillDirection.Vertical,
                            SortOrder = Enum.SortOrder.LayoutOrder,
                            Parent = Objects.Background,
                            Padding = UDim.new(0, 5),
                        })

                        ZIndex = ZIndex + 1
                        Objects.Title = Utility.New('TextLabel', {
                            Name = 'Title',
                            TextStrokeTransparency = 0.8,
                            BackgroundTransparency = 1,
                            TextSize = Library.FontSize,
                            FontFace = Library.Font,
                            Size = UDim2.new(0, 0, 0, 0),
                            Position = UDim2.new(0, 0, 0, 0),
                            AutomaticSize = Enum.AutomaticSize.XY,
                            Text = cfg.name,
                            Parent = Objects.Background,
                            ZIndex = ZIndex,
                        }, {
                            TextColor3 = 'Text',
                        })
                        ZIndex = ZIndex + 1

                        if cfg.buttons then
                            Objects.FadeHolder = Utility.New('Frame', {
                                Name = 'ButtonHolder',
                                BorderSizePixel = 0,
                                BackgroundTransparency = 1,
                                Size = UDim2.new(0, 0, 0, 0),
                                AutomaticSize = Enum.AutomaticSize.XY,
                                Parent = Objects.Holder,
                            })
                            Objects.ButtonHolder = Utility.New('Frame', {
                                Name = 'ButtonHolder',
                                BorderSizePixel = 0,
                                BackgroundTransparency = 1,
                                Size = UDim2.new(0, 0, 0, 0),
                                AutomaticSize = Enum.AutomaticSize.XY,
                                Parent = Objects.FadeHolder,
                            })

                            Utility.New('UIListLayout', {
                                Name = 'UIListLayout',
                                FillDirection = Enum.FillDirection.Horizontal,
                                SortOrder = Enum.SortOrder.LayoutOrder,
                                Parent = Objects.ButtonHolder,
                                Padding = UDim.new(0, 2),
                            })

                            ZIndex = ZIndex + 1
                        end
                        if cfg.description then
                            Objects.Description = Utility.New('TextLabel', {
                                Name = 'Description',
                                TextStrokeTransparency = 0.8,
                                BackgroundTransparency = 1,
                                TextSize = Library.FontSize - 2,
                                FontFace = Library.Font,
                                Size = UDim2.new(0, 0, 0, 0),
                                AutomaticSize = Enum.AutomaticSize.XY,
                                Text = cfg.description,
                                TextXAlignment = Enum.TextXAlignment.Left,
                                Parent = Objects.Background,
                                ZIndex = ZIndex,
                                TextWrapped = true,
                            }, {
                                TextColor3 = 'Light Text',
                            })
                            ZIndex = ZIndex + 1
                        end
                        if cfg.type == 'Time' then
                            Objects.Time = Utility.New('Frame', {
                                Name = 'Time',
                                BorderSizePixel = 0,
                                Size = UDim2.new(0, 0, 0, 2),
                                Position = UDim2.new(0, 0, 1, -2),
                                Parent = Objects.Background,
                                ZIndex = ZIndex,
                            }, {
                                BackgroundColor3 = 'Accent',
                            })
                            Objects.Time.Size = UDim2.new(0, 0, 0, 2)
                        end
                    end

                    function Notification.SetTime(time)
                        Notification.Time = time
                        Notification.Clock = os.clock()
                    end
                    function Notification.Hide()
                        Notification.Time = 0
                    end
                    function Notification.Title(text)
                        Objects.Title.Text = text
                    end
                    function Notification.Description(text)
                        Objects.Description.Text = text
                    end
                    function Notification.ButtonVisiblity(visibility)
                        Notification.ShowButtons = visibility
                    end
                    function Notification.CreateButton(bcfg)
                        bcfg = bcfg or {}
                        bcfg = Library.Config(bcfg, {
                            text = 'undefined',
                            callback = function() end,
                        })

                        local Button = Library.Button({
                            ZIndex = ZIndex,
                            Holder = Objects.ButtonHolder,
                        }, {
                            AutoSize = true,
                            Name = bcfg.text,
                            Callback = bcfg.callback,
                        })

                        table.insert(Notification.Buttons, Button)

                        return Button
                    end

                    if cfg.buttons then
                        for _, button in cfg.buttons do
                            Notification.CreateButton(button)
                        end
                    end

                    table.insert(Library.Notifications, Notification)

                    return Notification
                end
                function Library.Watermark(cfg)
                    cfg = cfg or {}
                    cfg = Library.Config(cfg, {
                        text = 'Sakura | {game} | {time} | {date}',
                        visible = true,
                        rate = 1.6666666666666665E-2,
                    })

                    local ZIndex = 100
                    local Watermark = {
                        Objects = {},
                        Visible = cfg.visible,
                        Rate = cfg.rate,
                        Text = cfg.text,
                        ZIndex = ZIndex,
                        Clock = os.clock(),
                    }
                    local Objects = Watermark.Objects

                    do
                        Objects.Outline = Utility.New('Frame', {
                            Name = 'Watermark',
                            BorderSizePixel = 0,
                            Size = UDim2.new(0, 0, 0, 0),
                            AutomaticSize = Enum.AutomaticSize.XY,
                            Position = UDim2.new(0, 10, 0, 0),
                            Parent = Library.ScreenGui,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Inline',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            CornerRadius = UDim.new(0, 5),
                            Parent = Objects.Outline,
                        })

                        ZIndex = ZIndex + 1
                        Objects.Background = Utility.New('Frame', {
                            Name = 'Background',
                            BorderSizePixel = 0,
                            Size = UDim2.new(1, -2, 1, -2),
                            Position = UDim2.new(0, 1, 0, 1),
                            Parent = Objects.Outline,
                            ZIndex = ZIndex,
                        }, {
                            BackgroundColor3 = 'Background',
                        })

                        Utility.New('UICorner', {
                            Name = 'UICorner',
                            CornerRadius = UDim.new(0, 5),
                            Parent = Objects.Background,
                        })
                        Utility.New('UIPadding', {
                            Name = 'UIPadding',
                            PaddingLeft = UDim.new(0, 5),
                            PaddingRight = UDim.new(0, 5),
                            PaddingTop = UDim.new(0, 5),
                            PaddingBottom = UDim.new(0, 7),
                            Parent = Objects.Background,
                        })

                        ZIndex = ZIndex + 1
                        Objects.Text = Utility.New('TextLabel', {
                            Name = 'Text',
                            TextStrokeTransparency = 0.8,
                            BackgroundTransparency = 1,
                            TextSize = Library.FontSize,
                            TextXAlignment = Enum.TextXAlignment.Left,
                            AutomaticSize = Enum.AutomaticSize.X,
                            FontFace = Library.Font,
                            Size = UDim2.new(0, 0, 0, 0),
                            Position = UDim2.new(0, 0, 0, 0),
                            Text = Watermark.Text,
                            Parent = Objects.Background,
                            ZIndex = ZIndex,
                        }, {
                            TextColor3 = 'Text',
                        })
                    end

                    Watermark.ZIndex = ZIndex

                    function Watermark.SetText(text)
                        Watermark.Text = text
                    end
                    function Watermark.SetVisible(visibility)
                        Watermark.Visible = visibility
                    end
                    function Watermark.SetRate(rate)
                        Watermark.Rate = rate
                    end
                    function Watermark.Think()
                        Objects.Outline.Visible = Watermark.Visible

                        if Watermark.Visible and os.clock() - Watermark.Clock >= Watermark.Rate then
                            Watermark.Clock = os.clock()
                            Objects.Text.Text = Utility.TextTriggers(Watermark.Text)
                            Objects.Text.Size = UDim2.new(0, 0, 0, Objects.Text.TextBounds.Y - 2)
                        end
                    end

                    Utility.Signal(RunService.RenderStepped:Connect(Watermark.Think))

                    return Watermark
                end
                function Library.HandleNotifications(step)
                    Library.Fps = math.floor(1 / step)

                    local Clock = os.clock()
                    local Watermark = Library.ScreenGui:FindFirstChild('Watermark')
                    local Offset = Watermark and Watermark.Visible and Watermark.AbsoluteSize.Y + 5 or 0

                    for _, notification in Library.Notifications do
                        local Objects = notification.Objects
                        local Time = notification.Time

                        if Clock - notification.Clock >= Time then
                            notification.Lerp = Utility.Lerp(notification.Lerp, 0, 0.1)
                        else
                            notification.Lerp = Utility.Lerp(notification.Lerp, 255, 0.1)
                        end

                        local Lerp = notification.Lerp
                        local Holder = Objects.Holder
                        local Outline = Objects.Outline
                        local Background = Objects.Background
                        local Title = Objects.Title

                        Holder.Position = UDim2.new(0, 10 + (-Holder.AbsoluteSize.X * (1 - (Lerp / 255))), 0, Offset)
                        Outline.BackgroundTransparency = 1 - (Lerp / 255)
                        Background.BackgroundTransparency = 1 - (Lerp / 255)
                        Title.TextTransparency = 1 - (Lerp / 255)

                        if #notification.Buttons > 0 then
                            notification.ButtonLerp = Utility.Lerp(notification.ButtonLerp, notification.ShowButtons and 255 or 0, 0.1)

                            for _, obj in Objects.ButtonHolder:GetDescendants()do
                                local Index = Utility.GetTransparency(obj)

                                if not Index then
                                end
                                if type(Index) == 'table' then
                                    if obj:IsA('TextLabel') then
                                        obj[Index[1] ] = 1 - (notification.ButtonLerp / 255)
                                    else
                                        obj[Index[1] ] = 1 - (notification.ButtonLerp / 255)
                                        obj[Index[2] ] = 1 - (notification.ButtonLerp / 255)
                                    end
                                else
                                    obj[Index] = 1 - (notification.ButtonLerp / 255)
                                end
                            end
                        end
                        if Objects.Description then
                            Objects.Description.TextTransparency = 1 - (Lerp / 255)
                        end
                        if Objects.Time then
                            Objects.Time.BackgroundTransparency = 1 - (Lerp / 255)
                            Objects.Time.Size = UDim2.new(0, (Outline.AbsoluteSize.X - 10) * math.clamp(((notification.Clock - Clock) / notification.Time) * 
-1, 0, 1), 0, 2)
                        end

                        Offset = Offset + (Holder.AbsoluteSize.Y + 5) * (Lerp / 255)

                        if Lerp <= 0 then
                            Holder:Destroy()
                            table.remove(Library.Notifications, table.find(Library.Notifications, notification))
                        end
                    end
                end

                Utility.Signal(RunService.RenderStepped:Connect(Library.HandleNotifications))

                local XOR_PASSWORD = '32visionSymbol'

                local function xorEncrypt(data, password)
                    local encrypted = ''
                    local passLen = #password

                    for i = 1, #data do
                        local byte = string.byte(data, i)
                        local keyByte = string.byte(password, ((i - 1) % passLen) + 1)

                        encrypted = encrypted .. string.char(bit32.bxor(byte, keyByte))
                    end

                    return encrypted
                end
                local function xorDecrypt(data, password)
                    return xorEncrypt(data, password)
                end
                local function bytesToHex(data)
                    local hex = ''

                    for i = 1, #data do
                        hex = hex .. string.format('%02x', string.byte(data, i))
                    end

                    return hex
                end
                local function hexToBytes(hex)
                    local data = ''

                    for i = 1, #hex, 2 do
                        data = data .. string.char(tonumber(hex:sub(i, i + 1), 16))
                    end

                    return data
                end

                function Library.GetConfig()
                    local Config = {}

                    for _, v in Library.ConfigFlags do
                        local Value = Library.Flags[_]

                        if type(Value) == 'table' and Value['key'] then
                            Config[_] = {
                                value = Value.value,
                                mode = Value.mode,
                                key = tostring(Value.key),
                            }
                        elseif type(Value) == 'table' and Value['a'] and Value['c'] then
                            Config[_] = {
                                a = Value.a,
                                c = Value.c:ToHex(),
                            }
                        else
                            Config[_] = Value
                        end
                    end

                    local jsonData = HttpService:JSONEncode(Config)
                    local encrypted = xorEncrypt(jsonData, XOR_PASSWORD)

                    return bytesToHex(encrypted)
                end
                function Library.LoadConfig(data)
                    data = hexToBytes(data)
                    data = xorDecrypt(data, XOR_PASSWORD)
                    data = HttpService:JSONDecode(data)

                    for i, v in data do
                        local Config = Library.ConfigFlags[i]

                        if Config then
                            if type(v) == 'table' and v['a'] and v['c'] then
                                Config({
                                    a = v.a,
                                    c = type(v.c) == 'string' and Color3.fromHex(v.c) or v.c,
                                })
                            elseif type(v) == 'table' and v['key'] then
                                Config({
                                    value = v.value,
                                    mode = v.mode,
                                    key = Utility.StringToEnum(v.key),
                                }, true)
                            else
                                Config(v)
                            end
                        end
                        if Library.LoadConfigCallbacks[i] then
                            pcall(function()
                                Library.LoadConfigCallbacks[i](v)
                            end)
                        end
                    end
                end
                function Library.CreateConfigManager(tab, options)
                    if not tab or type(tab) ~= 'table' then
                        return nil
                    end

                    options = options or {}

                    local side = options.side or 'left'
                    local sectionName = options.name or 'Config Manager'
                    local sectionDesc = options.description or 'Save and load your configurations'
                    local folderPath = options.folderPath or (Folder .. '/Games/' .. (Game and Game.Name or 'Universal') .. '/Configs')
                    local ZIndex = (tab.ZIndex or 0) + 1

                    if not isfolder(folderPath) then
                        makefolder(folderPath)
                    end

                    local ConfigSection = tab:Section({
                        name = sectionName,
                        description = sectionDesc,
                        side = side,
                    })
                    local configNameTextbox = ConfigSection:Textbox({
                        name = 'Config Name',
                        placeholder = 'Enter config name...',
                        flag = 'ui_config_name',
                    })

                    local function GetConfigList()
                        local configs = {}

                        if isfolder(folderPath) then
                            for _, file in ipairs(listfiles(folderPath))do
                                if file:sub(-5) == '.json' then
                                    local configName = file:match('([^/\\]+)%.json$')

                                    table.insert(configs, configName)
                                end
                            end
                        end
                        if #configs == 0 then
                            return {
                                'No configs found',
                            }
                        end

                        return configs
                    end

                    local configListDropdown = ConfigSection:Dropdown({
                        name = 'Saved Configs',
                        description = 'Select a saved configuration',
                        values = GetConfigList(),
                        callback = function(value)
                            if value ~= 'No configs found' then
                                Library.Flags['ui_config_name'] = value
                            end
                        end,
                        flag = 'ui_selected_config',
                    })

                    local function RefreshConfigList()
                        if configListDropdown and type(configListDropdown) == 'table' then
                            local configs = GetConfigList()

                            if configListDropdown.Refresh and type(configListDropdown.Refresh) == 'function' then
                                configListDropdown:Refresh(configs)
                            end
                            if #configs > 0 and configs[1] ~= 'No configs found' then
                                Library.Flags['ui_selected_config'] = configs[1]
                            else
                                Library.Flags['ui_selected_config'] = 'No configs found'
                            end

                            pcall(function()
                                if Library.Flags['ui_selected_config'] and configListDropdown.Update then
                                    configListDropdown:Update(Library.Flags['ui_selected_config'])
                                end
                            end)
                        end
                    end

                    ConfigSection:Button({
                        name = 'Save Config',
                        description = 'Save current settings to a config file',
                        callback = function()
                            local configName = Library.Flags['ui_config_name']

                            if not configName or configName == '' or configName == 'No configs found' then
                                configName = 'default'
                            end

                            local configPath = folderPath .. '/' .. configName .. '.json'
                            local configData = Library.GetConfig()

                            writefile(configPath, configData)
                            Library.Notification({
                                name = 'Config Saved',
                                description = "Configuration '" .. configName .. "' has been saved.",
                            })
                            RefreshConfigList()
                        end,
                    })
                    ConfigSection:Button({
                        name = 'Load Config',
                        description = 'Load selected configuration',
                        callback = function()
                            local configName = Library.Flags['ui_selected_config']

                            if not configName or configName == 'No configs found' then
                                Library.Notification({
                                    name = 'Error',
                                    description = 'No config selected',
                                })

                                return
                            end

                            local configPath = folderPath .. '/' .. configName .. '.json'

                            if isfile(configPath) then
                                local data = readfile(configPath)

                                Library.LoadConfig(data)
                                Library.Notification({
                                    name = 'Config Loaded',
                                    description = "Configuration '" .. configName .. "' has been loaded.",
                                })
                            else
                                Library.Notification({
                                    name = 'Error',
                                    description = 'Config file not found',
                                })
                            end
                        end,
                    })
                    ConfigSection:Button({
                        name = 'Delete Config',
                        description = 'Delete selected configuration',
                        callback = function()
                            local configName = Library.Flags['ui_selected_config']

                            if not configName or configName == 'No configs found' then
                                Library.Notification({
                                    name = 'Error',
                                    description = 'No config selected',
                                })

                                return
                            end

                            local configPath = folderPath .. '/' .. configName .. '.json'

                            if isfile(configPath) then
                                delfile(configPath)
                                Library.Notification({
                                    name = 'Config Deleted',
                                    description = "Configuration '" .. configName .. "' has been deleted.",
                                })
                                RefreshConfigList()
                            else
                                Library.Notification({
                                    name = 'Error',
                                    description = 'Config file not found',
                                })
                            end
                        end,
                    })
                    ConfigSection:Button({
                        name = 'Refresh List',
                        description = 'Refresh the config list',
                        callback = function()
                            RefreshConfigList()
                            Library.Notification({
                                name = 'List Refreshed',
                                description = 'Config list has been updated.',
                            })
                        end,
                    })

                    return {
                        Section = ConfigSection,
                        RefreshList = RefreshConfigList,
                    }
                end
                function Library.Unload()
                    for _, obj in Utility.Connections do
                        obj:Disconnect()
                    end
                    for _, obj in Utility.Objects do
                        obj:Destroy()
                    end

                    Env.Library = nil
                end

                Bin:add(function()
                    Library.Unload()
                end)
            end

            Env.Library = Library

            local Debugging = {}

            do
                Debugging.Enabled = false

                function Debugging.Log(...)
                    if not Debugging.Enabled then
                        return
                    end

                    print(string.format('[DEBUG] (%s)', os.date('%X')), ...)
                end
                function Debugging.Warn(...)
                    if not Debugging.Enabled then
                        return
                    end

                    warn(string.format('[DEBUG] (%s)', os.date('%X')), ...)
                end
                function Debugging.Error(...)
                    if not Debugging.Enabled then
                        return
                    end

                    error(string.format('[DEBUG] (%s)', os.date('%X')), ...)
                end
            end

            Env.Sakura.Debugging = Debugging

            local Signal = {}

            Signal.__index = Signal

            do
                Signal.ClassName = 'Signal'

                function Signal.new()
                    local self = setmetatable({}, Signal)

                    self._bindableEvent = Instance.new('BindableEvent')
                    self._argMap = {}
                    self._source = ''

                    self._bindableEvent.Event:Connect(function(key)
                        self._argMap[key] = nil

                        if (not self._bindableEvent) and (not next(self._argMap)) then
                            self._argMap = nil
                        end
                    end)

                    return self
                end
                function Signal:Fire(...)
                    if not self._bindableEvent then
                        return
                    end

                    local args = {...}
                    local key = 1 + #self._argMap

                    self._argMap[key] = args

                    self._bindableEvent:Fire(key)
                end
                function Signal:Connect(handler)
                    if not (type(handler) == 'function') then
                        error(('connect(%s)'):format(typeof(handler)), 2)
                    end

                    return self._bindableEvent.Event:Connect(function(key)
                        handler(unpack(self._argMap[key]))
                    end)
                end
                function Signal:Wait()
                    local key = self._bindableEvent.Event:Wait()
                    local args = self._argMap[key]

                    if args then
                        return unpack(args)
                    else
                        error('Missing arg data, probably due to reentrance.')

                        return nil
                    end
                end
                function Signal:Destroy()
                    if self._bindableEvent then
                        self._bindableEvent:Destroy()

                        self._bindableEvent = nil
                    end

                    setmetatable(self, nil)
                end

                Signal.Disconnect = Signal.Destroy
            end

            Env.Sakura.Signal = Signal

            local PlayerInfo = {Info = {}}

            do
                PlayerInfo.PlayerAdded = Signal.new()
                PlayerInfo.PlayerRemoved = Signal.new()

                function PlayerInfo.GetPlayers()
                    return Game and Game.GetPlayers and Game.GetPlayers() or Players:GetPlayers()
                end
                function PlayerInfo.GetInfo(player)
                    return PlayerInfo.Info[player]
                end
                function PlayerInfo.RegisterPlayer(player)
                    local Struct = {}
                    local IsPlayer = player:IsA('Player')

                    Struct.Data = {
                        Name = player.Name,
                        Team = nil,
                        DisplayName = IsPlayer and player.DisplayName or player.Name,
                        Health = 0,
                        MaxHealth = 100,
                        Alive = false,
                        Character = nil,
                        Torso = nil,
                        Tool = nil,
                        IsTeammate = false,
                    }

                    local Data = Struct.Data

                    Data.Spawned = Signal.new()
                    Data.Died = Signal.new()
                    Data.IsPlayer = IsPlayer
                    Struct.Step = Utility.Connect(RunService.Heartbeat:Connect(LPH_NO_VIRTUALIZE(function(
                    )
                        local Character = Data.IsPlayer and player.Character or player

                        Data.Character = Character
                        Data.Torso = Character and Character:FindFirstChild('HumanoidRootPart')
                        Data.Head = Character and Character:FindFirstChild('Head')
                        Data.Alive = Data.Character and Data.Torso
                        Data.Tool = Character and Character:FindFirstChildOfClass('Tool') and Character:FindFirstChildOfClass('Tool').Name
                        Data.Health = Character and Character:FindFirstChild('Humanoid') and Character.Humanoid.Health
                        Data.MaxHealth = Character and Character:FindFirstChild('Humanoid') and Character.Humanoid.MaxHealth

                        if Data.IsPlayer then
                            Data.Team = player.Team
                            Data.IsTeammate = Data.Team == LocalPlayer.Team
                        end
                        if Game and Game.GetInfo then
                            Game.GetInfo(Data, player, Character)
                        end
                        if Data.Health then
                            Data.Health = math.clamp(Data.Health, 0, math.huge)
                        end
                    end)))
                    Struct.Destroy = function()
                        Struct.Step:Disconnect()
                        PlayerInfo.PlayerRemoved:Fire(player, Data.IsPlayer)

                        PlayerInfo.Info[player] = nil
                    end
                    Struct.Spawned = function()
                        Data.Alive = true

                        Data.Spawned:Fire()
                    end
                    Struct.Died = function()
                        Data.Alive = false

                        Data.Died:Fire()
                    end
                    PlayerInfo.Info[player] = Struct

                    PlayerInfo.PlayerAdded:Fire(player, Data.IsPlayer)
                    Debugging.Log('PlayerInfo', 'RegisterPlayer', player)
                end
                function PlayerInfo.RemovePlayer(player)
                    local Info = PlayerInfo.Info[player]

                    if Info then
                        Info.Destroy()
                        Debugging.Log('PlayerInfo', 'RemovePlayer', player)
                    end
                end

                for _, player in PlayerInfo.GetPlayers()do
                    PlayerInfo.RegisterPlayer(player)
                end

                Utility.Connect(Players.PlayerAdded:Connect(function(player)
                    PlayerInfo.RegisterPlayer(player)
                end))
                Utility.Connect(Players.PlayerRemoving:Connect(function(player)
                    PlayerInfo.RemovePlayer(player)
                end))
            end

            Env.Sakura.PlayerInfo = PlayerInfo

            local LocalPlayerData

            Utility.Connect(RunService.Heartbeat:Connect(LPH_NO_VIRTUALIZE(function(
            )
                LocalPlayerData = PlayerInfo.GetInfo(LocalPlayer)
            end)))

            return Library
        end

        function __M.c(): typeof(__modImpl())
            local v = __M.cache.c

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.c = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(api)
                local rnd = api.rnd
                local LoopManager = {
                    RenderStepped = {
                        Functions = {},
                        Connection = nil,
                    },
                    Heartbeat = {
                        Functions = {},
                        Connection = nil,
                    },
                }

                function LoopManager:AddRenderStepped(name, func)
                    if self.RenderStepped.Functions[name] then
                        warn("[LoopManager] RenderStepped function '" .. name .. "' already exists, overwriting")
                    end

                    self.RenderStepped.Functions[name] = func
                end
                function LoopManager:AddHeartbeat(name, func)
                    if self.Heartbeat.Functions[name] then
                        warn("[LoopManager] Heartbeat function '" .. name .. "' already exists, overwriting")
                    end

                    self.Heartbeat.Functions[name] = func
                end
                function LoopManager:RemoveRenderStepped(name)
                    if not self.RenderStepped.Functions[name] then
                        warn("[LoopManager] RenderStepped function '" .. name .. "' not found")

                        return
                    end

                    self.RenderStepped.Functions[name] = nil
                end
                function LoopManager:RemoveHeartbeat(name)
                    if not self.Heartbeat.Functions[name] then
                        warn("[LoopManager] Heartbeat function '" .. name .. "' not found")

                        return
                    end

                    self.Heartbeat.Functions[name] = nil
                end
                function LoopManager:GetRenderStepped(name)
                    return self.RenderStepped.Functions[name] or nil
                end
                function LoopManager:GetHeartbeat(name)
                    return self.Heartbeat.Functions[name] or nil
                end

                LoopManager.RenderStepped.Connection = rnd.RenderStepped:Connect(LPH_NO_VIRTUALIZE(function(
                )
                    for name, func in pairs(LoopManager.RenderStepped.Functions)do
                        local ok, err = pcall(func)

                        if not ok then
                            warn("[LoopManager] RenderStepped error in '" .. name .. "': " .. tostring(err))
                        end
                    end
                end))
                LoopManager.Heartbeat.Connection = rnd.Heartbeat:Connect(LPH_NO_VIRTUALIZE(function(
                )
                    for name, func in pairs(LoopManager.Heartbeat.Functions)do
                        local ok, err = pcall(func)

                        if not ok then
                            warn("[LoopManager] Heartbeat error in '" .. name .. "': " .. tostring(err))
                        end
                    end
                end))

                return LoopManager
            end
        end

        function __M.d(): typeof(__modImpl())
            local v = __M.cache.d

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.d = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(vars)
                local plrs, ws, cam, lp = vars.plr, vars.ws, vars.cam, vars.lp
                local huge, floor, insert, sort = vars.huge, vars.floor, vars.insert, vars.sort
                local input = vars.input
                local targeting = {
                    target = nil,
                    targetPlayer = nil,
                    charConn = nil,
                    removeConn = nil,
                    OnTargetSet = nil,
                    OnTargetLeft = nil,
                }

                local function isOnScreen(pos)
                    local _, onScreen = cam:WorldToViewportPoint(pos)

                    return onScreen
                end
                local function hasWall(origin, char)
                    if not char or not char:FindFirstChild('HumanoidRootPart') then
                        return true
                    end

                    local params = RaycastParams.new()

                    params.FilterType = Enum.RaycastFilterType.Blacklist
                    params.FilterDescendantsInstances = {
                        lp.Character,
                        char,
                    }

                    local dir = (char.HumanoidRootPart.Position - origin).Unit * 500

                    return ws:Raycast(origin, dir, params) ~= nil
                end
                local function getDist(char, mode)
                    if not char or not char:FindFirstChild('HumanoidRootPart') then
                        return huge
                    end
                    if mode == '3D' then
                        if not lp.Character or not lp.Character:FindFirstChild('HumanoidRootPart') then
                            return huge
                        end

                        return (lp.Character.HumanoidRootPart.Position - char.HumanoidRootPart.Position).Magnitude
                    else
                        local hrp = char.HumanoidRootPart
                        local screenPos, onScreen = cam:WorldToViewportPoint(hrp.Position)

                        if not onScreen then
                            return huge
                        end

                        local mousePos = input:GetMouseLocation()
                        local targetPos = Vector2.new(screenPos.X, screenPos.Y)

                        return (mousePos - targetPos).Magnitude
                    end
                end
                local function checkFilters(char, filters)
                    if not char then
                        return false
                    end

                    local hrp = char:FindFirstChild('HumanoidRootPart')

                    if not hrp then
                        return false
                    end

                    return true
                end

                local defaultFilters = {
                    SkipFF = true,
                    SkipKO = true,
                    SkipDead = true,
                    SkipGrabbed = true,
                }

                function targeting:SetTarget(source, filters)
                    filters = filters or defaultFilters

                    local char

                    if type(source) == 'string' then
                        local player = plrs:FindFirstChild(source)

                        if player and player.Character then
                            char = player.Character
                        end
                    else
                        local closestDist, closest = huge

                        for _, p in pairs(plrs:GetPlayers())do
                            if p ~= lp and p.Character and checkFilters(p.Character, filters) then
                                local dist = getDist(p.Character)

                                if dist < closestDist then
                                    closestDist = dist
                                    closest = p.Character
                                end
                            end
                        end

                        char = closest
                    end
                    if not char then
                        return false
                    end

                    self.target = char

                    local player

                    for _, p in pairs(plrs:GetPlayers())do
                        if p.Character == char then
                            player = p

                            break
                        end
                    end

                    self.targetPlayer = player

                    if player then
                        self:setupCharTracking(player)

                        if self.OnTargetSet then
                            self.OnTargetSet(player.Name)
                        end
                    end

                    return true
                end
                function targeting:ClearTarget(playerLeft)
                    if self.charConn then
                        self.charConn:Disconnect()

                        self.charConn = nil
                    end
                    if self.removeConn then
                        self.removeConn:Disconnect()

                        self.removeConn = nil
                    end

                    local hadTarget = self.targetPlayer ~= nil

                    self.target = nil
                    self.targetPlayer = nil

                    if hadTarget then
                        if playerLeft and self.OnTargetLeft then
                            self.OnTargetLeft()
                        elseif self.OnTargetSet then
                            self.OnTargetSet(nil)
                        end
                    end
                end
                function targeting:IsTargetValid()
                    if not self.targetPlayer then
                        return false
                    end
                    if not self.targetPlayer.Parent then
                        self:ClearTarget()

                        return false
                    end

                    local char = self.targetPlayer.Character

                    if char and char.Parent then
                        self.target = char

                        return true
                    end

                    return false
                end
                function targeting:GetTargetInfo(infoTypes)
                    if not self:IsTargetValid() then
                        return nil
                    end

                    infoTypes = infoTypes or {
                        'all',
                    }

                    local hum = self.target:FindFirstChildOfClass('Humanoid')
                    local bodyEffects = self.target:FindFirstChild('BodyEffects')
                    local hrp = self.target:FindFirstChild('HumanoidRootPart')
                    local player = self.targetPlayer
                    local info = {}
                    local isAll = infoTypes[1] == 'all'
                    local types = {}

                    for _, t in pairs(infoTypes)do
                        types[t] = true
                    end

                    if isAll or types['basic'] then
                        info.Character = self.target
                        info.Player = player
                        info.PlayerName = player and player.Name or 'Unknown'
                    end
                    if isAll or types['health'] then
                        info.HP = hum and floor(hum.Health) or 0
                        info.MaxHP = hum and floor(hum.MaxHealth) or 0
                    end
                    if isAll or types['position'] then
                        info.HRP = hrp
                        info.Coords = hrp and hrp.Position or Vector3.new(0, 0, 0)
                    end
                    if isAll or types['distance'] then
                        info.Distance = getDist(self.target, '3D')
                        info.MouseDistance = getDist(self.target)
                    end
                    if isAll or types['visibility'] then
                        info.OnScreen = hrp and isOnScreen(hrp.Position) or false
                        info.HasWall = hrp and lp.Character and hasWall(lp.Character.HumanoidRootPart.Position, self.target) or false
                    end
                    if isAll or types['state'] then
                        info.IsKO = (bodyEffects and bodyEffects:FindFirstChild('K.O') and bodyEffects['K.O'].Value) or (hum and hum.Health <= 0)
                        info.IsDead = bodyEffects and bodyEffects:FindFirstChild('SDeath') and bodyEffects.SDeath.Value
                        info.IsGrabbed = self.target:FindFirstChild('GRABBING_CONSTRAINT') ~= nil
                        info.HasFF = (self.target:FindFirstChild('ForceField') or self.target:FindFirstChild('ForceField_TESTING')) ~= nil
                    end
                    if isAll or types['effects'] then
                        info.BodyEffects = bodyEffects
                    end

                    return info
                end
                function targeting:GetTargetPlayer()
                    if not self.target then
                        return nil
                    end

                    for _, p in pairs(plrs:GetPlayers())do
                        if p.Character == self.target then
                            return p
                        end
                    end

                    return nil
                end
                function targeting:setupCharTracking(player)
                    if self.charConn then
                        self.charConn:Disconnect()

                        self.charConn = nil
                    end
                    if self.removeConn then
                        self.removeConn:Disconnect()

                        self.removeConn = nil
                    end

                    self.targetPlayer = player
                    self.charConn = player.CharacterAdded:Connect(function(
                        newChar
                    )
                        self.target = newChar
                    end)
                    self.removeConn = plrs.PlayerRemoving:Connect(function(p)
                        if p == self.targetPlayer then
                            self:ClearTarget(true)
                        end
                    end)
                end

                return targeting
            end
        end

        function __M.e(): typeof(__modImpl())
            local v = __M.cache.e

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.e = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(api)
                local desync = {}
                local lp, runService = api.lp, api.runService
                local cf = CFrame.new
                local typeof = typeof
                local hookmetamethod, newcclosure, checkcaller = hookmetamethod, newcclosure, checkcaller
                local state = {
                    enabled = false,
                    target = nil,
                    real = nil,
                    hooked = false,
                    follow = false,
                    conn = nil,
                    priority = 0,
                    priorityOwner = nil,
                    lastSyncTime = 0,
                    syncCooldown = 0,
                }

                do
                    function desync:validate()
                        local char = lp.Character

                        if not char then
                            return false
                        end

                        local hum = char:FindFirstChildOfClass('Humanoid')

                        if not hum or hum.Health <= 0 then
                            return false
                        end

                        return hum.RootPart ~= nil
                    end
                    function desync:getRoot()
                        local char = lp.Character

                        if not char then
                            return nil
                        end

                        local hum = char:FindFirstChildOfClass('Humanoid')

                        return hum and hum.RootPart
                    end
                    function desync:parseCF(arg1, arg2, arg3)
                        local t = typeof(arg1)

                        if t == 'CFrame' then
                            return arg1
                        elseif t == 'Vector3' then
                            return cf(arg1.X, arg1.Y, arg1.Z)
                        elseif t == 'table' and arg1[1] and arg1[2] and arg1[3] then
                            return cf(arg1[1], arg1[2], arg1[3])
                        elseif t == 'number' and type(arg2) == 'number' and type(arg3) == 'number' then
                            return cf(arg1, arg2, arg3)
                        end

                        return nil
                    end
                end
                do
                    local function install()
                        if state.hooked then
                            return
                        end
                        if not hookmetamethod or not newcclosure or not checkcaller then
                            state.hooked = true

                            return
                        end

                        local old
                        local hookFunction = newcclosure(LPH_NO_VIRTUALIZE(function(
                            self,
                            key
                        )
                            if not checkcaller() and key == 'CFrame' and state.enabled then
                                local root = desync:getRoot()

                                if root and self == root and state.real then
                                    return state.real
                                end
                            end

                            return old(self, key)
                        end))

                        old = hookmetamethod(game, '__index', hookFunction)
                        state.hooked = true
                    end

                    function desync:installHook()
                        install()
                    end
                end
                do
                    local function start()
                        if state.conn then
                            return
                        end

                        state.conn = runService.Heartbeat:Connect(LPH_NO_VIRTUALIZE(function(
                        )
                            if not state.enabled then
                                if state.conn then
                                    state.conn:Disconnect()

                                    state.conn = nil
                                end

                                return
                            end
                            if not desync:validate() then
                                return
                            end

                            local root = desync:getRoot()

                            if not root then
                                return
                            end

                            state.real = root.CFrame

                            local targetCF = state.follow and root.CFrame or (state.target or state.real)

                            root.CFrame = targetCF

                            runService.RenderStepped:Wait()

                            root.CFrame = state.real
                        end))
                    end

                    function desync:startLoop()
                        start()
                    end
                end

                function desync:setPriority(priority, owner)
                    state.priority = priority
                    state.priorityOwner = owner
                end
                function desync:getPriority()
                    return state.priority, state.priorityOwner
                end
                function desync:canMove(priority, owner)
                    local currentTime = tick()

                    if currentTime - state.lastSyncTime < state.syncCooldown then
                        return false
                    end
                    if state.priority == 0 then
                        return true
                    end
                    if priority > state.priority then
                        return true
                    end
                    if priority == state.priority and state.priorityOwner == owner then
                        return true
                    end

                    return false
                end
                function desync:moveTo(arg1, arg2, arg3, priority, owner)
                    priority = priority or 0
                    owner = owner or 'unknown'

                    if not self:canMove(priority, owner) then
                        return nil
                    end

                    local targetCF = self:parseCF(arg1, arg2, arg3)

                    if not targetCF then
                        return nil
                    end

                    state.target = targetCF
                    state.follow = false
                    state.enabled = true
                    state.priority = priority
                    state.priorityOwner = owner

                    self:installHook()
                    self:startLoop()

                    return targetCF
                end
                function desync:syncWithPlayer(syncCooldown)
                    if not self:validate() then
                        return nil
                    end

                    state.target = nil
                    state.follow = true
                    state.enabled = true
                    state.priority = 0
                    state.priorityOwner = nil
                    state.lastSyncTime = tick()
                    state.syncCooldown = syncCooldown or 0

                    self:installHook()
                    self:startLoop()

                    local root = self:getRoot()

                    return root and root.CFrame or nil
                end
                function desync:stop()
                    state.enabled = false
                    state.target = nil
                    state.follow = false

                    if state.conn then
                        pcall(function()
                            state.conn:Disconnect()
                        end)

                        state.conn = nil
                    end
                end
                function desync:isEnabled()
                    return state.enabled
                end
                function desync:getPosition()
                    return state.target and state.target.Position or (self:getRoot() and self:getRoot().Position)
                end
                function desync:getState()
                    return state.enabled
                end
                function desync:moveDesyncTo(arg1, arg2, arg3, priority, owner)
                    return self:moveTo(arg1, arg2, arg3, priority, owner)
                end
                function desync:synchronizeSyncWithPlayer()
                    return self:syncWithPlayer()
                end

                return desync
            end
        end

        function __M.f(): typeof(__modImpl())
            local v = __M.cache.f

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.f = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(api)
                local general = {}
                local targeting, cam, input, lp, loopManager, lib = api.targeting, api.camera, api.userinput, api.lp, api.loopManager, api.lib
                local cache = __M.a()
                local tracer_outline, tracer_main = Drawing.new('Line'), Drawing.new('Line')
                local circle_lines, highlight = {}
                local circle_c1, circle_c2, circle_c3, circle_c4, circle_speed = Color3.fromRGB(255, 0, 0), Color3.fromRGB(0, 255, 0), Color3.fromRGB(0, 0, 255), Color3.fromRGB(255, 255, 0), 0.25
                local tracerSmooth, tracerLastTo = false
                local tracerSmoothType, tracerCustomDelay = 'ping', 200

                tracer_outline.Visible, tracer_outline.Color, tracer_outline.Thickness, tracer_outline.Transparency = false, Color3.fromRGB(0, 0, 0), 3, 1
                tracer_main.Visible, tracer_main.Color, tracer_main.Thickness, tracer_main.Transparency = false, Color3.fromRGB(255, 255, 255), 1.5, 1

                local function lerp(a, b, t)
                    return a + (b - a) * t
                end
                local function lerpVec2(a, b, t)
                    return Vector2.new(a.X + (b.X - a.X) * t, a.Y + (b.Y - a.Y) * t)
                end
                local function getTracerSmoothFactor()
                    if tracerSmoothType == 'ping' then
                        return math.clamp(cache.getPingMs() / 1000, 0.05, 0.5)
                    else
                        return tracerCustomDelay / 1000
                    end
                end
                local function col_lerp(a, b, t)
                    return Color3.new(lerp(a.R, b.R, t), lerp(a.G, b.G, t), lerp(a.B, b.B, t))
                end
                local function get_circle_col(t)
                    t = (t + tick() * circle_speed) % 1

                    if t < 0.25 then
                        return col_lerp(circle_c1, circle_c2, t * 4)
                    elseif t < 0.5 then
                        return col_lerp(circle_c2, circle_c3, (t - 0.25) * 4)
                    elseif t < 0.75 then
                        return col_lerp(circle_c3, circle_c4, (t - 0.5) * 4)
                    else
                        return col_lerp(circle_c4, circle_c1, (t - 0.75) * 4)
                    end
                end

                loopManager:AddHeartbeat('general', function()
                    local isTargetAlive = targeting.target and targeting.target:FindFirstChildOfClass('Humanoid') and targeting.target:FindFirstChildOfClass('Humanoid').Health > 0

                    if lib.Flags.visualise_view then
                        local target = isTargetAlive and targeting.target or nil

                        if target and target:FindFirstChild('Humanoid') then
                            cam.CameraSubject = target.Humanoid
                        elseif lp.Character and lp.Character:FindFirstChild('Humanoid') then
                            cam.CameraSubject = lp.Character.Humanoid
                        end
                    else
                        if lp.Character and lp.Character:FindFirstChild('Humanoid') then
                            cam.CameraSubject = lp.Character.Humanoid
                        end
                    end
                    if lib.Flags.visualise_tracer then
                        local target, destPart = isTargetAlive and targeting.target or nil

                        if target then
                            destPart = target:FindFirstChild(lib.Flags.tracer_destination or 'HumanoidRootPart')
                        end
                        if destPart then
                            local screenPos, onScreen = cam:WorldToViewportPoint(destPart.Position)

                            if onScreen and screenPos.Z > 0 then
                                local origin = lib.Flags.tracer_origin or 'mouse'
                                local vp = cam.ViewportSize
                                local fromPos = origin == 'mouse' and input:GetMouseLocation() or origin == 'center' and Vector2.new(vp.X / 2, vp.Y / 2) or origin == 'top' and Vector2.new(vp.X / 2, 0) or Vector2.new(vp.X / 2, vp.Y)
                                local targetTo = Vector2.new(screenPos.X, screenPos.Y)

                                if tracerSmooth and tracerLastTo then
                                    local factor = math.clamp(getTracerSmoothFactor(), 0.05, 0.5)

                                    targetTo = lerpVec2(tracerLastTo, targetTo, factor)
                                end

                                tracerLastTo = targetTo
                                tracer_outline.From, tracer_outline.To, tracer_outline.Visible = fromPos, targetTo, true
                                tracer_main.From, tracer_main.To, tracer_main.Visible = fromPos, targetTo, true
                            else
                                tracer_outline.Visible, tracer_main.Visible = false, false
                                tracerLastTo = nil
                            end
                        else
                            tracer_outline.Visible, tracer_main.Visible = false, false
                            tracerLastTo = nil
                        end
                    else
                        tracer_outline.Visible, tracer_main.Visible = false, false
                        tracerLastTo = nil
                    end
                    if lib.Flags.visualise_highlight then
                        local target = isTargetAlive and targeting.target or nil

                        if target then
                            if not highlight or highlight.Parent ~= target then
                                if highlight then
                                    highlight:Destroy()
                                end

                                highlight = Instance.new('Highlight')
                                highlight.Adornee, highlight.FillColor, highlight.FillTransparency = target, lib.Flags.highlight_fill_color or Color3.fromRGB(255, 255, 255), lib.Flags.highlight_fill_alpha or 0.5
                                highlight.OutlineColor, highlight.OutlineTransparency, highlight.DepthMode = lib.Flags.highlight_outline_color or Color3.fromRGB(0, 0, 0), lib.Flags.highlight_outline_alpha or 0, Enum.HighlightDepthMode.AlwaysOnTop
                                highlight.Parent = target
                            end
                        else
                            if highlight then
                                highlight:Destroy()

                                highlight = nil
                            end
                        end
                    else
                        if highlight then
                            highlight:Destroy()

                            highlight = nil
                        end
                    end
                    if lib.Flags.visualise_circle then
                        local target = isTargetAlive and targeting.target or nil

                        if target then
                            local root = target:FindFirstChild('HumanoidRootPart')

                            if root then
                                local radius, thick, rotSpeed = lib.Flags.circle_radius or 2, lib.Flags.circle_thickness or 2.5, lib.Flags.circle_rotspeed or 3
                                local visible, angleOffset = (lib.Flags.circle_visible or 35) / 100, (tick() * rotSpeed) % (math.pi * 2)

                                for i = 1, 60 do
                                    local f = i / 60

                                    if f > visible then
                                        if circle_lines[i] then
                                            circle_lines[i].Visible = false
                                        end

                                        return
                                    end

                                    local line = circle_lines[i] or Drawing.new('Line')

                                    circle_lines[i] = line
                                    line.Thickness, line.Color = thick, get_circle_col(f)

                                    local a, b = f * math.pi * 2 + angleOffset, (i + 1) / 60 * math.pi * 2 + angleOffset
                                    local p1, p2 = root.Position + Vector3.new(math.cos(a), 0, math.sin(a)) * radius, root.Position + Vector3.new(math.cos(b), 0, math.sin(b)) * radius
                                    local s1, s2 = cam:WorldToViewportPoint(p1), cam:WorldToViewportPoint(p2)

                                    line.From, line.To = Vector2.new(s1.X, s1.Y), Vector2.new(s2.X, s2.Y)

                                    local d1, d2 = f * 60, visible * 60 - f * 60

                                    line.Transparency, line.Visible = (d1 < 7 and d1 / 7) or (d2 < 7 and d2 / 7) or 1, true
                                end
                            else
                                for _, l in circle_lines do
                                    if l then
                                        l.Visible = false
                                    end
                                end
                            end
                        else
                            for _, l in circle_lines do
                                if l then
                                    l.Visible = false
                                end
                            end
                        end
                    end
                    if lib.Flags.visualise_lookat then
                        local target = isTargetAlive and targeting.target or nil

                        if target and lp.Character then
                            local root = lp.Character:FindFirstChild('HumanoidRootPart')
                            local targetRoot = target:FindFirstChild('HumanoidRootPart')

                            if root and targetRoot then
                                local dir = (targetRoot.Position - root.Position).Unit
                                local angle = math.atan2(dir.X, dir.Z)

                                root.CFrame = root.CFrame * CFrame.Angles(0, angle - math.atan2(root.CFrame.LookVector.X, root.CFrame.LookVector.Z), 0)
                            end
                        end
                    end
                end)

                function general:setTracerSmooth(v)
                    tracerSmooth = v
                    tracerLastTo = nil
                end
                function general:setTracerSmoothType(t)
                    tracerSmoothType = t
                end
                function general:setTracerCustomDelay(d)
                    tracerCustomDelay = d
                end
                function general:setTracerOutlineColor(c, a)
                    tracer_outline.Color, tracer_outline.Transparency = c, 1 - a
                end
                function general:setTracerMainColor(c, a)
                    tracer_main.Color, tracer_main.Transparency = c, 1 - a
                end
                function general:setTracerOutlineThickness(t)
                    tracer_outline.Thickness = t
                end
                function general:setTracerMainThickness(t)
                    tracer_main.Thickness = t
                end
                function general:setHighlightFillColor(c, a)
                    if highlight then
                        highlight.FillColor, highlight.FillTransparency = c, a
                    end
                end
                function general:setHighlightOutlineColor(c, a)
                    if highlight then
                        highlight.OutlineColor, highlight.OutlineTransparency = c, a
                    end
                end
                function general:setCircleColor(c)
                    circle_c1 = c
                end
                function general:setCircleColor2(c)
                    circle_c2 = c
                end
                function general:setCircleColor3(c)
                    circle_c3 = c
                end
                function general:setCircleColor4(c)
                    circle_c4 = c
                end
                function general:setCircleSpeed(s)
                    circle_speed = s
                end

                return general
            end
        end

        function __M.g(): typeof(__modImpl())
            local v = __M.cache.g

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.g = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local cache = __M.a()

            return function(api)
                local autofire = {}
                local targeting, lp, loopManager, lib, desync = api.targeting, api.lp, api.loopManager, api.lib, api.desync
                local mainEvent = cache.getMainEvent()
                local cooldown, lastShoot, swayDir = 0, 0, 1

                local function getOrigin(origin, targetPart, desyncPos)
                    if origin == 'sway' then
                        return (desyncPos or targetPart.Position) + Vector3.new(0, swayDir * 15, 0)
                    end
                    if origin == 'upper' then
                        return (desyncPos or targetPart.Position) + Vector3.new(0, 25, 0)
                    end
                    if origin == 'random' then
                        return (desyncPos or targetPart.Position) + Vector3.new(math.random(
-20, 20), math.random(-20, 20), math.random(-20, 20))
                    end

                    return desyncPos or targetPart.Position
                end

                loopManager:AddHeartbeat('autofire', function()
                    if not lib.Flags.autofire_enabled then
                        return
                    end

                    local char = lp.Character

                    if not char then
                        return
                    end

                    local hasTools = false

                    for _, t in ipairs(char:GetChildren())do
                        if t:IsA('Tool') and t:FindFirstChild('Handle') then
                            hasTools = true

                            break
                        end
                    end

                    if not hasTools then
                        return
                    end

                    local target = targeting.target

                    if not target then
                        return
                    end
                    if lib.Flags.autofire_checks then
                        local info = targeting:GetTargetInfo({
                            'state',
                        })

                        if not info then
                            return
                        end
                        if lib.Flags.autofire_check_ko and info.IsKO then
                            return
                        end
                        if lib.Flags.autofire_check_ff and info.HasFF then
                            return
                        end
                        if lib.Flags.autofire_check_dead and info.IsDead then
                            return
                        end
                        if lib.Flags.autofire_check_grabbed and info.IsGrabbed then
                            return
                        end
                    end

                    local tPart = target:FindFirstChild(lib.Flags.autofire_destination or 'Head')

                    if not tPart then
                        return
                    end

                    local now = tick()

                    if now - lastShoot < cooldown / 1000 then
                        return
                    end

                    local origin = lib.Flags.autofire_origin or 'destination'
                    local desyncPos = desync and desync:getPosition() or nil

                    for _, tool in ipairs(char:GetChildren())do
                        if tool:IsA('Tool') and tool:FindFirstChild('Handle') then
                            pcall(function()
                                mainEvent:FireServer('ShootGun', tool.Handle, getOrigin(origin, tPart, desyncPos), tPart.Position, tPart, Vector3.new(0, 0, 0))
                            end)
                        end
                    end

                    lastShoot = now
                    swayDir = -swayDir
                end)

                function autofire:setCooldown(ms)
                    cooldown = ms
                end

                return autofire
            end
        end

        function __M.h(): typeof(__modImpl())
            local v = __M.cache.h

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.h = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local cache = __M.a()

            return function(api)
                local auto_stomp = {}
                local lp, loopManager, lib, targeting, desync = api.lp, api.loopManager, api.lib, api.targeting, api.desync
                local state = {
                    enabled = false,
                    stompHeight = 2.7,
                    wasStomping = false,
                    lastStompTime = 0,
                    lastSyncTime = 0,
                    syncDelay = 0.1,
                }

                local function canSyncNow()
                    if state.lastStompTime == 0 then
                        return true
                    end

                    local currentTime = tick()
                    local timeSinceLastStomp = currentTime - state.lastStompTime
                    local requiredDelay = cache.getPing()

                    return timeSinceLastStomp >= requiredDelay
                end
                local function canContinueAfterSync()
                    if state.lastSyncTime == 0 then
                        return true
                    end

                    local currentTime = tick()
                    local timeSinceSync = currentTime - state.lastSyncTime
                    local requiredDelay = (cache.getPing() + 0.04)

                    return timeSinceSync >= requiredDelay
                end
                local function canStomp()
                    if not lp.Character or not lp.Character:FindFirstChild('HumanoidRootPart') then
                        return false
                    end
                    if lp.Character:FindFirstChild('SDeath') then
                        return false
                    end

                    local myBodyEffects = lp.Character:FindFirstChild('BodyEffects')

                    if myBodyEffects then
                        if myBodyEffects:FindFirstChild('Reload') and myBodyEffects.Reload.Value then
                            return false
                        end
                        if myBodyEffects:FindFirstChild('Attacking') and myBodyEffects.Attacking.Value then
                            return false
                        end
                    end

                    return true
                end
                local function shouldStompTarget()
                    if not targeting.target then
                        return false
                    end

                    local bodyEffects = targeting.target:FindFirstChild('BodyEffects')

                    if bodyEffects then
                        local sDeathValue = bodyEffects:FindFirstChild('SDeath')

                        if sDeathValue and sDeathValue.Value == true then
                            return false
                        end
                    end
                    if lib.Flags.follow_target_check_grabbed ~= false then
                        if targeting.target:FindFirstChild('GRABBING_CONSTRAINT') then
                            return false
                        end
                    end
                    if bodyEffects then
                        local koValue = bodyEffects:FindFirstChild('K.O')

                        if koValue and koValue.Value == true then
                            return true
                        end
                    end

                    return false
                end

                function auto_stomp:setEnabled(enabled)
                    state.enabled = enabled
                    lib.Flags.auto_stomp_enabled = enabled

                    if enabled then
                        self:startLoop()
                    else
                        self:stopLoop()
                    end
                end
                function auto_stomp:setStompHeight(height)
                    state.stompHeight = height
                end
                function auto_stomp:shouldExecuteStomp()
                    if not lib.Flags.auto_stomp_enabled then
                        return false
                    end
                    if not canStomp() then
                        return false
                    end
                    if not shouldStompTarget() then
                        local bodyEffects = targeting.target and targeting.target:FindFirstChild('BodyEffects')
                        local koValue = bodyEffects and bodyEffects:FindFirstChild('K.O')
                        local isKO = koValue and koValue.Value

                        return false
                    end

                    local targetUpperTorso = targeting.target:FindFirstChild('UpperTorso')

                    if not targetUpperTorso then
                        return false
                    end

                    return true
                end
                function auto_stomp:executeStomp()
                    if not self:shouldExecuteStomp() then
                        return false
                    end

                    local targetUpperTorso = targeting.target:FindFirstChild('UpperTorso')

                    if not targetUpperTorso then
                        return false
                    end

                    local stompPosition = targetUpperTorso.Position + Vector3.new(0, state.stompHeight, 0)

                    if desync then
                        if desync.moveTo then
                            desync:moveTo(stompPosition.X, stompPosition.Y, stompPosition.Z, 80, 'autoStomp')
                        elseif desync.moveDesyncTo then
                            desync:moveDesyncTo(stompPosition.X, stompPosition.Y, stompPosition.Z, 80, 'autoStomp')
                        end
                    end

                    state.wasStomping = true

                    pcall(function()
                        local mainEvent = cache.getMainEvent()

                        mainEvent:FireServer('Stomp')

                        state.lastStompTime = tick()
                    end)

                    return true
                end
                function auto_stomp:onStompFinished()
                    if state.wasStomping and canSyncNow() then
                        if desync and desync.syncWithPlayer then
                            local ping = cache.getPing()

                            desync:syncWithPlayer(ping + 0.05)
                        end

                        state.wasStomping = false
                        state.lastStompTime = 0
                        state.lastSyncTime = tick()
                    end
                end
                function auto_stomp:isStompingInProgress()
                    return state.wasStomping
                end
                function auto_stomp:canContinueDesync()
                    return canSyncNow() and canContinueAfterSync()
                end

                do
                    local function autoStompLoop()
                        if not lib.Flags.auto_stomp_enabled then
                            return
                        end
                        if not canStomp() then
                            if state.wasStomping and canSyncNow() then
                                if desync and desync.syncWithPlayer then
                                    local ping = cache.getPing()

                                    desync:syncWithPlayer(ping + 0.05)
                                end

                                state.wasStomping = false
                                state.lastStompTime = 0
                                state.lastSyncTime = tick()
                            end

                            return
                        end

                        local shouldStomp = shouldStompTarget()

                        if not shouldStomp then
                            if state.wasStomping and canSyncNow() then
                                if desync and desync.syncWithPlayer then
                                    local ping = cache.getPing()

                                    desync:syncWithPlayer(ping + 0.05)
                                end

                                state.wasStomping = false
                                state.lastStompTime = 0
                                state.lastSyncTime = tick()
                            end

                            return
                        end

                        local targetUpperTorso = targeting.target:FindFirstChild('UpperTorso')

                        if not targetUpperTorso then
                            if state.wasStomping and canSyncNow() then
                                if desync and desync.syncWithPlayer then
                                    local ping = cache.getPing()

                                    desync:syncWithPlayer(ping + 0.05)
                                end

                                state.wasStomping = false
                                state.lastStompTime = 0
                                state.lastSyncTime = tick()
                            end

                            return
                        end

                        local stompPosition = targetUpperTorso.Position + Vector3.new(0, state.stompHeight, 0)

                        if desync and desync.moveTo then
                            desync:moveTo(stompPosition.X, stompPosition.Y, stompPosition.Z, 80, 'autoStomp')
                        end

                        state.wasStomping = true

                        pcall(function()
                            local mainEvent = cache.getMainEvent()

                            mainEvent:FireServer('Stomp')

                            state.lastStompTime = tick()
                        end)
                    end

                    local conn

                    local function start()
                        if conn then
                            return
                        end

                        conn = loopManager:AddHeartbeat('auto_stomp_main', function(
                        )
                            autoStompLoop()
                        end)
                    end
                    local function stop()
                        if conn then
                            loopManager:RemoveHeartbeat('auto_stomp_main')

                            conn = nil
                        end
                        if desync and desync.syncWithPlayer then
                            local ping = cache.getPing()

                            desync:syncWithPlayer(ping + 0.05)
                        end

                        state.wasStomping = false
                        state.lastStompTime = 0
                        state.lastSyncTime = 0
                    end

                    function auto_stomp:startLoop()
                        start()
                    end
                    function auto_stomp:stopLoop()
                        stop()
                    end
                end

                return auto_stomp
            end
        end

        function __M.i(): typeof(__modImpl())
            local v = __M.cache.i

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.i = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function()
                return function(api)
                    local autoLoadout = {}
                    local lp, desync, lib, targeting, loopManager, auto_stomp = api.lp, api.desync, api.lib, api.targeting, api.loopManager, api.auto_stomp
                    local shop = workspace.Ignored.Shop
                    local armor_shop = shop and shop['[High-Medium Armor] - $2589']
                    local fire_armor_shop = shop and shop['[Fire Armor] - $2701']
                    local state = {
                        enabled = false,
                        armor = false,
                        fire_armor = false,
                        guns = false,
                        ammo = false,
                        buying = false,
                        ammo_count = 1,
                        armor_target = 130,
                        fire_armor_target = 200,
                        ammo_only_selected = false,
                        conditions = {
                            noTarget = false,
                            targetNotKO = false,
                            notSafe = false,
                        },
                        isWorking = false,
                    }
                    local weapons = {
                        {
                            name = '[Rifle]',
                            shop = '[Rifle] - $1745',
                            ammo = '5 [Rifle Ammo] - $281',
                            min = 0,
                        },
                        {
                            name = '[Flintlock]',
                            shop = '[Flintlock] - $1463',
                            ammo = '6 [Flintlock Ammo] - $168',
                            min = 0,
                        },
                        {
                            name = '[LMG]',
                            shop = '[LMG] - $4221',
                            ammo = '200 [LMG Ammo] - $338',
                            min = 0,
                        },
                        {
                            name = '[AUG]',
                            shop = '[AUG] - $2195',
                            ammo = '90 [AUG Ammo] - $90',
                            min = 0,
                        },
                    }

                    local function getArmor(armor_type)
                        local effects = lp.Character and lp.Character:FindFirstChild('BodyEffects')

                        if not effects then
                            return 0
                        end

                        local armor_val = effects:FindFirstChild(armor_type)

                        return armor_val and tonumber(armor_val.Value) or 0
                    end
                    local function hasWeapon(name)
                        return (lp.Backpack:FindFirstChild(name) or (lp.Character and lp.Character:FindFirstChild(name))) ~= nil
                    end
                    local function getAmmo(name)
                        local inv = lp.DataFolder.Inventory:FindFirstChild(name)

                        return inv and tonumber(inv.Value) or 0
                    end
                    local function removeTools()
                        for _, tool in pairs(lp.Character:GetChildren())do
                            if tool:IsA('Tool') then
                                tool.Parent = lp.Backpack
                            end
                        end
                    end
                    local function checkConditions()
                        if not targeting then
                            return true
                        end
                        if state.conditions.noTarget and not targeting.target then
                            return false
                        end
                        if state.conditions.targetNotKO and targeting.target then
                            local info = targeting:GetTargetInfo({
                                'state',
                            })

                            if info and (not info.IsKO and not info.IsDead) or info.HasFF then
                                return false
                            end
                        end
                        if state.conditions.notSafe and not (lp.Character and (lp.Character:FindFirstChild('ForceField') or lp.Character:FindFirstChild('ForceField_TESTING'))) then
                            return false
                        end

                        return true
                    end
                    local function buyItem(shop_item, armor_type, target)
                        if not shop_item or state.buying or not lp.Character or not lp.Character:FindFirstChild('HumanoidRootPart') then
                            return
                        end

                        local current = getArmor(armor_type)

                        if current >= target or not checkConditions() then
                            return
                        end

                        state.buying = true
                        state.isWorking = true

                        local head = shop_item:FindFirstChild('Head')
                        local cd = shop_item:FindFirstChild('ClickDetector')
                        local timeout = tick() + 5

                        if head and cd then
                            while tick() < timeout do
                                current = getArmor(armor_type)

                                if current >= target then
                                    break
                                end

                                removeTools()
                                desync:moveDesyncTo(head.Position.X, head.Position.Y, head.Position.Z, 100, 'autoLoadout')
                                fireclickdetector(cd)
                                task.wait(0.1)
                            end
                        end

                        desync:synchronizeSyncWithPlayer()

                        state.buying = false
                        state.isWorking = false
                    end
                    local function buyAmmo(weapon)
                        if state.buying or not hasWeapon(weapon.name) or not checkConditions() then
                            return
                        end

                        local ammo = getAmmo(weapon.name)

                        if ammo > 0 then
                            return
                        end

                        state.buying = true
                        state.isWorking = true

                        local ammo_shop = shop:FindFirstChild(weapon.ammo)

                        if not ammo_shop then
                            state.buying = false

                            return
                        end

                        local head = ammo_shop:FindFirstChild('Head')
                        local cd = ammo_shop:FindFirstChild('ClickDetector')
                        local timeout = tick() + 5

                        if head and cd then
                            local count = 0
                            local last = ammo

                            while tick() < timeout and count < state.ammo_count do
                                removeTools()
                                desync:moveDesyncTo(head.Position.X, head.Position.Y, head.Position.Z, 100, 'autoLoadout')
                                fireclickdetector(cd)
                                task.wait(0.1)

                                local new_ammo = getAmmo(weapon.name)

                                if new_ammo > last then
                                    count = count + 1
                                    last = new_ammo
                                end
                            end
                        end

                        desync:synchronizeSyncWithPlayer()

                        state.buying = false
                        state.isWorking = false
                    end
                    local function mainLoop()
                        if not state.enabled or state.buying or not lp.Character then
                            return
                        end
                        if auto_stomp and auto_stomp:isStompingInProgress() then
                            return
                        end
                        if state.armor then
                            buyItem(armor_shop, 'Armor', state.armor_target)
                        end
                        if state.fire_armor then
                            buyItem(fire_armor_shop, 'FireArmor', state.fire_armor_target)
                        end
                        if state.guns then
                            for _, w in ipairs(weapons)do
                                if w.enabled and not hasWeapon(w.name) and checkConditions() then
                                    local w_shop = shop:FindFirstChild(w.shop)

                                    if w_shop then
                                        local head = w_shop:FindFirstChild('Head')
                                        local cd = w_shop:FindFirstChild('ClickDetector')

                                        if head and cd then
                                            state.buying = true
                                            state.isWorking = true

                                            local timeout = tick() + 5

                                            while tick() < timeout and not hasWeapon(w.name) do
                                                removeTools()
                                                desync:moveDesyncTo(head.Position.X, head.Position.Y, head.Position.Z, 100, 'autoLoadout')
                                                fireclickdetector(cd)
                                                task.wait(0.1)
                                            end

                                            desync:synchronizeSyncWithPlayer()

                                            state.buying = false
                                            state.isWorking = false
                                        end
                                    end
                                end
                            end
                        end
                        if state.ammo then
                            for _, w in ipairs(weapons)do
                                if state.ammo_only_selected and not w.enabled then
                                    return
                                end

                                buyAmmo(w)
                            end
                        end
                    end

                    loopManager:AddHeartbeat('autoLoadout', mainLoop)

                    function autoLoadout:setEnabled(e)
                        state.enabled = e
                    end
                    function autoLoadout:setArmorEnabled(e)
                        state.armor = e
                    end
                    function autoLoadout:setFireArmorEnabled(e)
                        state.fire_armor = e
                    end
                    function autoLoadout:setGunsEnabled(e)
                        state.guns = e
                    end
                    function autoLoadout:setAmmoEnabled(e)
                        state.ammo = e
                    end
                    function autoLoadout:setAmmoPurchaseCount(c)
                        state.ammo_count = c
                    end
                    function autoLoadout:setArmorTarget(t)
                        state.armor_target = t
                    end
                    function autoLoadout:setFireArmorTarget(t)
                        state.fire_armor_target = t
                    end
                    function autoLoadout:setConditions(c)
                        state.conditions = c
                    end
                    function autoLoadout:setWeaponEnabled(name, e)
                        for _, w in ipairs(weapons)do
                            if w.name == name then
                                w.enabled = e

                                break
                            end
                        end
                    end
                    function autoLoadout:setAmmoOnlySelected(e)
                        state.ammo_only_selected = e
                    end
                    function autoLoadout:isWorking()
                        return state.isWorking
                    end
                    function autoLoadout:getWeaponsConfig()
                        return weapons
                    end

                    return autoLoadout
                end
            end
        end

        function __M.j(): typeof(__modImpl())
            local v = __M.cache.j

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.j = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(api)
                local autoequip = {}
                local lp, loopManager, lib, targeting, autoLoadout = api.lp, api.loopManager, api.lib, api.targeting, api.autoLoadout
                local equipCd, loopCd, lastEquip, lastLoop = 100, 50, 0, 0
                local wasEnabled = true

                loopManager:AddHeartbeat('autoequip', function()
                    if not lib.Flags.autoequip_enabled then
                        if wasEnabled then
                            wasEnabled = false

                            local char = lp.Character

                            if char then
                                for _, tool in ipairs(char:GetChildren())do
                                    if tool:IsA('Tool') then
                                        pcall(function()
                                            tool.Parent = lp:FindFirstChild('Backpack') or lp
                                        end)
                                    end
                                end
                            end
                        end

                        return
                    end

                    wasEnabled = true

                    if autoLoadout and autoLoadout:isWorking() then
                        return
                    end
                    if lib.Flags.autoequip_check_target and not targeting.target then
                        return
                    end

                    local now = tick()

                    if now - lastLoop < loopCd / 1000 then
                        return
                    end

                    lastLoop = now

                    local char = lp.Character

                    if not char then
                        return
                    end
                    if not char:FindFirstChild('FULLY_LOADED_CHAR') then
                        return
                    end

                    local hum = char:FindFirstChildOfClass('Humanoid')

                    if not hum or hum.Health <= 0 then
                        return
                    end

                    local selectedGuns = lib.Flags.autoequip_guns

                    if #selectedGuns == 0 then
                        return
                    end

                    local backpack = lp:FindFirstChild('Backpack')

                    if not backpack then
                        return
                    end

                    for _, tool in ipairs(backpack:GetChildren())do
                        if tool:IsA('Tool') then
                            for _, gun in ipairs(selectedGuns)do
                                local toolName = tool.Name
                                local gunName = gun
                                local match = (toolName == gunName) or (toolName == '[' .. gunName .. ']') or (toolName:gsub('[%[%]]', '') == gunName)

                                if match then
                                    local equipNow = tick()

                                    if equipNow - lastEquip >= equipCd / 1000 then
                                        pcall(function()
                                            tool.Parent = char
                                        end)

                                        lastEquip = equipNow
                                    end

                                    return
                                end
                            end
                        end
                    end
                end)

                function autoequip:setEquipCooldown(ms)
                    equipCd = ms
                end

                return autoequip
            end
        end

        function __M.k(): typeof(__modImpl())
            local v = __M.cache.k

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.k = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local cache = __M.a()

            return function(api)
                local velocity_break = {}
                local lp, loopManager, lib, cam = api.lp, api.loopManager, api.lib, api.camera
                local velX, velY, velZ = 0, 0, 0
                local tracer = Drawing.new('Line')

                tracer.Visible, tracer.Color, tracer.Thickness, tracer.Transparency = false, Color3.fromRGB(255, 255, 255), 1, 0

                loopManager:AddHeartbeat('velocity_break', function()
                    if not lib.Flags.velocity_break_enabled then
                        return
                    end

                    local char = lp.Character

                    if not char then
                        return
                    end

                    local root = char:FindFirstChild('HumanoidRootPart')

                    if not root then
                        return
                    end

                    local oldVel = root.Velocity
                    local vel = Vector3.new(velX, velY, velZ)

                    root.Velocity = vel

                    cache.RunService.RenderStepped:Wait()

                    root.Velocity = oldVel

                    if lib.Flags.velocity_break_visualise then
                        local endPos = root.Position + vel
                        local s1, onScreen1 = cam:WorldToViewportPoint(root.Position)
                        local s2, onScreen2 = cam:WorldToViewportPoint(endPos)

                        tracer.From, tracer.To, tracer.Visible = Vector2.new(s1.X, s1.Y), Vector2.new(s2.X, s2.Y), onScreen1 and onScreen2
                    else
                        tracer.Visible = false
                    end
                end)

                velocity_break.setVelocityX = function(_, v)
                    velX = v
                end
                velocity_break.setVelocityY = function(_, v)
                    velY = v
                end
                velocity_break.setVelocityZ = function(_, v)
                    velZ = v
                end
                velocity_break.setTracerColor = function(_, c, a)
                    tracer.Color, tracer.Transparency = c, 1 - a
                end

                return velocity_break
            end
        end

        function __M.l(): typeof(__modImpl())
            local v = __M.cache.l

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.l = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(api)
                local physics_sender_rate = {}
                local lp, loopManager, lib = api.lp, api.loopManager, api.lib
                local rate, mode = 240

                loopManager:AddHeartbeat('physics_sender_rate', function()
                    if lib.Flags.physics_sender_rate_enabled then
                        local val = mode == 'extra low' and 1 or mode == 'extra big' and 223222323 or (lib.Flags.physics_sender_rate_value or 240)

                        pcall(function()
                            setfflag('S2PhysicsSenderRate', tostring(val))
                        end)
                    else
                        pcall(function()
                            setfflag('S2PhysicsSenderRate', '240')
                        end)
                    end
                end)

                function physics_sender_rate:setRate(v)
                    rate = v
                end
                function physics_sender_rate:setMode(m)
                    mode = m
                end

                return physics_sender_rate
            end
        end

        function __M.m(): typeof(__modImpl())
            local v = __M.cache.m

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.m = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(api)
                local a_sync = {}
                local loopManager, lib = api.loopManager, api.lib
                local cooldown = 0.1

                loopManager:AddHeartbeat('a_sync', function()
                    if not lib.Flags.a_sync_enabled then
                        return
                    end

                    pcall(function()
                        setfflag('PhysicsSenderMaxBandwidthBps', '1')
                    end)
                    task.wait(cooldown)
                    pcall(function()
                        setfflag('PhysicsSenderMaxBandwidthBps', '999999')
                    end)
                    task.wait(0.05)
                end)

                function a_sync:setCooldown(v)
                    cooldown = v
                end

                return a_sync
            end
        end

        function __M.n(): typeof(__modImpl())
            local v = __M.cache.n

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.n = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(api)
                local visualise = {}
                local lp, loopManager, input, lib, desync = api.lp, api.loopManager, api.input, api.lib, api.desync
                local tracer_outline, tracer_main = Drawing.new('Line'), Drawing.new('Line')

                tracer_outline.Visible, tracer_outline.Color, tracer_outline.Thickness, tracer_outline.Transparency = false, Color3.fromRGB(0, 0, 0), 3, 1
                tracer_main.Visible, tracer_main.Color, tracer_main.Thickness, tracer_main.Transparency = false, Color3.fromRGB(255, 255, 255), 1.5, 0

                local function getRealPosition()
                    if desync and desync:isEnabled() then
                        return desync:getPosition()
                    end

                    local char = lp and lp.Character

                    if not char then
                        return nil
                    end

                    local hum = char:FindFirstChildOfClass('Humanoid')

                    return hum and hum.RootPart and hum.RootPart.Position or nil
                end
                local function isSynced()
                    local realPos = getRealPosition()
                    local playerRoot = lp.Character and lp.Character:FindFirstChild('HumanoidRootPart')

                    return realPos and playerRoot and realPos == playerRoot.Position
                end

                local tracerLoopAdded = false
                local tracerSmooth, tracerLastTo = false
                local tracerSmoothType, tracerCustomDelay = 'ping', 200
                local cache = __M.a()

                local function lerpVec2(a, b, t)
                    return Vector2.new(a.X + (b.X - a.X) * t, a.Y + (b.Y - a.Y) * t)
                end
                local function getTracerSmoothFactor()
                    local delay = tracerSmoothType == 'ping' and math.max(cache.getPingMs(), 50) or tracerCustomDelay

                    return math.clamp(16 / delay, 0.05, 0.5)
                end
                local function updateTracer()
                    if not lib.Flags.desync_tracer_enabled or lib.Flags.desync_dont_show_if_synced and isSynced() then
                        tracer_outline.Visible, tracer_main.Visible = false, false
                        tracerLastTo = nil

                        return
                    end

                    local realPos = getRealPosition()

                    if not realPos then
                        tracer_outline.Visible, tracer_main.Visible = false, false
                        tracerLastTo = nil

                        return
                    end

                    local screenPos, onScreen = workspace.CurrentCamera:WorldToViewportPoint(realPos)

                    if onScreen and screenPos.Z > 0 then
                        local targetTo = Vector2.new(screenPos.X, screenPos.Y)
                        local fromPos = input:GetMouseLocation()

                        if tracerSmooth and tracerLastTo then
                            targetTo = lerpVec2(tracerLastTo, targetTo, getTracerSmoothFactor())
                        end

                        tracerLastTo = targetTo
                        tracer_outline.From, tracer_outline.To, tracer_outline.Visible = fromPos, targetTo, true
                        tracer_main.From, tracer_main.To, tracer_main.Visible = fromPos, targetTo, true
                    else
                        tracer_outline.Visible, tracer_main.Visible = false, false
                        tracerLastTo = nil
                    end
                end

                function visualise:setTracerSmooth(v)
                    tracerSmooth = v
                    tracerLastTo = nil
                end
                function visualise:setTracerSmoothType(t)
                    tracerSmoothType = t
                end
                function visualise:setTracerSmoothDelay(d)
                    tracerCustomDelay = d
                end
                function visualise:setTracerEnabled(enabled)
                    if enabled and not tracerLoopAdded then
                        loopManager:AddRenderStepped('desync_tracer', updateTracer)

                        tracerLoopAdded = true
                    elseif not enabled and tracerLoopAdded then
                        loopManager:RemoveRenderStepped('desync_tracer')

                        tracerLoopAdded = false
                        tracer_outline.Visible, tracer_main.Visible = false, false
                    end
                end
                function visualise:setTracerColor(c, a)
                    tracer_main.Color, tracer_main.Transparency = c, 1 - a
                end
                function visualise:setTracerOutlineColor(c, a)
                    tracer_outline.Color, tracer_outline.Transparency = c, 1 - a
                end
                function visualise:setTracerOutlineThickness(t)
                    tracer_outline.Thickness = t
                end
                function visualise:setTracerMainThickness(t)
                    tracer_main.Thickness = t
                end

                do
                    local screenGui, frame, imageLabel, uiStroke
                    local imgSize = 100
                    local imgColor = Color3.fromHex('305261')
                    local bgColor = Color3.fromHex('1b1b1b')
                    local strokeColor = Color3.fromHex('305261')
                    local smoothEnabled, currentTween = false
                    local smoothType, customDelay = 'ping', 200
                    local tweenService = cloneref(game:GetService('TweenService'))
                    local cache = __M.a()
                    local dummyType, dummyColor, dummyTransparency, dummyMaterial, dummyModel = 'R6', Color3.fromRGB(255, 255, 255), 0.3, (Enum.Material.Neon)
                    local clonePartMap = {}
                    local cloneMaterials = {
                        Enum.Material.Neon,
                        Enum.Material.Glass,
                        Enum.Material.ForceField,
                    }

                    local function getSmoothDuration()
                        if smoothType == 'ping' then
                            return math.max(cache.getPingMs() / 1000, 0.05)
                        else
                            return customDelay / 1000
                        end
                    end
                    local function createImage()
                        if screenGui then
                            pcall(function()
                                screenGui:Destroy()
                            end)
                        end

                        screenGui = Instance.new('ScreenGui')
                        screenGui.Name, screenGui.ResetOnSpawn, screenGui.ZIndexBehavior = 'DesyncImageGui', false, Enum.ZIndexBehavior.Sibling
                        screenGui.Parent = lp:WaitForChild('PlayerGui')
                        frame = Instance.new('Frame')
                        frame.Size, frame.AnchorPoint = UDim2.fromOffset(imgSize, imgSize), Vector2.new(0.5, 0.5)
                        frame.BorderSizePixel, frame.BackgroundColor3 = 0, bgColor
                        frame.Parent = screenGui

                        local corner = Instance.new('UICorner')

                        corner.CornerRadius, corner.Parent = UDim.new(2, 8), frame
                        uiStroke = Instance.new('UIStroke')
                        uiStroke.Color, uiStroke.Thickness, uiStroke.Parent = strokeColor, 1.5, frame
                        imageLabel = Instance.new('ImageLabel')
                        imageLabel.Size, imageLabel.BackgroundTransparency, imageLabel.BorderSizePixel = UDim2.fromScale(1, 1), 1, 0
                        imageLabel.Image, imageLabel.ImageColor3, imageLabel.Parent = 'rbxassetid://128540628323761', imgColor, frame

                        local imgCorner = Instance.new('UICorner')

                        imgCorner.CornerRadius, imgCorner.Parent = UDim.new(2, 8), imageLabel
                    end
                    local function updateImage()
                        if not lib.Flags.desync_image_enabled or lib.Flags.desync_dont_show_if_synced and isSynced() then
                            if screenGui then
                                screenGui.Enabled = false
                            end
                            if currentTween then
                                currentTween:Cancel()

                                currentTween = nil
                            end

                            return
                        end

                        local realPos = getRealPosition()

                        if not realPos then
                            if screenGui then
                                screenGui.Enabled = false
                            end

                            return
                        end
                        if not screenGui or not frame then
                            createImage()
                        end

                        local screenPos, onScreen = workspace.CurrentCamera:WorldToScreenPoint(realPos)

                        if screenGui then
                            screenGui.Enabled = (onScreen and screenPos.Z > 0)
                        end
                        if onScreen and screenPos.Z > 0 then
                            local targetPos = UDim2.fromOffset(screenPos.X, screenPos.Y)

                            if smoothEnabled then
                                if currentTween then
                                    currentTween:Cancel()
                                end

                                local tweenInfo = TweenInfo.new(getSmoothDuration(), Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

                                currentTween = tweenService:Create(frame, tweenInfo, {Position = targetPos})

                                currentTween:Play()
                            else
                                frame.Position = targetPos
                            end
                        end
                    end

                    function visualise:setImageColor(c)
                        imgColor = c

                        if imageLabel then
                            imageLabel.ImageColor3 = c
                        end
                    end
                    function visualise:setImageScale(s)
                        imgSize = 100 * s

                        if frame then
                            frame.Size = UDim2.fromOffset(imgSize, imgSize)
                        end
                    end
                    function visualise:setStrokeColor(c)
                        strokeColor = c

                        if uiStroke then
                            uiStroke.Color = c
                        end
                    end
                    function visualise:setBackgroundColor(c)
                        bgColor = c

                        if frame then
                            frame.BackgroundColor3 = c
                        end
                    end
                    function visualise:setSmooth(v)
                        smoothEnabled = v
                    end
                    function visualise:setSmoothType(t)
                        smoothType = t
                    end
                    function visualise:setCustomDelay(d)
                        customDelay = d
                    end

                    local function createR6Dummy()
                        local model = Instance.new('Model')

                        model.Name, model.Parent = 'DesyncDummy', workspace

                        local parts = {
                            {
                                'Head',
                                Vector3.new(2, 1, 1),
                            },
                            {
                                'Torso',
                                Vector3.new(2, 2, 1),
                            },
                            {
                                'Left Arm',
                                Vector3.new(1, 2, 1),
                            },
                            {
                                'Right Arm',
                                Vector3.new(1, 2, 1),
                            },
                            {
                                'Left Leg',
                                Vector3.new(1, 2, 1),
                            },
                            {
                                'Right Leg',
                                Vector3.new(1, 2, 1),
                            },
                        }

                        for _, p in pairs(parts)do
                            local part = Instance.new('Part')

                            part.Name, part.Size = p[1], p[2]
                            part.Material, part.Color, part.Transparency = dummyMaterial, dummyColor, dummyTransparency
                            part.CanCollide, part.Anchored, part.CastShadow = false, true, false
                            part.TopSurface, part.BottomSurface = Enum.SurfaceType.Smooth, Enum.SurfaceType.Smooth
                            part.Parent = model
                        end

                        return model
                    end
                    local function createCloneDummy()
                        local char = lp.Character

                        if not char then
                            return nil
                        end

                        local model = Instance.new('Model')

                        model.Name, model.Parent = 'DesyncClone', workspace
                        clonePartMap = {}

                        local r15Parts = {
                            'Head',
                            'UpperTorso',
                            'LowerTorso',
                            'LeftUpperArm',
                            'LeftLowerArm',
                            'LeftHand',
                            'RightUpperArm',
                            'RightLowerArm',
                            'RightHand',
                            'LeftUpperLeg',
                            'LeftLowerLeg',
                            'LeftFoot',
                            'RightUpperLeg',
                            'RightLowerLeg',
                            'RightFoot',
                        }

                        for i, pn in pairs(r15Parts)do
                            local orig = char:FindFirstChild(pn)

                            if orig and orig:IsA('BasePart') then
                                local clone = orig:Clone()

                                for _, d in pairs(clone:GetDescendants())do
                                    if d:IsA('Motor6D') or d:IsA('Weld') or d:IsA('Attachment') then
                                        d:Destroy()
                                    end
                                end

                                if clone.Name == 'Head' and clone:IsA('MeshPart') then
                                    clone.TextureID = ''
                                end

                                local mat = cloneMaterials[(i - 1) % #cloneMaterials + 1]

                                clone.Material, clone.CanCollide, clone.Anchored, clone.CastShadow = mat, false, true, false
                                clone.Parent = model
                                clonePartMap[clone] = orig
                            end
                        end

                        return model
                    end
                    local function createDummy()
                        if dummyModel then
                            pcall(function()
                                dummyModel:Destroy()
                            end)

                            clonePartMap = {}
                        end

                        dummyModel = (dummyType == 'R6' and createR6Dummy()) or (dummyType == 'Clone' and createCloneDummy())

                        if dummyModel then
                            for _, p in pairs(dummyModel:GetChildren())do
                                if p:IsA('BasePart') then
                                    p.Color, p.Transparency, p.Material = dummyColor, dummyTransparency, dummyMaterial
                                end
                            end
                        end
                    end
                    local function destroyDummy()
                        if dummyModel then
                            pcall(function()
                                dummyModel:Destroy()
                            end)

                            dummyModel, clonePartMap = nil, {}
                        end
                    end
                    local function updateDummy()
                        if not lib.Flags.desync_dummy_enabled or lib.Flags.desync_dont_show_if_synced and isSynced() then
                            destroyDummy()

                            return
                        end

                        local realPos = getRealPosition()

                        if not realPos then
                            if dummyModel then
                                for _, p in pairs(dummyModel:GetChildren())do
                                    if p:IsA('BasePart') then
                                        p.Transparency = 1
                                    end
                                end
                            end

                            return
                        end
                        if not dummyModel then
                            createDummy()

                            if not dummyModel then
                                return
                            end
                        end
                        if dummyType == 'R6' then
                            local root = lp.Character and lp.Character:FindFirstChild('HumanoidRootPart')
                            local rot = root and root.CFrame or CFrame.new(0, 0, 0)
                            local cf = CFrame.new(realPos) * (rot - rot.Position)
                            local t, h, la, ra, ll, rl = dummyModel:FindFirstChild('Torso'), dummyModel:FindFirstChild('Head'), dummyModel:FindFirstChild('Left Arm'), dummyModel:FindFirstChild('Right Arm'), dummyModel:FindFirstChild('Left Leg'), dummyModel:FindFirstChild('Right Leg')

                            if t then
                                t.CFrame = cf
                            end
                            if h then
                                h.CFrame = cf * CFrame.new(0, 1.5, 0)
                            end
                            if la then
                                la.CFrame = cf * CFrame.new(-1.5, 0, 0)
                            end
                            if ra then
                                ra.CFrame = cf * CFrame.new(1.5, 0, 0)
                            end
                            if ll then
                                ll.CFrame = cf * CFrame.new(-0.5, -2, 0)
                            end
                            if rl then
                                rl.CFrame = cf * CFrame.new(0.5, -2, 0)
                            end
                        elseif dummyType == 'Clone' then
                            local root = lp.Character and lp.Character:FindFirstChild('HumanoidRootPart')

                            if not root then
                                return
                            end

                            for cp, op in pairs(clonePartMap)do
                                if not op or not op.Parent then
                                    destroyDummy()
                                    createDummy()

                                    return
                                end
                            end

                            local off = realPos - root.Position

                            for cp, op in pairs(clonePartMap)do
                                cp.CFrame, cp.CanCollide = op.CFrame + off, false
                            end
                        end
                    end

                    local imageLoopAdded, dummyLoopAdded = false, false

                    function visualise:setImageEnabled(e)
                        lib.Flags.desync_image_enabled = e

                        if e and not imageLoopAdded then
                            loopManager:AddRenderStepped('desync_image', updateImage)

                            imageLoopAdded = true
                        elseif not e and imageLoopAdded then
                            loopManager:RemoveRenderStepped('desync_image')

                            imageLoopAdded = false

                            if screenGui then
                                pcall(function()
                                    screenGui:Destroy()
                                end)

                                screenGui, frame, imageLabel, uiStroke = nil, nil, nil, nil
                            end
                        end
                    end
                    function visualise:setDummyEnabled(e)
                        lib.Flags.desync_dummy_enabled = e

                        if e then
                            createDummy()

                            if not dummyLoopAdded then
                                loopManager:AddRenderStepped('desync_dummy', updateDummy)

                                dummyLoopAdded = true
                            end
                        else
                            destroyDummy()

                            if dummyLoopAdded then
                                loopManager:RemoveRenderStepped('desync_dummy')

                                dummyLoopAdded = false
                            end
                        end
                    end
                    function visualise:setDummyType(t)
                        dummyType = t

                        if lib.Flags.desync_dummy_enabled then
                            destroyDummy()
                            createDummy()
                        end
                    end
                    function visualise:setDummyColor(c, a)
                        dummyColor, dummyTransparency = c, a

                        if dummyModel then
                            for _, p in pairs(dummyModel:GetChildren())do
                                if p:IsA('BasePart') then
                                    p.Color, p.Transparency = c, a
                                end
                            end
                        end
                    end
                    function visualise:setDummyMaterial(m)
                        dummyMaterial = m

                        if dummyModel then
                            for _, p in pairs(dummyModel:GetChildren())do
                                if p:IsA('BasePart') then
                                    p.Material = m
                                end
                            end
                        end
                    end
                end

                return visualise
            end
        end

        function __M.o(): typeof(__modImpl())
            local v = __M.cache.o

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.o = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local cache = __M.a()

            return function(api)
                local void_hide = {}
                local lp, loopManager, lib, desync, auto_stomp = api.lp, api.loopManager, api.lib, api.desync, api.auto_stomp
                local state = {
                    enabled = false,
                    pattern = 'Deep Void',
                    direction = '-Y',
                    depthMultiplier = 1,
                    switchSpeed = 0.05,
                    lastSwitch = 0,
                    deepVoidPositions = {},
                    breakNullPositions = {},
                    currentDeepVoidIndex = 1,
                    currentBreakNullIndex = 1,
                    syncDelayTimer = 0,
                    syncDelayActive = false,
                    syncDelayDuration = 0,
                    wasSynced = false,
                }

                local function generateDeepVoidPositions()
                    local positions = {}
                    local deepValues = {
                        -2E6,
                        -5E6,
                        -1E7,
                        -2E7,
                        -5E7,
                    }
                    local farCoords = {
                        -1E6,
                        -5E5,
                        -25E4,
                        -1E5,
                        100000,
                        250000,
                        500000,
                        1000000,
                    }

                    for i = 1, 20 do
                        local x, y, z

                        if state.direction == '+Y' then
                            x = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                            y = -deepValues[math.random(1, #deepValues)] + math.random(
-1E4, 10000)
                            z = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                        elseif state.direction == '-Y' then
                            x = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                            y = deepValues[math.random(1, #deepValues)] + math.random(
-1E4, 10000)
                            z = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                        elseif state.direction == '+Z' then
                            x = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                            y = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                            z = -deepValues[math.random(1, #deepValues)] + math.random(
-1E4, 10000)
                        elseif state.direction == '-Z' then
                            x = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                            y = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                            z = deepValues[math.random(1, #deepValues)] + math.random(
-1E4, 10000)
                        elseif state.direction == '+X' then
                            x = -deepValues[math.random(1, #deepValues)] + math.random(
-1E4, 10000)
                            y = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                            z = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                        elseif state.direction == '-X' then
                            x = deepValues[math.random(1, #deepValues)] + math.random(
-1E4, 10000)
                            y = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                            z = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                        end

                        table.insert(positions, {
                            x = x,
                            y = y,
                            z = z,
                        })
                    end

                    if state.direction == '+Y' then
                        table.insert(positions, {
                            x = 0,
                            y = 5000000,
                            z = 0,
                        })
                        table.insert(positions, {
                            x = 750000,
                            y = 7500000,
                            z = 750000,
                        })
                        table.insert(positions, {
                            x = -75E4,
                            y = 7500000,
                            z = -75E4,
                        })
                    elseif state.direction == '-Y' then
                        table.insert(positions, {
                            x = 0,
                            y = -5E6,
                            z = 0,
                        })
                        table.insert(positions, {
                            x = 750000,
                            y = -75E5,
                            z = 750000,
                        })
                        table.insert(positions, {
                            x = -75E4,
                            y = -75E5,
                            z = -75E4,
                        })
                    elseif state.direction == '+Z' then
                        table.insert(positions, {
                            x = 0,
                            y = 0,
                            z = 5000000,
                        })
                        table.insert(positions, {
                            x = 750000,
                            y = 750000,
                            z = 7500000,
                        })
                        table.insert(positions, {
                            x = -75E4,
                            y = -75E4,
                            z = 7500000,
                        })
                    elseif state.direction == '-Z' then
                        table.insert(positions, {
                            x = 0,
                            y = 0,
                            z = -5E6,
                        })
                        table.insert(positions, {
                            x = 750000,
                            y = 750000,
                            z = -75E5,
                        })
                        table.insert(positions, {
                            x = -75E4,
                            y = -75E4,
                            z = -75E5,
                        })
                    elseif state.direction == '+X' then
                        table.insert(positions, {
                            x = 5000000,
                            y = 0,
                            z = 0,
                        })
                        table.insert(positions, {
                            x = 7500000,
                            y = 750000,
                            z = 750000,
                        })
                        table.insert(positions, {
                            x = 7500000,
                            y = -75E4,
                            z = -75E4,
                        })
                    elseif state.direction == '-X' then
                        table.insert(positions, {
                            x = -5E6,
                            y = 0,
                            z = 0,
                        })
                        table.insert(positions, {
                            x = -75E5,
                            y = 750000,
                            z = 750000,
                        })
                        table.insert(positions, {
                            x = -75E5,
                            y = -75E4,
                            z = -75E4,
                        })
                    end

                    return positions
                end
                local function generateBreakNullPositions()
                    local positions = {}
                    local breakValue = 1e16
                    local farCoords = {
                        -1E8,
                        -5E7,
                        -25E6,
                        -1E7,
                        10000000,
                        25000000,
                        50000000,
                        100000000,
                    }

                    for i = 1, 20 do
                        local x, y, z

                        if state.direction == '+Y' then
                            x = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                            y = breakValue
                            z = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                        elseif state.direction == '-Y' then
                            x = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                            y = -breakValue
                            z = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                        elseif state.direction == '+Z' then
                            x = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                            y = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                            z = breakValue
                        elseif state.direction == '-Z' then
                            x = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                            y = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                            z = -breakValue
                        elseif state.direction == '+X' then
                            x = breakValue
                            y = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                            z = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                        elseif state.direction == '-X' then
                            x = -breakValue
                            y = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                            z = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                        end

                        table.insert(positions, {
                            x = x,
                            y = y,
                            z = z,
                        })
                    end

                    if state.direction == '+Y' then
                        table.insert(positions, {
                            x = 0,
                            y = 1e16,
                            z = 0,
                        })
                        table.insert(positions, {
                            x = 75000000,
                            y = 1e16,
                            z = 75000000,
                        })
                        table.insert(positions, {
                            x = -75E6,
                            y = 1e16,
                            z = -75E6,
                        })
                    elseif state.direction == '-Y' then
                        table.insert(positions, {
                            x = 0,
                            y = -1E16,
                            z = 0,
                        })
                        table.insert(positions, {
                            x = 75000000,
                            y = -1E16,
                            z = 75000000,
                        })
                        table.insert(positions, {
                            x = -75E6,
                            y = -1E16,
                            z = -75E6,
                        })
                    elseif state.direction == '+Z' then
                        table.insert(positions, {
                            x = 0,
                            y = 0,
                            z = 1e16,
                        })
                        table.insert(positions, {
                            x = 75000000,
                            y = 75000000,
                            z = 1e16,
                        })
                        table.insert(positions, {
                            x = -75E6,
                            y = -75E6,
                            z = 1e16,
                        })
                    elseif state.direction == '-Z' then
                        table.insert(positions, {
                            x = 0,
                            y = 0,
                            z = -1E16,
                        })
                        table.insert(positions, {
                            x = 75000000,
                            y = 75000000,
                            z = -1E16,
                        })
                        table.insert(positions, {
                            x = -75E6,
                            y = -75E6,
                            z = -1E16,
                        })
                    elseif state.direction == '+X' then
                        table.insert(positions, {
                            x = 1e16,
                            y = 0,
                            z = 0,
                        })
                        table.insert(positions, {
                            x = 1e16,
                            y = 75000000,
                            z = 75000000,
                        })
                        table.insert(positions, {
                            x = 1e16,
                            y = -75E6,
                            z = -75E6,
                        })
                    elseif state.direction == '-X' then
                        table.insert(positions, {
                            x = -1E16,
                            y = 0,
                            z = 0,
                        })
                        table.insert(positions, {
                            x = -1E16,
                            y = 75000000,
                            z = 75000000,
                        })
                        table.insert(positions, {
                            x = -1E16,
                            y = -75E6,
                            z = -75E6,
                        })
                    end

                    return positions
                end

                loopManager:AddHeartbeat('void_hide', function()
                    if not lib.Flags.void_hide_enabled then
                        if not state.wasSynced then
                            if state.syncDelayActive then
                                state.syncDelayActive = false
                                state.syncDelayTimer = 0
                            end
                            if desync and desync.syncWithPlayer then
                                local playerPing = cache.getPing()

                                desync:syncWithPlayer(playerPing + 0.05)
                            end

                            state.wasSynced = true
                        end

                        return
                    end

                    state.wasSynced = false

                    if auto_stomp and auto_stomp:isStompingInProgress() then
                        return
                    end
                    if state.syncDelayActive then
                        state.syncDelayTimer = state.syncDelayTimer + 0.016

                        if state.syncDelayTimer >= state.syncDelayDuration then
                            state.syncDelayActive = false
                            state.syncDelayTimer = 0
                        end

                        return
                    end

                    local x, y, z

                    if state.pattern == 'Deep Void' then
                        local currentTime = tick()

                        if currentTime - state.lastSwitch < state.switchSpeed then
                            return
                        end
                        if #state.deepVoidPositions == 0 then
                            state.deepVoidPositions = generateDeepVoidPositions()
                        end

                        state.currentDeepVoidIndex = (state.currentDeepVoidIndex % #state.deepVoidPositions) + 1

                        local base = state.deepVoidPositions[state.currentDeepVoidIndex]

                        x = base.x * state.depthMultiplier
                        y = base.y * state.depthMultiplier
                        z = base.z * state.depthMultiplier
                        state.lastSwitch = currentTime
                    elseif state.pattern == 'Break Null' then
                        local currentTime = tick()

                        if currentTime - state.lastSwitch < state.switchSpeed then
                            return
                        end
                        if #state.breakNullPositions == 0 then
                            state.breakNullPositions = generateBreakNullPositions()
                        end

                        state.currentBreakNullIndex = (state.currentBreakNullIndex % #state.breakNullPositions) + 1

                        local base = state.breakNullPositions[state.currentBreakNullIndex]

                        x = base.x
                        y = base.y
                        z = base.z
                        state.lastSwitch = currentTime
                    elseif state.pattern == 'World Random' then
                        x = (math.random() - 0.5) * 2 * 10000000000000000
                        y = (math.random() - 0.5) * 2 * 10000000000000000
                        z = (math.random() - 0.5) * 2 * 10000000000000000
                    end
                    if desync then
                        if desync.moveTo then
                            desync:moveTo(x, y, z, 30, 'voidHide')
                        elseif desync.moveDesyncTo then
                            desync:moveDesyncTo(x, y, z, 30, 'voidHide')
                        end
                    end
                end)

                function void_hide:setEnabled(enabled)
                    state.enabled = enabled
                    lib.Flags.void_hide_enabled = enabled
                end
                function void_hide:setPattern(pattern)
                    state.pattern = pattern

                    if pattern == 'Deep Void' then
                        state.deepVoidPositions = generateDeepVoidPositions()
                        state.currentDeepVoidIndex = 1
                    elseif pattern == 'Break Null' then
                        state.breakNullPositions = generateBreakNullPositions()
                        state.currentBreakNullIndex = 1
                    end

                    state.lastSwitch = 0
                end
                function void_hide:setDirection(direction)
                    state.direction = direction
                    state.deepVoidPositions = generateDeepVoidPositions()
                    state.breakNullPositions = generateBreakNullPositions()
                    state.currentDeepVoidIndex = 1
                    state.currentBreakNullIndex = 1
                    state.lastSwitch = 0
                end
                function void_hide:setSwitchSpeed(speed)
                    state.switchSpeed = speed
                end
                function void_hide:setDepthMultiplier(multiplier)
                    state.depthMultiplier = multiplier
                end
                function void_hide:startSyncDelay(playerPing)
                    state.syncDelayDuration = playerPing + 0.03
                    state.syncDelayTimer = 0
                    state.syncDelayActive = true
                end
                function void_hide:isSyncDelayActive()
                    return state.syncDelayActive
                end

                return void_hide
            end
        end

        function __M.p(): typeof(__modImpl())
            local v = __M.cache.p

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.p = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local cache = __M.a()

            return function(api)
                local void_reload = {}
                local lp, loopManager, lib, desync = api.lp, api.loopManager, api.lib, api.desync
                local mainEvent = cache.getMainEvent()
                local state = {
                    enabled = false,
                    breakDirection = '-Y',
                    breakSwitchSpeed = 0.05,
                    breakNullPositions = {},
                    currentBreakNullIndex = 1,
                    lastBreakNullSwitch = 0,
                    wasInVoid = false,
                }

                local function isReloading()
                    if not lp.Character then
                        return false
                    end

                    local bodyEffects = lp.Character:FindFirstChild('BodyEffects')

                    if not bodyEffects then
                        return false
                    end

                    local reloadValue = bodyEffects:FindFirstChild('Reload')

                    return reloadValue and reloadValue:IsA('BoolValue') and reloadValue.Value == true
                end
                local function needsReload()
                    if not lp.Character then
                        return false
                    end

                    for _, tool in ipairs(lp.Character:GetChildren())do
                        if tool:IsA('Tool') and tool:FindFirstChild('Ammo') and tool.Ammo.Value <= 0 then
                            return true
                        end
                    end

                    return false
                end
                local function reloadAllTools()
                    if not lp.Character then
                        return
                    end

                    for _, tool in ipairs(lp.Character:GetChildren())do
                        if tool:IsA('Tool') and tool:FindFirstChild('Ammo') and tool.Ammo.Value <= 0 then
                            pcall(function()
                                mainEvent:FireServer('Reload', tool)
                            end)
                        end
                    end
                end
                local function generateBreakNullPositions()
                    local positions = {}
                    local breakValue = 1e16
                    local farCoords = {
                        -1E8,
                        -5E7,
                        -25E6,
                        -1E7,
                        10000000,
                        25000000,
                        50000000,
                        100000000,
                    }

                    for i = 1, 20 do
                        local x, y, z

                        if state.breakDirection == '+Y' then
                            x = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                            y = breakValue
                            z = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                        elseif state.breakDirection == '-Y' then
                            x = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                            y = -breakValue
                            z = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                        elseif state.breakDirection == '+Z' then
                            x = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                            y = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                            z = breakValue
                        elseif state.breakDirection == '-Z' then
                            x = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                            y = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                            z = -breakValue
                        elseif state.breakDirection == '+X' then
                            x = breakValue
                            y = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                            z = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                        elseif state.breakDirection == '-X' then
                            x = -breakValue
                            y = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                            z = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                        end

                        table.insert(positions, {
                            x = x,
                            y = y,
                            z = z,
                        })
                    end

                    if state.breakDirection == '+Y' then
                        table.insert(positions, {
                            x = 0,
                            y = 1e16,
                            z = 0,
                        })
                        table.insert(positions, {
                            x = 75000000,
                            y = 1e16,
                            z = 75000000,
                        })
                        table.insert(positions, {
                            x = -75E6,
                            y = 1e16,
                            z = -75E6,
                        })
                    elseif state.breakDirection == '-Y' then
                        table.insert(positions, {
                            x = 0,
                            y = -1E16,
                            z = 0,
                        })
                        table.insert(positions, {
                            x = 75000000,
                            y = -1E16,
                            z = 75000000,
                        })
                        table.insert(positions, {
                            x = -75E6,
                            y = -1E16,
                            z = -75E6,
                        })
                    elseif state.breakDirection == '+Z' then
                        table.insert(positions, {
                            x = 0,
                            y = 0,
                            z = 1e16,
                        })
                        table.insert(positions, {
                            x = 75000000,
                            y = 75000000,
                            z = 1e16,
                        })
                        table.insert(positions, {
                            x = -75E6,
                            y = -75E6,
                            z = 1e16,
                        })
                    elseif state.breakDirection == '-Z' then
                        table.insert(positions, {
                            x = 0,
                            y = 0,
                            z = -1E16,
                        })
                        table.insert(positions, {
                            x = 75000000,
                            y = 75000000,
                            z = -1E16,
                        })
                        table.insert(positions, {
                            x = -75E6,
                            y = -75E6,
                            z = -1E16,
                        })
                    elseif state.breakDirection == '+X' then
                        table.insert(positions, {
                            x = 1e16,
                            y = 0,
                            z = 0,
                        })
                        table.insert(positions, {
                            x = 1e16,
                            y = 75000000,
                            z = 75000000,
                        })
                        table.insert(positions, {
                            x = 1e16,
                            y = -75E6,
                            z = -75E6,
                        })
                    elseif state.breakDirection == '-X' then
                        table.insert(positions, {
                            x = -1E16,
                            y = 0,
                            z = 0,
                        })
                        table.insert(positions, {
                            x = -1E16,
                            y = 75000000,
                            z = 75000000,
                        })
                        table.insert(positions, {
                            x = -1E16,
                            y = -75E6,
                            z = -75E6,
                        })
                    end

                    return positions
                end

                function void_reload:setEnabled(enabled)
                    state.enabled = enabled
                    lib.Flags.void_reload_enabled = enabled

                    if enabled then
                        self:startLoop()
                    else
                        self:stopLoop()
                    end
                end
                function void_reload:setBreakDirection(direction)
                    state.breakDirection = direction
                    state.breakNullPositions = generateBreakNullPositions()
                    state.currentBreakNullIndex = 1
                    state.lastBreakNullSwitch = 0
                end
                function void_reload:setBreakSwitchSpeed(speed)
                    state.breakSwitchSpeed = speed
                end
                function void_reload:isInVoid()
                    return state.wasInVoid
                end

                do
                    local function voidReloadLoop()
                        if not lib.Flags.void_reload_enabled then
                            return
                        end
                        if not (isReloading() or needsReload()) then
                            if state.wasInVoid then
                                if desync and desync.syncWithPlayer then
                                    desync:syncWithPlayer()
                                end

                                state.wasInVoid = false
                            end

                            return
                        end

                        state.wasInVoid = true

                        local currentTime = tick()

                        if currentTime - state.lastBreakNullSwitch < state.breakSwitchSpeed then
                            return
                        end
                        if #state.breakNullPositions == 0 then
                            state.breakNullPositions = generateBreakNullPositions()
                        end

                        state.currentBreakNullIndex = (state.currentBreakNullIndex % #state.breakNullPositions) + 1

                        local base = state.breakNullPositions[state.currentBreakNullIndex]

                        state.lastBreakNullSwitch = currentTime

                        if desync and desync.moveTo then
                            desync:moveTo(base.x, base.y, base.z, 60, 'voidReload')
                        end

                        reloadAllTools()
                    end

                    local conn

                    local function start()
                        if conn then
                            return
                        end

                        conn = loopManager:AddHeartbeat('void_reload_main', function(
                        )
                            voidReloadLoop()
                        end)
                    end
                    local function stop()
                        if conn then
                            loopManager:RemoveHeartbeat('void_reload_main')

                            conn = nil
                        end
                        if state.wasInVoid then
                            if desync and desync.syncWithPlayer then
                                desync:syncWithPlayer()
                            end

                            state.wasInVoid = false
                        end
                    end

                    function void_reload:startLoop()
                        start()
                    end
                    function void_reload:stopLoop()
                        stop()
                    end
                end

                return void_reload
            end
        end

        function __M.q(): typeof(__modImpl())
            local v = __M.cache.q

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.q = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local cache = __M.a()

            return function(api)
                local follow_target = {}
                local lp, loopManager, lib, targeting, desync, void_hide, auto_stomp = api.lp, api.loopManager, api.lib, api.targeting, api.desync, api.void_hide, api.auto_stomp
                local breakValue = 1e16
                local farCoords = {
                    -1E8,
                    -5E7,
                    -25E6,
                    -1E7,
                    10000000,
                    25000000,
                    50000000,
                    100000000,
                }

                local function getDeepVoid()
                    local x = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)
                    local y = -breakValue
                    local z = farCoords[math.random(1, #farCoords)] + math.random(
-1E4, 10000)

                    return cache.vec3(x, y, z)
                end

                local state = {
                    enabled = false,
                    mode = 'Circle',
                    radius = 15,
                    speed = 1,
                    angle = 0,
                    lastLoop = 0,
                    loopCd = 50,
                    wasActive = false,
                    lastTarget = nil,
                    randomStrengthX = 30,
                    randomStrengthY = 30,
                    randomStrengthZ = 30,
                    resolveEnabled = false,
                    resolveMode = 'predict',
                    predictionType = 'Custom',
                    predictionMultiplier = 2,
                    lastTargetPosition = nil,
                    lastTargetTime = nil,
                    expMinDist = 10,
                    expMaxDist = 100,
                    expDirection = 1,
                    expCurrentDist = 10,
                    artRefreshTime = 3,
                    artForgiveness = 14.4,
                    artOutOfVoidBonus = 13,
                    artDistancePenalty = 3.2,
                    artMinMatches = 3,
                    artPositionLog = {},
                    artLastRefresh = 0,
                    artFoundPattern = nil,
                    experimentalState = 'around',
                    experimentalTimer = 0,
                    experimentalAroundDuration = 3,
                    experimentalVoidDuration = 10,
                    experimentalV2State = 'around',
                    experimentalV2Timer = 0,
                    experimentalV2VoidDuration = 4,
                }

                local function isTargetValid()
                    if not targeting.target then
                        return false
                    end

                    local targetHum = targeting.target:FindFirstChildOfClass('Humanoid')

                    if not targetHum or targetHum.Health <= 0 then
                        return false
                    end
                    if lib.Flags.follow_target_check_ff ~= false then
                        if targeting.target:FindFirstChild('ForceField') or targeting.target:FindFirstChild('ForceField_TESTING') then
                            return false
                        end
                    end

                    local targetBodyEffects = targeting.target:FindFirstChild('BodyEffects')

                    if targetBodyEffects then
                        local koValue = targetBodyEffects:FindFirstChild('K.O')

                        if lib.Flags.follow_target_check_ko ~= false and koValue and koValue.Value == true then
                            return false
                        end

                        local sDeath = targetBodyEffects:FindFirstChild('SDeath')

                        if lib.Flags.follow_target_check_dead ~= false and sDeath and sDeath.Value == true then
                            return false
                        end

                        local grabbed = targetBodyEffects:FindFirstChild('Grabbed')

                        if lib.Flags.follow_target_check_grabbed ~= false and grabbed and grabbed.Value == true then
                            return false
                        end
                    end
                    if not targeting.target:FindFirstChild('HumanoidRootPart') then
                        return false
                    end
                    if not lp.Character then
                        return false
                    end

                    local lpHum = lp.Character:FindFirstChildOfClass('Humanoid')

                    if not lpHum or lpHum.Health <= 0 then
                        return false
                    end

                    local tool

                    for _, item in ipairs(lp.Character:GetChildren())do
                        if item:IsA('Tool') then
                            tool = item

                            break
                        end
                    end

                    return tool ~= nil
                end
                local function resolvePredictPosition(targetRoot, targetPos)
                    local currentTime = tick()

                    if state.lastTargetPosition and state.lastTargetTime then
                        local deltaTime = currentTime - state.lastTargetTime

                        if deltaTime > 0 and deltaTime < 1 then
                            local calculatedVelocity = (targetPos - state.lastTargetPosition) / deltaTime
                            local velocityMagnitude = calculatedVelocity.Magnitude

                            if state.predictionType == 'Custom' then
                                if velocityMagnitude > 0.001 then
                                    local predictionStrength = state.predictionMultiplier * 0.01
                                    local distance = (targetPos - state.lastTargetPosition).Magnitude
                                    local predictedDistance = (distance / deltaTime) * predictionStrength
                                    local direction = (targetPos - state.lastTargetPosition).Unit

                                    targetPos = targetPos + direction * predictedDistance
                                end
                            elseif state.predictionType == 'Regular' then
                                if velocityMagnitude > 0.001 then
                                    local predictionStrength = state.predictionMultiplier * 0.01

                                    targetPos = targetPos + (calculatedVelocity * predictionStrength)
                                end
                            end
                        end
                    end

                    state.lastTargetPosition = targetRoot.Position
                    state.lastTargetTime = currentTime

                    return targetPos
                end
                local function resolveExponentialPosition(
                    targetRoot,
                    targetPos
                )
                    local step = (state.expMaxDist - state.expMinDist) / 10

                    state.expCurrentDist = state.expCurrentDist + (step * state.expDirection)

                    if state.expCurrentDist >= state.expMaxDist then
                        state.expCurrentDist = state.expMaxDist
                        state.expDirection = -1
                    elseif state.expCurrentDist <= state.expMinDist then
                        state.expCurrentDist = state.expMinDist
                        state.expDirection = 1
                    end

                    local upVector = targetRoot.CFrame.UpVector

                    return targetPos + (upVector * state.expCurrentDist)
                end
                local function resolveArtificalPosition(targetRoot, targetPos)
                    local now = tick()

                    if now - state.artLastRefresh >= state.artRefreshTime then
                        state.artPositionLog = {}
                        state.artFoundPattern = nil
                        state.artLastRefresh = now
                    end

                    local forgiveness = state.artForgiveness
                    local distFromCenter = cache.abs(targetPos.X) + cache.abs(targetPos.Z)
                    local isOutOfVoid = distFromCenter < 7000

                    if isOutOfVoid then
                        forgiveness = forgiveness + state.artOutOfVoidBonus
                    end

                    local myChar = lp.Character

                    if myChar and myChar:FindFirstChild('HumanoidRootPart') then
                        local dist = (targetPos - myChar.HumanoidRootPart.Position).Magnitude
                        local penalty = (dist / 100) * state.artDistancePenalty

                        forgiveness = cache.clamp(forgiveness - penalty, 1, 1000)
                    end

                    cache.insert(state.artPositionLog, {
                        pos = targetPos,
                        time = now,
                    })

                    if #state.artPositionLog > 500 then
                        local newLog = {}

                        for i = #state.artPositionLog - 300, #state.artPositionLog do
                            cache.insert(newLog, state.artPositionLog[i])
                        end

                        state.artPositionLog = newLog
                    end

                    local matches = {}

                    for i = 1, #state.artPositionLog do
                        local p1 = state.artPositionLog[i].pos
                        local count = 0
                        local sum = cache.vec3(0, 0, 0)

                        for j = 1, #state.artPositionLog do
                            if i ~= j then
                                local p2 = state.artPositionLog[j].pos
                                local diff = (p1 - p2).Magnitude

                                if diff <= forgiveness then
                                    count = count + 1
                                    sum = sum + p2
                                end
                            end
                        end

                        if count >= state.artMinMatches then
                            cache.insert(matches, {
                                pos = (sum + p1) / (count + 1),
                                count = count,
                            })
                        end
                    end

                    local best

                    for _, m in ipairs(matches)do
                        if not best or m.count > best.count then
                            best = m
                        end
                    end

                    if best then
                        state.artFoundPattern = best.pos

                        return best.pos
                    end

                    return getDeepVoid()
                end
                local function getResolvedPosition(targetRoot)
                    local basePos = targetRoot.Position

                    if not state.resolveEnabled then
                        return basePos
                    end
                    if state.resolveMode == 'predict' then
                        return resolvePredictPosition(targetRoot, basePos)
                    elseif state.resolveMode == 'exponential' then
                        return resolveExponentialPosition(targetRoot, basePos)
                    elseif state.resolveMode == 'artifical' then
                        return resolveArtificalPosition(targetRoot, basePos)
                    end

                    return basePos
                end
                local function moveToPosition(pos)
                    if desync then
                        if desync.moveTo then
                            desync:moveTo(pos.X, pos.Y, pos.Z, 50, 'followTarget')
                        elseif desync.moveDesyncTo then
                            desync:moveDesyncTo(pos.X, pos.Y, pos.Z, 50, 'followTarget')
                        end
                    end
                end

                loopManager:AddHeartbeat('follow_target', function()
                    if not lib.Flags.follow_target_enabled then
                        if state.wasActive then
                            state.wasActive = false
                            state.lastTarget = nil

                            if desync and desync.syncWithPlayer then
                                desync:syncWithPlayer(cache.getPing() + 0.05)
                            end
                        end

                        return
                    end
                    if not isTargetValid() then
                        if state.wasActive then
                            state.wasActive = false
                            state.lastTarget = nil

                            if desync and desync.syncWithPlayer then
                                desync:syncWithPlayer(cache.getPing() + 0.05)
                            end
                        end

                        return
                    end
                    if state.lastTarget ~= targeting.target then
                        state.lastTarget = targeting.target
                        state.angle = 0
                        state.expCurrentDist = state.expMinDist
                        state.expDirection = 1
                        state.artPositionLog = {}
                        state.artFoundPattern = nil
                        state.artLastRefresh = tick()
                    end

                    state.wasActive = true

                    local targetRoot = targeting.target:FindFirstChild('HumanoidRootPart')

                    if not targetRoot then
                        return
                    end

                    local targetPos = getResolvedPosition(targetRoot)

                    if state.mode == 'Random' then
                        local offsetX = (math.random() - 0.5) * 2 * state.randomStrengthX
                        local offsetY = (math.random() - 0.5) * 2 * state.randomStrengthY
                        local offsetZ = (math.random() - 0.5) * 2 * state.randomStrengthZ

                        moveToPosition(Vector3.new(targetPos.X + offsetX, targetPos.Y + offsetY, targetPos.Z + offsetZ))

                        return
                    end
                    if state.mode == 'Experimental' then
                        state.experimentalTimer = state.experimentalTimer + 0.016

                        if state.experimentalState == 'around' and state.experimentalTimer >= state.experimentalAroundDuration then
                            state.experimentalState = 'void'
                            state.experimentalTimer = 0
                        elseif state.experimentalState == 'void' and state.experimentalTimer >= state.experimentalVoidDuration then
                            state.experimentalState = 'around'
                            state.experimentalTimer = 0
                        end
                        if state.experimentalState == 'around' then
                            local offsetX = (math.random() - 0.5) * 2 * state.randomStrengthX
                            local offsetY = (math.random() - 0.5) * 2 * state.randomStrengthY
                            local offsetZ = (math.random() - 0.5) * 2 * state.randomStrengthZ

                            moveToPosition(Vector3.new(targetPos.X + offsetX, targetPos.Y + offsetY, targetPos.Z + offsetZ))
                        else
                            local huge = 10000000000000000

                            moveToPosition(Vector3.new(targetPos.X + (math.random() - 0.5) * 2 * huge, targetPos.Y + (math.random() - 0.5) * 2 * huge, targetPos.Z + (math.random() - 0.5) * 2 * huge))
                        end

                        return
                    end
                    if state.mode == 'Experimental v2' then
                        local aroundDuration = cache.getPing() + 0.02

                        state.experimentalV2Timer = state.experimentalV2Timer + 0.016

                        if state.experimentalV2State == 'around' and state.experimentalV2Timer >= aroundDuration then
                            state.experimentalV2State = 'void'
                            state.experimentalV2Timer = 0
                        elseif state.experimentalV2State == 'void' and state.experimentalV2Timer >= state.experimentalV2VoidDuration then
                            state.experimentalV2State = 'around'
                            state.experimentalV2Timer = 0
                        end
                        if state.experimentalV2State == 'around' then
                            local offsetX = (math.random() - 0.5) * 2 * state.randomStrengthX
                            local offsetY = (math.random() - 0.5) * 2 * state.randomStrengthY
                            local offsetZ = (math.random() - 0.5) * 2 * state.randomStrengthZ

                            moveToPosition(Vector3.new(targetPos.X + offsetX, targetPos.Y + offsetY, targetPos.Z + offsetZ))
                        else
                            local huge = 10000000000000000

                            moveToPosition(Vector3.new(targetPos.X + (math.random() - 0.5) * 2 * huge, targetPos.Y + (math.random() - 0.5) * 2 * huge, targetPos.Z + (math.random() - 0.5) * 2 * huge))
                        end

                        return
                    end

                    local now = tick()

                    if now - state.lastLoop < state.loopCd / 1000 then
                        return
                    end

                    state.lastLoop = now

                    if state.mode == 'Circle' then
                        state.angle = state.angle + (state.speed * 0.016 * 4 * 10 * 5)

                        if state.angle >= 360 then
                            state.angle = state.angle - 360
                        end

                        local angleRad = math.rad(state.angle)

                        moveToPosition(Vector3.new(targetPos.X + math.cos(angleRad) * state.radius, targetPos.Y, targetPos.Z + math.sin(angleRad) * state.radius))
                    elseif state.mode == 'SpiralY' then
                        state.angle = state.angle + (state.speed * 0.016 * 4 * 10 * 5)

                        if state.angle >= 360 then
                            state.angle = state.angle - 360
                        end

                        local angleRad = math.rad(state.angle)

                        moveToPosition(Vector3.new(targetPos.X + math.cos(angleRad) * state.radius, targetPos.Y + math.sin(angleRad) * state.radius, targetPos.Z))
                    end
                end)

                function follow_target:setEnabled(e)
                    state.enabled = e
                    lib.Flags.follow_target_enabled = e
                end
                function follow_target:setMode(m)
                    state.mode = m
                    state.angle = 0
                end
                function follow_target:setRadius(r)
                    state.radius = r
                end
                function follow_target:setSpeed(s)
                    state.speed = s
                end
                function follow_target:setRandomStrengthX(v)
                    state.randomStrengthX = v
                end
                function follow_target:setRandomStrengthY(v)
                    state.randomStrengthY = v
                end
                function follow_target:setRandomStrengthZ(v)
                    state.randomStrengthZ = v
                end
                function follow_target:setResolveEnabled(v)
                    state.resolveEnabled = v
                end
                function follow_target:setResolveMode(m)
                    state.resolveMode = m
                end
                function follow_target:setPredictionType(t)
                    state.predictionType = t
                end
                function follow_target:setPredictionMultiplier(m)
                    state.predictionMultiplier = m
                end
                function follow_target:setExpMinDist(v)
                    state.expMinDist = tonumber(v) or 10
                    state.expCurrentDist = state.expMinDist
                end
                function follow_target:setExpMaxDist(v)
                    state.expMaxDist = tonumber(v) or 100
                end
                function follow_target:setArtRefreshTime(v)
                    state.artRefreshTime = v
                end
                function follow_target:setArtForgiveness(v)
                    state.artForgiveness = v
                end
                function follow_target:setArtOutOfVoidBonus(v)
                    state.artOutOfVoidBonus = v
                end
                function follow_target:setArtDistancePenalty(v)
                    state.artDistancePenalty = v
                end
                function follow_target:setArtMinMatches(v)
                    state.artMinMatches = v
                end

                return follow_target
            end
        end

        function __M.r(): typeof(__modImpl())
            local v = __M.cache.r

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.r = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local cache = __M.a()

            return function(api)
                local network_desync = {}
                local lp, loopManager, lib = api.lp, api.loopManager, api.lib
                local mode = 'Aggressive'
                local canSetHidden = sethiddenproperty ~= nil

                loopManager:AddHeartbeat('network_desync', function()
                    if not lib.Flags.network_desync_enabled then
                        return
                    end
                    if not canSetHidden then
                        return
                    end

                    local char = lp.Character

                    if not char then
                        return
                    end

                    local hrp = char:FindFirstChild('HumanoidRootPart')

                    if not hrp then
                        return
                    end
                    if mode == 'Slow' then
                        pcall(function()
                            sethiddenproperty(hrp, 'NetworkIsSleeping', true)
                        end)
                        task.wait(0.1)
                        pcall(function()
                            sethiddenproperty(hrp, 'NetworkIsSleeping', false)
                        end)
                    else
                        pcall(function()
                            sethiddenproperty(hrp, 'NetworkIsSleeping', true)
                        end)
                        cache.RunService.PostSimulation:Wait()
                        pcall(function()
                            sethiddenproperty(hrp, 'NetworkIsSleeping', false)
                        end)
                    end
                end)

                function network_desync:setMode(m)
                    mode = m
                end

                return network_desync
            end
        end

        function __M.s(): typeof(__modImpl())
            local v = __M.cache.s

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.s = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(api)
                local boxes = {}

                local function createFrame(
                    name,
                    parent,
                    size,
                    pos,
                    transparent,
                    borderSize
                )
                    local frame = Instance.new('Frame')

                    frame.Name = name
                    frame.BackgroundTransparency = transparent or 1
                    frame.Size = size or UDim2.new(1, 0, 1, 0)
                    frame.Position = pos or UDim2.new(0, 0, 0, 0)
                    frame.BorderSizePixel = borderSize or 0
                    frame.Parent = parent

                    return frame
                end
                local function updateBoxVisibility(boxData, visible)
                    if boxData.box then
                        boxData.box.Visible = visible
                    end
                end
                local function addStroke(parent, thickness, color)
                    local stroke = Instance.new('UIStroke')

                    stroke.Name = 'Stroke'
                    stroke.Thickness = thickness
                    stroke.Color = color
                    stroke.Parent = parent

                    return stroke
                end
                local function addGradient(parent, rotation)
                    local grad = Instance.new('UIGradient')

                    grad.Rotation = rotation or 45
                    grad.Parent = parent

                    return grad
                end

                function boxes:create(gui, player)
                    local box = createFrame('Box_' .. player.Name, gui, UDim2.new(0, 100, 0, 100), UDim2.new(0, 0, 0, 0), 1)
                    local stroke = addStroke(box, 1.1, Color3.fromRGB(255, 255, 255))
                    local gradient = addGradient(stroke, 45)
                    local boxFill = createFrame('BoxFill', box, UDim2.new(1, 0, 1, 0), UDim2.new(0, 0, 0, 0), 0.7)

                    boxFill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    boxFill.Visible = false

                    local fillGradient = addGradient(boxFill, 45)
                    local outlineFrame = createFrame('OutlineFrame', box, UDim2.new(1, 2, 1, 2), UDim2.new(0, 
-1, 0, -1))
                    local outlineStroke = addStroke(outlineFrame, 0.9, Color3.fromRGB(0, 0, 0))
                    local inlineFrame = createFrame('InlineFrame', box, UDim2.new(1, 
-2, 1, -2), UDim2.new(0, 1, 0, 1))
                    local inlineStroke = addStroke(inlineFrame, 0.9, Color3.fromRGB(0, 0, 0))
                    local overrideImage = Instance.new('ImageLabel')

                    overrideImage.Name = 'OverrideImage'
                    overrideImage.BackgroundTransparency = 1
                    overrideImage.Size = UDim2.new(1, 0, 1, 0)
                    overrideImage.BorderSizePixel = 0
                    overrideImage.Visible = false
                    overrideImage.ScaleType = Enum.ScaleType.Stretch
                    overrideImage.Parent = boxFill

                    return {
                        box = box,
                        stroke = stroke,
                        gradient = gradient,
                        boxFill = boxFill,
                        fillGradient = fillGradient,
                        outlineFrame = outlineFrame,
                        outlineStroke = outlineStroke,
                        inlineFrame = inlineFrame,
                        inlineStroke = inlineStroke,
                        overrideImage = overrideImage,
                    }
                end
                function boxes:remove(boxData)
                    if boxData and boxData.box then
                        pcall(function()
                            boxData.box:Destroy()
                        end)
                    end
                end
                function boxes:update(boxData, settings, espData)
                    if not boxData or not boxData.box then
                        return
                    end

                    boxData.box.Visible = settings.boxEnabled

                    if not settings.boxEnabled then
                        return
                    end

                    boxData.box.Position = UDim2.new(0, espData.lastBoxX, 0, espData.lastBoxY)
                    boxData.box.Size = UDim2.new(0, espData.lastBoxWidth, 0, espData.lastBoxHeight)

                    if boxData.outlineStroke then
                        boxData.outlineStroke.Color = settings.boxOutlineColor
                        boxData.outlineStroke.Transparency = settings.boxOutlineAlpha
                    end
                    if boxData.inlineStroke then
                        boxData.inlineStroke.Color = settings.boxInlineColor
                        boxData.inlineStroke.Transparency = settings.boxInlineAlpha
                    end

                    local hasOverride = settings.boxFillOverrideEnabled and settings.boxFillOverrideImage and settings.boxFillOverrideImage ~= ''

                    if boxData.boxFill then
                        boxData.boxFill.Visible = hasOverride or settings.boxFillEnabled
                    end
                    if boxData.overrideImage then
                        boxData.overrideImage.Visible = hasOverride
                    end
                end
                function boxes:updateGradient(boxData, settings)
                    if boxData.gradient then
                        boxData.gradient.Color = ColorSequence.new({
                            ColorSequenceKeypoint.new(0, settings.boxGradientColor1),
                            ColorSequenceKeypoint.new(0.33, settings.boxGradientColor2),
                            ColorSequenceKeypoint.new(0.66, settings.boxGradientColor3),
                            ColorSequenceKeypoint.new(1, settings.boxGradientColor4),
                        })
                    end
                    if boxData.overrideImage then
                        boxData.overrideImage.ImageColor3 = settings.boxFillOverrideColor
                        boxData.overrideImage.ImageTransparency = 1 - settings.boxFillOverrideAlpha
                    end

                    local hasOverride = settings.boxFillOverrideEnabled and settings.boxFillOverrideImage and settings.boxFillOverrideImage ~= ''

                    if boxData.fillGradient and boxData.boxFill and boxData.boxFill.Parent and not hasOverride then
                        boxData.fillGradient.Color = ColorSequence.new({
                            ColorSequenceKeypoint.new(0, settings.boxFillGradientColor1),
                            ColorSequenceKeypoint.new(0.5, settings.boxFillGradientColor2),
                            ColorSequenceKeypoint.new(1, settings.boxFillGradientColor3),
                        })
                        boxData.fillGradient.Transparency = NumberSequence.new({
                            NumberSequenceKeypoint.new(0, settings.boxFillGradientAlpha1),
                            NumberSequenceKeypoint.new(0.5, settings.boxFillGradientAlpha2),
                            NumberSequenceKeypoint.new(1, settings.boxFillGradientAlpha3),
                        })
                        boxData.fillGradient.Rotation = settings.boxFillRotateAnimationEnabled and (boxData.fillGradient.Rotation + settings.boxFillRotateAnimationSpeed) % 360 or 45
                    end
                end

                return boxes
            end
        end

        function __M.t(): typeof(__modImpl())
            local v = __M.cache.t

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.t = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local cache = __M.a()

            return function(api)
                local healthbar = {}
                local tweenService = cache.TweenService
                local tweenState = {
                    type = Enum.EasingStyle.Linear,
                    direction = Enum.EasingDirection.InOut,
                    duration = 0.3,
                }
                local barWidth, barThickness = 2, 3

                local function lerpColor(c1, c2, t)
                    return Color3.new(c1.R + (c2.R - c1.R) * t, c1.G + (c2.G - c1.G) * t, c1.B + (c2.B - c1.B) * t)
                end
                local function createBar(gui, player, barName)
                    local outline = Instance.new('Frame')

                    outline.Name = barName .. 'Outline_' .. player.Name
                    outline.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                    outline.BorderSizePixel = 0
                    outline.Visible = false
                    outline.Parent = gui

                    local stroke = Instance.new('UIStroke')

                    stroke.Thickness = 0.9
                    stroke.Color = Color3.fromRGB(0, 0, 0)
                    stroke.Parent = outline

                    local fill = Instance.new('Frame')

                    fill.Name = barName .. 'Fill'
                    fill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    fill.BackgroundTransparency = 0
                    fill.BorderSizePixel = 0
                    fill.AnchorPoint = Vector2.new(0, 1)
                    fill.Position = UDim2.new(0, 0, 1, 0)
                    fill.Size = UDim2.new(1, 0, 1, 0)
                    fill.Parent = outline

                    local gradient = Instance.new('UIGradient')

                    gradient.Rotation = 90
                    gradient.Parent = fill

                    return outline, fill, gradient
                end

                function healthbar:create(gui, player)
                    local outline, fill, gradient = createBar(gui, player, 'HealthBar')

                    return {
                        healthBarOutline = outline,
                        healthBarFill = fill,
                        healthGradient = gradient,
                        lastHealth = 1,
                    }
                end
                function healthbar:remove(barData)
                    if barData and barData.healthBarOutline then
                        pcall(function()
                            barData.healthBarOutline:Destroy()
                        end)
                    end
                end
                function healthbar:update(
                    barData,
                    settings,
                    humanoid,
                    espData,
                    camera
                )
                    if not settings.healthEnabled or not humanoid or not barData.healthBarFill or not barData.healthBarOutline or not espData.lastBoxX then
                        if barData.healthBarOutline then
                            barData.healthBarOutline.Visible = false
                        end

                        return
                    end

                    local currentHealth = math.min(humanoid.Health / humanoid.MaxHealth, 1)
                    local lerpedHealth = barData.lastHealth + (currentHealth - barData.lastHealth) * 0.05

                    barData.lastHealth = lerpedHealth

                    local hrp = humanoid.Parent:FindFirstChild('HumanoidRootPart')

                    if not hrp then
                        barData.healthBarOutline.Visible = false

                        return
                    end

                    local distance = (hrp.Position - camera.CFrame.Position).Magnitude
                    local dynamicOffset = 4.1 * math.clamp(1 + (distance / 100) * 0.2, 1, 1.2)
                    local barThickness = barWidth + 2
                    local barX, barY, barSizeX, barSizeY, isHorizontal

                    if settings.healthBarSide == 'top' then
                        barX, barY, barSizeX, barSizeY, isHorizontal = espData.lastBoxX, espData.lastBoxY - dynamicOffset - barThickness, espData.lastBoxWidth, barThickness, true
                    elseif settings.healthBarSide == 'bottom' then
                        barX, barY, barSizeX, barSizeY, isHorizontal = espData.lastBoxX, espData.lastBoxY + espData.lastBoxHeight + dynamicOffset, espData.lastBoxWidth, barThickness, true
                    elseif settings.healthBarSide == 'right' then
                        barX, barY, barSizeX, barSizeY, isHorizontal = espData.lastBoxX + espData.lastBoxWidth + dynamicOffset, espData.lastBoxY, barWidth, espData.lastBoxHeight, false
                    else
                        barX, barY, barSizeX, barSizeY, isHorizontal = espData.lastBoxX - dynamicOffset - barWidth, espData.lastBoxY, barWidth, espData.lastBoxHeight, false
                    end

                    barData.healthBarOutline.Position = UDim2.new(0, barX, 0, barY)
                    barData.healthBarOutline.Size = UDim2.new(0, barSizeX, 0, barSizeY)
                    barData.healthBarOutline.Visible = true

                    local isInverted = settings.healthBarDirection == 'inverted'
                    local targetSize = isHorizontal and UDim2.new(lerpedHealth, 0, 1, 0) or UDim2.new(1, 0, lerpedHealth, 0)

                    if isHorizontal then
                        barData.healthBarFill.AnchorPoint = isInverted and Vector2.new(1, 0) or Vector2.new(0, 0)
                        barData.healthBarFill.Position = isInverted and UDim2.new(1, 0, 0, 0) or UDim2.new(0, 0, 0, 0)

                        if barData.healthGradient then
                            barData.healthGradient.Rotation = 0
                        end
                    else
                        barData.healthBarFill.AnchorPoint = isInverted and Vector2.new(0, 0) or Vector2.new(0, 1)
                        barData.healthBarFill.Position = isInverted and UDim2.new(0, 0, 0, 0) or UDim2.new(0, 0, 1, 0)

                        if barData.healthGradient then
                            barData.healthGradient.Rotation = 90
                        end
                    end

                    healthbar:applyTween(barData.healthBarFill, targetSize)

                    if barData.healthGradient then
                        if settings.healthAdaptiveHueEnabled then
                            local c1 = lerpColor(settings.healthAdaptiveHueColor, settings.healthGradientColor1, lerpedHealth)
                            local c2 = lerpColor(settings.healthAdaptiveHueColor, settings.healthGradientColor2, lerpedHealth)
                            local c3 = lerpColor(settings.healthAdaptiveHueColor, settings.healthGradientColor3, lerpedHealth)
                            local c4 = lerpColor(settings.healthAdaptiveHueColor, settings.healthGradientColor4, lerpedHealth)

                            barData.healthGradient.Color = ColorSequence.new({
                                ColorSequenceKeypoint.new(0, c1),
                                ColorSequenceKeypoint.new(0.33, c2),
                                ColorSequenceKeypoint.new(0.66, c3),
                                ColorSequenceKeypoint.new(1, c4),
                            })
                        else
                            barData.healthGradient.Color = ColorSequence.new({
                                ColorSequenceKeypoint.new(0, settings.healthGradientColor1),
                                ColorSequenceKeypoint.new(0.33, settings.healthGradientColor2),
                                ColorSequenceKeypoint.new(0.66, settings.healthGradientColor3),
                                ColorSequenceKeypoint.new(1, settings.healthGradientColor4),
                            })
                        end
                    end
                end
                function healthbar:setTweenType(tweenType)
                    local style = Enum.EasingStyle[tweenType]

                    if style then
                        tweenState.type = style
                    else
                        tweenState.type = Enum.EasingStyle.Linear
                    end
                end
                function healthbar:setTweenDuration(duration)
                    tweenState.duration = math.max(0.1, duration)
                end
                function healthbar:applyTween(frame, targetSize)
                    if not frame or not frame.Parent then
                        return
                    end

                    local tweenInfo = TweenInfo.new(tweenState.duration, tweenState.type, tweenState.direction)
                    local tween = tweenService:Create(frame, tweenInfo, {Size = targetSize})

                    if tween then
                        tween:Play()
                    end
                end

                return healthbar
            end
        end

        function __M.u(): typeof(__modImpl())
            local v = __M.cache.u

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.u = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local cache = __M.a()

            return function(api)
                local armorbar = {}
                local tweenService = cache.TweenService
                local tweenState = {
                    type = Enum.EasingStyle.Linear,
                    direction = Enum.EasingDirection.InOut,
                    duration = 0.3,
                }
                local barWidth, barThickness = 2, 3

                local function lerpColor(c1, c2, t)
                    return Color3.new(c1.R + (c2.R - c1.R) * t, c1.G + (c2.G - c1.G) * t, c1.B + (c2.B - c1.B) * t)
                end
                local function createBar(gui, player, barName)
                    local outline = Instance.new('Frame')

                    outline.Name = barName .. 'Outline_' .. player.Name
                    outline.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
                    outline.BorderSizePixel = 0
                    outline.Visible = false
                    outline.Parent = gui

                    local stroke = Instance.new('UIStroke')

                    stroke.Thickness = 0.9
                    stroke.Color = Color3.fromRGB(0, 0, 0)
                    stroke.Parent = outline

                    local fill = Instance.new('Frame')

                    fill.Name = barName .. 'Fill'
                    fill.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
                    fill.BackgroundTransparency = 0
                    fill.BorderSizePixel = 0
                    fill.AnchorPoint = Vector2.new(0, 1)
                    fill.Position = UDim2.new(0, 0, 1, 0)
                    fill.Size = UDim2.new(1, 0, 1, 0)
                    fill.Parent = outline

                    local gradient = Instance.new('UIGradient')

                    gradient.Rotation = 90
                    gradient.Parent = fill

                    return outline, fill, gradient
                end

                function armorbar:create(gui, player)
                    local outline, fill, gradient = createBar(gui, player, 'ArmorBar')

                    return {
                        armorBarOutline = outline,
                        armorBarFill = fill,
                        armorGradient = gradient,
                        lastArmor = 1,
                    }
                end
                function armorbar:remove(barData)
                    if barData and barData.armorBarOutline then
                        pcall(function()
                            barData.armorBarOutline:Destroy()
                        end)
                    end
                end
                function armorbar:update(
                    barData,
                    settings,
                    player,
                    espData,
                    camera
                )
                    if not settings.armorEnabled or not player or not barData.armorBarFill or not barData.armorBarOutline or not espData.lastBoxX then
                        if barData.armorBarOutline then
                            barData.armorBarOutline.Visible = false
                        end

                        return
                    end

                    local character = player.Character

                    if not character then
                        barData.armorBarOutline.Visible = false

                        return
                    end

                    local bodyEffects = character:FindFirstChild('BodyEffects')

                    if not bodyEffects then
                        barData.armorBarOutline.Visible = false

                        return
                    end

                    local armorValue = bodyEffects:FindFirstChild('Armor')

                    if not armorValue then
                        barData.armorBarOutline.Visible = false

                        return
                    end

                    local currentArmor = math.min(armorValue.Value / 130, 1)
                    local lerpedArmor = barData.lastArmor + (currentArmor - barData.lastArmor) * 0.05

                    barData.lastArmor = lerpedArmor

                    local hrp = character:FindFirstChild('HumanoidRootPart')

                    if not hrp then
                        barData.armorBarOutline.Visible = false

                        return
                    end

                    local distance = (hrp.Position - camera.CFrame.Position).Magnitude
                    local dynamicOffset = 4.1 * math.clamp(1 + (distance / 100) * 0.2, 1, 1.2)
                    local barThickness = barWidth + 2
                    local barX, barY, barSizeX, barSizeY, isHorizontal
                    local offset = barWidth + 1

                    if settings.armorBarSide == 'top' then
                        barY = (settings.healthBarSide == 'top' and settings.healthEnabled) and (espData.lastBoxY - dynamicOffset - barThickness - barThickness - 1) or (espData.lastBoxY - dynamicOffset - barThickness)
                        barX, barSizeX, barSizeY, isHorizontal = espData.lastBoxX, espData.lastBoxWidth, barThickness, true
                    elseif settings.armorBarSide == 'bottom' then
                        barY = (settings.healthBarSide == 'bottom' and settings.healthEnabled) and (espData.lastBoxY + espData.lastBoxHeight + dynamicOffset + barThickness + 1) or (espData.lastBoxY + espData.lastBoxHeight + dynamicOffset)
                        barX, barSizeX, barSizeY, isHorizontal = espData.lastBoxX, espData.lastBoxWidth, barThickness, true
                    elseif settings.armorBarSide == 'left' then
                        barX = (settings.healthBarSide == 'left' and settings.healthEnabled) and (espData.lastBoxX - dynamicOffset - offset - offset) or (espData.lastBoxX - dynamicOffset - barWidth)
                        barY, barSizeX, barSizeY, isHorizontal = espData.lastBoxY, barWidth, espData.lastBoxHeight, false
                    else
                        barX = (settings.healthBarSide == 'right' and settings.healthEnabled) and (espData.lastBoxX + espData.lastBoxWidth + dynamicOffset + offset) or (espData.lastBoxX + espData.lastBoxWidth + dynamicOffset)
                        barY, barSizeX, barSizeY, isHorizontal = espData.lastBoxY, barWidth, espData.lastBoxHeight, false
                    end

                    barData.armorBarOutline.Position = UDim2.new(0, barX, 0, barY)
                    barData.armorBarOutline.Size = UDim2.new(0, barSizeX, 0, barSizeY)
                    barData.armorBarOutline.Visible = true

                    local isInverted = settings.armorBarDirection == 'inverted'
                    local targetSize = isHorizontal and UDim2.new(lerpedArmor, 0, 1, 0) or UDim2.new(1, 0, lerpedArmor, 0)

                    if isHorizontal then
                        barData.armorBarFill.AnchorPoint = isInverted and Vector2.new(1, 0) or Vector2.new(0, 0)
                        barData.armorBarFill.Position = isInverted and UDim2.new(1, 0, 0, 0) or UDim2.new(0, 0, 0, 0)

                        if barData.armorGradient then
                            barData.armorGradient.Rotation = 0
                        end
                    else
                        barData.armorBarFill.AnchorPoint = isInverted and Vector2.new(0, 0) or Vector2.new(0, 1)
                        barData.armorBarFill.Position = isInverted and UDim2.new(0, 0, 0, 0) or UDim2.new(0, 0, 1, 0)

                        if barData.armorGradient then
                            barData.armorGradient.Rotation = 90
                        end
                    end

                    armorbar:applyTween(barData.armorBarFill, targetSize)

                    if barData.armorGradient then
                        if settings.armorAdaptiveHueEnabled then
                            local c1 = lerpColor(settings.armorAdaptiveHueColor, settings.armorGradientColor1, lerpedArmor)
                            local c2 = lerpColor(settings.armorAdaptiveHueColor, settings.armorGradientColor2, lerpedArmor)
                            local c3 = lerpColor(settings.armorAdaptiveHueColor, settings.armorGradientColor3, lerpedArmor)
                            local c4 = lerpColor(settings.armorAdaptiveHueColor, settings.armorGradientColor4, lerpedArmor)

                            barData.armorGradient.Color = ColorSequence.new({
                                ColorSequenceKeypoint.new(0, c1),
                                ColorSequenceKeypoint.new(0.33, c2),
                                ColorSequenceKeypoint.new(0.66, c3),
                                ColorSequenceKeypoint.new(1, c4),
                            })
                        else
                            barData.armorGradient.Color = ColorSequence.new({
                                ColorSequenceKeypoint.new(0, settings.armorGradientColor1),
                                ColorSequenceKeypoint.new(0.33, settings.armorGradientColor2),
                                ColorSequenceKeypoint.new(0.66, settings.armorGradientColor3),
                                ColorSequenceKeypoint.new(1, settings.armorGradientColor4),
                            })
                        end
                    end
                end
                function armorbar:setTweenType(tweenType)
                    local style = Enum.EasingStyle[tweenType]

                    if style then
                        tweenState.type = style
                    else
                        tweenState.type = Enum.EasingStyle.Linear
                    end
                end
                function armorbar:setTweenDuration(duration)
                    tweenState.duration = math.max(0.1, duration)
                end
                function armorbar:applyTween(frame, targetSize)
                    if not frame or not frame.Parent then
                        return
                    end

                    local tweenInfo = TweenInfo.new(tweenState.duration, tweenState.type, tweenState.direction)
                    local tween = tweenService:Create(frame, tweenInfo, {Size = targetSize})

                    if tween then
                        tween:Play()
                    end
                end

                return armorbar
            end
        end

        function __M.v(): typeof(__modImpl())
            local v = __M.cache.v

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.v = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local cache = __M.a()

            return function(api)
                local flags = {}
                local screenGui
                local currentFont
                local currentSize = 13

                local function initScreenGui()
                    if not screenGui then
                        screenGui = Instance.new('ScreenGui')
                        screenGui.Name = 'FlagsScreenGui'
                        screenGui.ResetOnSpawn = false
                        screenGui.IgnoreGuiInset = true
                        screenGui.Parent = api.lp:WaitForChild('PlayerGui')
                    end

                    return screenGui
                end
                local function createFlagText(player, flagName)
                    local gui = initScreenGui()

                    if not gui then
                        return nil
                    end

                    local text = Instance.new('TextLabel')

                    text.Name = flagName .. '_' .. player.Name
                    text.Visible = false
                    text.BackgroundTransparency = 1
                    text.TextColor3 = Color3.fromRGB(255, 255, 255)
                    text.TextSize = 13
                    text.Font = Enum.Font.GothamBold
                    text.Text = ''
                    text.TextScaled = false
                    text.TextWrapped = false
                    text.ClipsDescendants = false
                    text.Parent = gui

                    local stroke = Instance.new('UIStroke')

                    stroke.Color = Color3.fromRGB(0, 0, 0)
                    stroke.Thickness = 1
                    stroke.Transparency = 0
                    stroke.Parent = text

                    return text
                end
                local function getPlayerRace(character)
                    if not character then
                        return 'unknown'
                    end

                    local head = character:FindFirstChild('Head')

                    if not head then
                        return 'unknown'
                    end

                    local ok, h, s, v = pcall(function()
                        return Color3.toHSV(head.Color)
                    end)

                    if not ok then
                        return 'unknown'
                    end
                    if v < 0.3 then
                        return 'nigger'
                    elseif h >= 0.08 and h <= 0.15 and s >= 0.2 then
                        return 'aziat'
                    else
                        return 'european'
                    end
                end

                function flags:create(player)
                    return {
                        healthText = createFlagText(player, 'Health'),
                        armorText = createFlagText(player, 'Armor'),
                        usernameText = createFlagText(player, 'Username'),
                        displaynameText = createFlagText(player, 'DisplayName'),
                        toolText = createFlagText(player, 'Tool'),
                        walkspeedText = createFlagText(player, 'Walkspeed'),
                        raceText = createFlagText(player, 'Race'),
                        lastHealth = 0,
                    }
                end
                function flags:remove(flagsData)
                    if not flagsData then
                        return
                    end

                    for _, key in ipairs({
                        'healthText',
                        'armorText',
                        'usernameText',
                        'displaynameText',
                        'toolText',
                        'walkspeedText',
                        'raceText',
                    })do
                        if flagsData[key] then
                            pcall(function()
                                flagsData[key]:Destroy()
                            end)
                        end
                    end
                end

                local function getCustomFont(fontName)
                    local fontsData = getgenv().Sakura and getgenv().Sakura.Fonts

                    if fontsData and fontsData.Get then
                        return fontsData.Get(fontName)
                    end

                    return nil
                end

                function flags:setFont(fontName)
                    currentFont = fontName
                end
                function flags:setSize(size)
                    currentSize = size or 13
                end

                local function updateFlagText(
                    flagText,
                    displayText,
                    flagType,
                    settings,
                    boxCenterX,
                    baseY,
                    lineIndex
                )
                    if not flagText or not displayText or displayText == '' then
                        if flagText then
                            flagText.Visible = false
                        end

                        return
                    end

                    local size = settings.flagsSize or currentSize or 13
                    local lineHeight = size + 1

                    flagText.Text = displayText

                    local colorKey = 'flags' .. flagType .. 'Color'

                    flagText.TextColor3 = settings[colorKey] or settings.flagsHealthColor or Color3.fromRGB(255, 255, 255)
                    flagText.TextSize = size

                    local fontName = settings.flagsFont or currentFont or 'Proggy'
                    local customFont = getCustomFont(fontName)

                    if customFont then
                        flagText.FontFace = customFont
                    else
                        flagText.Font = Enum.Font.GothamBold
                    end

                    local stroke = flagText:FindFirstChild('UIStroke')

                    if stroke then
                        stroke.Color = settings.flagsOutlineColor or Color3.fromRGB(0, 0, 0)
                        stroke.Transparency = settings.flagsOutlineAlpha or 0
                    end

                    local textWidth = math.max(#displayText * (size * 0.5), 20)
                    local posX = boxCenterX - textWidth / 2
                    local posY = baseY + (lineIndex * lineHeight)

                    flagText.Position = UDim2.new(0, posX, 0, posY)
                    flagText.Size = UDim2.new(0, textWidth + 8, 0, size + 4)
                    flagText.Visible = true
                end
                local function hideAllFlags(flagsData)
                    for _, key in ipairs({
                        'healthText',
                        'armorText',
                        'usernameText',
                        'displaynameText',
                        'toolText',
                        'raceText',
                    })do
                        if flagsData[key] then
                            flagsData[key].Visible = false
                        end
                    end
                end

                function flags:update(
                    flagsData,
                    settings,
                    humanoid,
                    espData,
                    camera
                )
                    if not settings.flagsEnabled or not humanoid or not espData.lastBoxX then
                        hideAllFlags(flagsData)

                        return
                    end

                    local hrp = humanoid.Parent:FindFirstChild('HumanoidRootPart')

                    if not hrp then
                        hideAllFlags(flagsData)

                        return
                    end

                    local _, onScreen = camera:WorldToViewportPoint(hrp.Position)

                    if not onScreen then
                        hideAllFlags(flagsData)

                        return
                    end

                    local distance = (hrp.Position - camera.CFrame.Position).Magnitude
                    local dynamicOffset = 4.1 * math.clamp(1 + (distance / 100) * 0.2, 1, 1.2)
                    local barOffset = dynamicOffset + 2.6
                    local offsetFromBars = ((settings.healthEnabled and settings.healthBarSide == 'bottom') and (settings.armorEnabled and settings.armorBarSide == 'bottom')) and (barOffset + barOffset) or ((settings.healthEnabled and settings.healthBarSide == 'bottom') or (settings.armorEnabled and settings.armorBarSide == 'bottom')) and barOffset or 2
                    local boxCenterX = espData.lastBoxX + espData.lastBoxWidth / 2
                    local baseY = espData.lastBoxY + espData.lastBoxHeight + offsetFromBars + 1
                    local lineIndex = 0

                    if settings.flagsHealthEnabled then
                        local displayText = ''

                        if settings.flagsHealthMode == 'percent' then
                            local healthPercent = math.floor((humanoid.Health / humanoid.MaxHealth) * 100)

                            displayText = tostring(healthPercent) .. '%'
                        else
                            displayText = tostring(math.floor(humanoid.Health))
                        end

                        updateFlagText(flagsData.healthText, displayText, 'Health', settings, boxCenterX, baseY, lineIndex)

                        lineIndex = lineIndex + 1
                    else
                        flagsData.healthText.Visible = false
                    end
                    if settings.flagsArmorEnabled then
                        local armorValue = 0
                        local maxArmor = 130
                        local workspacePlayers = workspace:FindFirstChild('Players')

                        if workspacePlayers then
                            local playerFolder = workspacePlayers:FindFirstChild(humanoid.Parent.Name)

                            if playerFolder then
                                local bodyEffects = playerFolder:FindFirstChild('BodyEffects')

                                if bodyEffects then
                                    local armorIntValue = bodyEffects:FindFirstChild('Armor')

                                    if armorIntValue and armorIntValue:IsA('IntValue') then
                                        armorValue = armorIntValue.Value
                                    end
                                end
                            end
                        end

                        local armorDisplayText = ''

                        if settings.flagsArmorMode == 'percent' then
                            local armorPercent = math.floor((armorValue / maxArmor) * 100)

                            armorDisplayText = tostring(armorPercent) .. '%'
                        else
                            armorDisplayText = tostring(armorValue)
                        end

                        updateFlagText(flagsData.armorText, armorDisplayText, 'Armor', settings, boxCenterX, baseY, lineIndex)

                        lineIndex = lineIndex + 1
                    else
                        flagsData.armorText.Visible = false
                    end
                    if settings.flagsUsernameEnabled then
                        local usernameDisplayText = humanoid.Parent.Name

                        updateFlagText(flagsData.usernameText, usernameDisplayText, 'Username', settings, boxCenterX, baseY, lineIndex)

                        lineIndex = lineIndex + 1
                    else
                        flagsData.usernameText.Visible = false
                    end
                    if settings.flagsDisplaynameEnabled then
                        local displaynameDisplayText = humanoid.Parent.Name
                        local player = cache.Players:FindFirstChild(humanoid.Parent.Name)

                        if player then
                            displaynameDisplayText = player.DisplayName or humanoid.Parent.Name
                        end

                        updateFlagText(flagsData.displaynameText, displaynameDisplayText, 'Displayname', settings, boxCenterX, baseY, lineIndex)

                        lineIndex = lineIndex + 1
                    else
                        flagsData.displaynameText.Visible = false
                    end
                    if settings.flagsToolEnabled then
                        local tool = humanoid.Parent:FindFirstChildOfClass('Tool')
                        local toolName = tool and tool.Name or 'None'

                        updateFlagText(flagsData.toolText, toolName, 'Tool', settings, boxCenterX, baseY, lineIndex)

                        lineIndex = lineIndex + 1
                    else
                        flagsData.toolText.Visible = false
                    end
                    if settings.flagsRaceEnabled then
                        local race = pcall(function()
                            return getPlayerRace(humanoid.Parent)
                        end) and getPlayerRace(humanoid.Parent) or 'unknown'

                        updateFlagText(flagsData.raceText, race, 'Race', settings, boxCenterX, baseY, lineIndex)

                        lineIndex = lineIndex + 1
                    else
                        flagsData.raceText.Visible = false
                    end
                end
                function flags:clearAll()
                    if screenGui then
                        pcall(function()
                            screenGui:Destroy()
                        end)

                        screenGui = nil
                    end
                end

                return flags
            end
        end

        function __M.w(): typeof(__modImpl())
            local v = __M.cache.w

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.w = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local cache = __M.a()

            return function(vars)
                local tracers = {}
                local tracerCache = {}

                function tracers:create(player)
                    if tracerCache[player] then
                        return tracerCache[player]
                    end

                    local outline, main = Drawing.new('Line'), Drawing.new('Line')

                    outline.Visible, main.Visible = false, false

                    local data = {
                        outline = outline,
                        main = main,
                        player = player,
                    }

                    tracerCache[player] = data

                    return data
                end
                function tracers:remove(player)
                    local data = tracerCache[player]

                    if data then
                        if data.outline then
                            data.outline:Remove()
                        end
                        if data.main then
                            data.main:Remove()
                        end

                        tracerCache[player] = nil
                    end
                end

                local function hideTracers(data)
                    data.outline.Visible, data.main.Visible = false, false
                end

                function tracers:update(player, settings, camera)
                    local data = tracerCache[player]

                    if not data then
                        return
                    end

                    local character = player.Character

                    if not character or not character.Parent then
                        hideTracers(data)

                        return
                    end

                    local destPart = character:FindFirstChild(settings.tracersDestination or 'HumanoidRootPart')

                    if not destPart then
                        hideTracers(data)

                        return
                    end

                    local screenPos, onScreen = camera:WorldToViewportPoint(destPart.Position)

                    if not onScreen or screenPos.Z <= 0 then
                        hideTracers(data)

                        return
                    end

                    local origin = settings.tracersOrigin or 'mouse'
                    local vp = camera.ViewportSize
                    local fromPos = origin == 'mouse' and cache.UserInputService:GetMouseLocation() or origin == 'center' and Vector2.new(vp.X / 2, vp.Y / 2) or origin == 'top' and Vector2.new(vp.X / 2, 0) or Vector2.new(vp.X / 2, vp.Y)
                    local toPos = Vector2.new(screenPos.X, screenPos.Y)

                    data.outline.From, data.outline.To = fromPos, toPos
                    data.outline.Color = settings.tracersOutlineColor or Color3.fromRGB(0, 0, 0)
                    data.outline.Thickness = settings.tracersOutlineThickness or 3
                    data.outline.Transparency = 1 - (settings.tracersOutlineAlpha or 0)
                    data.outline.Visible = true
                    data.main.From, data.main.To = fromPos, toPos
                    data.main.Color = settings.tracersMainColor or Color3.fromRGB(255, 255, 255)
                    data.main.Thickness = settings.tracersMainThickness or 1.5
                    data.main.Transparency = 1 - (settings.tracersMainAlpha or 1)
                    data.main.Visible = true
                end
                function tracers:clearAll()
                    for player in pairs(tracerCache)do
                        self:remove(player)
                    end
                end

                return tracers
            end
        end

        function __M.x(): typeof(__modImpl())
            local v = __M.cache.x

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.x = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(vars)
                local skeletons = {}
                local lp = vars.lp
                local skeletonCache = {}
                local boneConnections = {
                    {
                        'Head',
                        'Neck',
                    },
                    {
                        'Neck',
                        'UpperTorso',
                    },
                    {
                        'UpperTorso',
                        'LowerTorso',
                    },
                    {
                        'LowerTorso',
                        'LeftUpperLeg',
                    },
                    {
                        'LowerTorso',
                        'RightUpperLeg',
                    },
                    {
                        'LeftUpperLeg',
                        'LeftLowerLeg',
                    },
                    {
                        'RightUpperLeg',
                        'RightLowerLeg',
                    },
                    {
                        'LeftLowerLeg',
                        'LeftFoot',
                    },
                    {
                        'RightLowerLeg',
                        'RightFoot',
                    },
                    {
                        'UpperTorso',
                        'LeftUpperArm',
                    },
                    {
                        'UpperTorso',
                        'RightUpperArm',
                    },
                    {
                        'LeftUpperArm',
                        'LeftLowerArm',
                    },
                    {
                        'RightUpperArm',
                        'RightLowerArm',
                    },
                    {
                        'LeftLowerArm',
                        'LeftHand',
                    },
                    {
                        'RightLowerArm',
                        'RightHand',
                    },
                }

                function skeletons:create(player)
                    if skeletonCache[player] then
                        return skeletonCache[player]
                    end

                    local boneLines = {}

                    for i = 1, #boneConnections do
                        boneLines[i] = {
                            outline = Drawing.new('Line'),
                            main = Drawing.new('Line'),
                        }
                        boneLines[i].outline.Visible = false
                        boneLines[i].main.Visible = false
                    end

                    local data = {
                        boneLines = boneLines,
                        player = player,
                    }

                    skeletonCache[player] = data

                    return data
                end
                function skeletons:remove(player)
                    local data = skeletonCache[player]

                    if data then
                        for i = 1, #data.boneLines do
                            if data.boneLines[i].outline then
                                data.boneLines[i].outline:Remove()
                            end
                            if data.boneLines[i].main then
                                data.boneLines[i].main:Remove()
                            end
                        end

                        skeletonCache[player] = nil
                    end
                end
                function skeletons:update(player, settings, camera)
                    local data = skeletonCache[player]

                    if not data then
                        return
                    end

                    local character = player.Character

                    if not character or not character.Parent then
                        for i = 1, #data.boneLines do
                            data.boneLines[i].outline.Visible = false
                            data.boneLines[i].main.Visible = false
                        end

                        return
                    end

                    local hrp = character:FindFirstChild('HumanoidRootPart')

                    if not hrp then
                        for i = 1, #data.boneLines do
                            data.boneLines[i].outline.Visible = false
                            data.boneLines[i].main.Visible = false
                        end

                        return
                    end

                    local _, onScreen = camera:WorldToViewportPoint(hrp.Position)

                    if not onScreen then
                        for i = 1, #data.boneLines do
                            data.boneLines[i].outline.Visible = false
                            data.boneLines[i].main.Visible = false
                        end

                        return
                    end

                    for i, connection in ipairs(boneConnections)do
                        local part1 = character:FindFirstChild(connection[1])
                        local part2 = character:FindFirstChild(connection[2])

                        if part1 and part2 and part1:IsA('BasePart') and part2:IsA('BasePart') then
                            local screenPos1, onScreen1 = camera:WorldToViewportPoint(part1.Position)
                            local screenPos2, onScreen2 = camera:WorldToViewportPoint(part2.Position)

                            if onScreen1 and onScreen2 and screenPos1.Z > 0 and screenPos2.Z > 0 then
                                local fromPos = Vector2.new(screenPos1.X, screenPos1.Y)
                                local toPos = Vector2.new(screenPos2.X, screenPos2.Y)

                                data.boneLines[i].outline.From = fromPos
                                data.boneLines[i].outline.To = toPos
                                data.boneLines[i].outline.Color = settings.skeletonsOutlineColor or Color3.fromRGB(0, 0, 0)
                                data.boneLines[i].outline.Thickness = settings.skeletonsOutlineThickness or 3
                                data.boneLines[i].outline.Transparency = 1 - (settings.skeletonsOutlineAlpha or 0)
                                data.boneLines[i].outline.Visible = true
                                data.boneLines[i].main.From = fromPos
                                data.boneLines[i].main.To = toPos
                                data.boneLines[i].main.Color = settings.skeletonsMainColor or Color3.fromRGB(255, 255, 255)
                                data.boneLines[i].main.Thickness = settings.skeletonsMainThickness or 1.5
                                data.boneLines[i].main.Transparency = 1 - (settings.skeletonsMainAlpha or 0)
                                data.boneLines[i].main.Visible = true
                            else
                                data.boneLines[i].outline.Visible = false
                                data.boneLines[i].main.Visible = false
                            end
                        else
                            data.boneLines[i].outline.Visible = false
                            data.boneLines[i].main.Visible = false
                        end
                    end
                end
                function skeletons:clearAll()
                    for player in pairs(skeletonCache)do
                        self:remove(player)
                    end
                end

                return skeletons
            end
        end

        function __M.y(): typeof(__modImpl())
            local v = __M.cache.y

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.y = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(api)
                local highlight = {}
                local highlightCache = {}

                function highlight:create(player)
                    local character = player.Character

                    if not character or not character:FindFirstChild('HumanoidRootPart') then
                        return nil
                    end

                    local highlightObj = Instance.new('Highlight')

                    highlightObj.Adornee = character
                    highlightObj.FillColor = Color3.fromRGB(255, 255, 255)
                    highlightObj.FillTransparency = 0.5
                    highlightObj.OutlineColor = Color3.fromRGB(255, 255, 255)
                    highlightObj.OutlineTransparency = 0.5
                    highlightObj.DepthMode = Enum.HighlightDepthMode.Occluded
                    highlightObj.Parent = character
                    highlightCache[player] = {highlight = highlightObj}

                    return {highlight = highlightObj}
                end
                function highlight:remove(player)
                    local highlightData = highlightCache[player]

                    if highlightData and highlightData.highlight then
                        pcall(function()
                            highlightData.highlight:Destroy()
                        end)
                    end

                    highlightCache[player] = nil
                end
                function highlight:update(player, settings)
                    local highlightData = highlightCache[player]

                    if not highlightData or not highlightData.highlight then
                        return
                    end

                    local character = player.Character

                    if not character or not character.Parent or not character:FindFirstChild('HumanoidRootPart') then
                        highlightData.highlight.Enabled = false

                        return
                    end

                    local h = highlightData.highlight

                    h.Enabled = settings.highlightEnabled
                    h.FillColor = settings.highlightFillColor
                    h.FillTransparency = settings.highlightFillAlpha
                    h.OutlineColor = settings.highlightOutlineColor
                    h.OutlineTransparency = settings.highlightOutlineAlpha
                    h.DepthMode = settings.highlightThroughWalls and Enum.HighlightDepthMode.AlwaysOnTop or Enum.HighlightDepthMode.Occluded
                end
                function highlight:clearAll()
                    for player in pairs(highlightCache)do
                        self:remove(player)
                    end
                end

                return highlight
            end
        end

        function __M.z(): typeof(__modImpl())
            local v = __M.cache.z

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.z = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(api)
                local chams = {}
                local chamsCache = {}
                local folder
                local bodyParts = {
                    'Head',
                    'UpperTorso',
                    'LowerTorso',
                    'LeftUpperArm',
                    'LeftLowerArm',
                    'LeftHand',
                    'RightUpperArm',
                    'RightLowerArm',
                    'RightHand',
                    'LeftUpperLeg',
                    'LeftLowerLeg',
                    'LeftFoot',
                    'RightUpperLeg',
                    'RightLowerLeg',
                    'RightFoot',
                }

                local function initFolder()
                    if not folder then
                        folder = Instance.new('Folder')
                        folder.Name = 'ESPChamsFolder'
                        folder.Parent = workspace
                    end

                    return folder
                end

                function chams:create(player)
                    local character = player.Character

                    if not character or not character:FindFirstChild('HumanoidRootPart') then
                        return nil
                    end

                    initFolder()

                    local chamsList = {}
                    local partMap = {}

                    for _, partName in ipairs(bodyParts)do
                        local part = character:FindFirstChild(partName)

                        if part and (part:IsA('BasePart') or part:IsA('MeshPart')) then
                            local adornment = Instance.new('BoxHandleAdornment')

                            adornment.Size = part.Size
                            adornment.Adornee = part
                            adornment.ZIndex = 0
                            adornment.Color3 = Color3.fromRGB(255, 255, 255)
                            adornment.Transparency = 0.5
                            adornment.AlwaysOnTop = true
                            adornment.Visible = false
                            adornment.Parent = folder
                            partMap[adornment] = partName

                            table.insert(chamsList, adornment)
                        end
                    end

                    chamsCache[player] = {
                        chams = chamsList,
                        partMap = partMap,
                    }

                    return {chams = chamsList}
                end
                function chams:remove(player)
                    local chamsData = chamsCache[player]

                    if chamsData and chamsData.chams then
                        for _, adornment in ipairs(chamsData.chams)do
                            pcall(function()
                                adornment:Destroy()
                            end)
                        end

                        table.clear(chamsData.chams)

                        if chamsData.partMap then
                            table.clear(chamsData.partMap)
                        end
                    end

                    chamsCache[player] = nil
                end
                function chams:update(player, settings)
                    local chamsData = chamsCache[player]

                    if not chamsData then
                        if settings.chamsEnabled then
                            local newData = self:create(player)

                            if newData then
                                chamsData = chamsCache[player]
                            end
                        end
                        if not chamsData or not chamsData.chams then
                            return
                        end
                    end

                    local character = player.Character

                    if not character or not character.Parent or not character:FindFirstChild('HumanoidRootPart') then
                        for _, adornment in ipairs(chamsData.chams)do
                            if adornment then
                                adornment.Visible = false
                            end
                        end

                        return
                    end

                    local partMap = chamsData.partMap or {}
                    local existingParts = {}

                    for _, adornment in ipairs(chamsData.chams)do
                        if adornment and adornment.Parent then
                            local partName = partMap[adornment]

                            if partName then
                                local part = character:FindFirstChild(partName)

                                if part and (part:IsA('BasePart') or part:IsA('MeshPart')) then
                                    existingParts[partName] = true

                                    if adornment.Adornee ~= part then
                                        adornment.Adornee = part
                                        adornment.Size = part.Size
                                    elseif adornment.Size ~= part.Size then
                                        adornment.Size = part.Size
                                    end

                                    adornment.Visible = settings.chamsEnabled
                                    adornment.Color3 = settings.chamsColor
                                    adornment.Transparency = settings.chamsAlpha
                                else
                                    adornment.Visible = false
                                end
                            else
                                if adornment.Adornee and adornment.Adornee.Parent then
                                    adornment.Visible = settings.chamsEnabled
                                    adornment.Color3 = settings.chamsColor
                                    adornment.Transparency = settings.chamsAlpha
                                else
                                    adornment.Visible = false
                                end
                            end
                        end
                    end

                    if settings.chamsEnabled then
                        for _, partName in ipairs(bodyParts)do
                            if not existingParts[partName] then
                                local part = character:FindFirstChild(partName)

                                if part and (part:IsA('BasePart') or part:IsA('MeshPart')) then
                                    local adornment = Instance.new('BoxHandleAdornment')

                                    adornment.Size = part.Size
                                    adornment.Adornee = part
                                    adornment.ZIndex = 0
                                    adornment.Color3 = settings.chamsColor
                                    adornment.Transparency = settings.chamsAlpha
                                    adornment.AlwaysOnTop = true
                                    adornment.Visible = true
                                    adornment.Parent = folder
                                    partMap[adornment] = partName

                                    table.insert(chamsData.chams, adornment)
                                end
                            end
                        end
                    end
                end
                function chams:clearAll()
                    for player in pairs(chamsCache)do
                        self:remove(player)
                    end
                end

                return chams
            end
        end

        function __M.A(): typeof(__modImpl())
            local v = __M.cache.A

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.A = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(api)
                local boxes3d = {}
                local boxesCache = {}

                local function getCharacterSize(character)
                    local hrp = character:FindFirstChild('HumanoidRootPart')

                    if not hrp then
                        return 2.5, 6, 1.5
                    end

                    local humanoid = character:FindFirstChildOfClass('Humanoid')
                    local scale = humanoid and humanoid:FindFirstChild('BodyDepthScale') and humanoid.BodyDepthScale.Value or 1
                    local sizeX = 2.5 * scale
                    local sizeY = 6 * scale
                    local sizeZ = 1.5 * scale

                    return sizeX, sizeY, sizeZ
                end

                function boxes3d:create(player)
                    local character = player.Character

                    if not character or not character:FindFirstChild('HumanoidRootPart') then
                        return nil
                    end

                    local sizeX, sizeY, sizeZ = getCharacterSize(character)
                    local boxLines = {}
                    local corners = {
                        {
                            -sizeX / 2,
                            -sizeY / 2,
                            -sizeZ / 2,
                        },
                        {
                            sizeX / 2,
                            -sizeY / 2,
                            -sizeZ / 2,
                        },
                        {
                            -sizeX / 2,
                            sizeY / 2,
                            -sizeZ / 2,
                        },
                        {
                            sizeX / 2,
                            sizeY / 2,
                            -sizeZ / 2,
                        },
                        {
                            -sizeX / 2,
                            -sizeY / 2,
                            sizeZ / 2,
                        },
                        {
                            sizeX / 2,
                            -sizeY / 2,
                            sizeZ / 2,
                        },
                        {
                            -sizeX / 2,
                            sizeY / 2,
                            sizeZ / 2,
                        },
                        {
                            sizeX / 2,
                            sizeY / 2,
                            sizeZ / 2,
                        },
                    }
                    local edges = {
                        {1, 2},
                        {3, 4},
                        {5, 6},
                        {7, 8},
                        {1, 3},
                        {2, 4},
                        {5, 7},
                        {6, 8},
                        {1, 5},
                        {2, 6},
                        {3, 7},
                        {4, 8},
                    }

                    for _, edge in ipairs(edges)do
                        local outline = Drawing.new('Line')
                        local main = Drawing.new('Line')

                        outline.Visible = false
                        main.Visible = false

                        table.insert(boxLines, {
                            outline = outline,
                            main = main,
                            edge = edge,
                            corners = corners,
                        })
                    end

                    boxesCache[player] = {boxLines = boxLines}

                    return {boxLines = boxLines}
                end
                function boxes3d:remove(player)
                    local boxData = boxesCache[player]

                    if boxData and boxData.boxLines then
                        for _, lineData in ipairs(boxData.boxLines)do
                            pcall(function()
                                lineData.outline:Remove()
                            end)
                            pcall(function()
                                lineData.main:Remove()
                            end)
                        end

                        table.clear(boxData.boxLines)
                    end

                    boxesCache[player] = nil
                end
                function boxes3d:update(player, settings, camera, hrp)
                    local boxData = boxesCache[player]

                    if not boxData or not boxData.boxLines then
                        return
                    end

                    local character = player.Character

                    if not character or not character.Parent or not hrp then
                        for _, lineData in ipairs(boxData.boxLines)do
                            lineData.outline.Visible = false
                            lineData.main.Visible = false
                        end

                        return
                    end

                    local _, onScreen = camera:WorldToViewportPoint(hrp.Position)

                    if not onScreen then
                        for _, lineData in ipairs(boxData.boxLines)do
                            lineData.outline.Visible = false
                            lineData.main.Visible = false
                        end

                        return
                    end

                    for _, lineData in ipairs(boxData.boxLines)do
                        local edge = lineData.edge
                        local corners = lineData.corners
                        local c1 = corners[edge[1] ]
                        local c2 = corners[edge[2] ]
                        local pos1 = (hrp.CFrame * CFrame.new(c1[1], c1[2], c1[3])).Position
                        local pos2 = (hrp.CFrame * CFrame.new(c2[1], c2[2], c2[3])).Position
                        local screenPos1, onScreen1 = camera:WorldToViewportPoint(pos1)
                        local screenPos2, onScreen2 = camera:WorldToViewportPoint(pos2)

                        if onScreen1 and onScreen2 and screenPos1.Z > 0 and screenPos2.Z > 0 then
                            local fromPos = Vector2.new(screenPos1.X, screenPos1.Y)
                            local toPos = Vector2.new(screenPos2.X, screenPos2.Y)

                            lineData.outline.From = fromPos
                            lineData.outline.To = toPos
                            lineData.outline.Color = settings.boxes3dOutlineColor or Color3.fromRGB(0, 0, 0)
                            lineData.outline.Thickness = settings.boxes3dOutlineThickness or 3
                            lineData.outline.Transparency = 1 - (settings.boxes3dOutlineAlpha or 0)
                            lineData.outline.Visible = settings.boxes3dEnabled
                            lineData.main.From = fromPos
                            lineData.main.To = toPos
                            lineData.main.Color = settings.boxes3dMainColor or Color3.fromRGB(255, 255, 255)
                            lineData.main.Thickness = settings.boxes3dMainThickness or 1.5
                            lineData.main.Transparency = 1 - (settings.boxes3dMainAlpha or 1)
                            lineData.main.Visible = settings.boxes3dEnabled
                        else
                            lineData.outline.Visible = false
                            lineData.main.Visible = false
                        end
                    end
                end
                function boxes3d:clearAll()
                    for player in pairs(boxesCache)do
                        self:remove(player)
                    end
                end

                return boxes3d
            end
        end

        function __M.B(): typeof(__modImpl())
            local v = __M.cache.B

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.B = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(api)
                local s = {}
                local txt, enabled, original = '', false

                local function cacheOriginal()
                    if original then
                        return
                    end

                    original = workspace:GetAttribute('Server') or ''
                end

                function s:enable()
                    cacheOriginal()

                    enabled = true

                    if txt ~= '' then
                        workspace:SetAttribute('Server', txt)
                    end
                end
                function s:disable()
                    enabled = false

                    if original then
                        workspace:SetAttribute('Server', original)
                    end
                end
                function s:setText(v)
                    txt = v or ''

                    if enabled and txt ~= '' then
                        workspace:SetAttribute('Server', txt)
                    end
                end

                cacheOriginal()

                return s
            end
        end

        function __M.C(): typeof(__modImpl())
            local v = __M.cache.C

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.C = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(api)
                local s, lp, c, conn = {}, api.lp

                local function getCrosshair()
                    return lp.PlayerGui and lp.PlayerGui.MainScreenGui and lp.PlayerGui.MainScreenGui.Aim
                end
                local function setTransparent(f)
                    if not f then
                        return
                    end

                    f.BackgroundTransparency = 1

                    for _, v in ipairs(f:GetDescendants())do
                        if v:IsA('Frame') then
                            v.BackgroundTransparency = 1
                        end
                    end
                end

                function s:enable()
                    if self.enabled then
                        return
                    end

                    self.enabled = true
                    c = getCrosshair()

                    if conn then
                        conn:Disconnect()
                    end
                    if c then
                        conn = c:GetPropertyChangedSignal('BackgroundTransparency'):Connect(function(
                        )
                            if self.enabled then
                                setTransparent(c)
                            end
                        end)

                        setTransparent(c)
                    end
                end
                function s:disable()
                    if not self.enabled then
                        return
                    end

                    self.enabled = false

                    if conn then
                        conn:Disconnect()

                        conn = nil
                    end
                    if c then
                        c.BackgroundTransparency = 0
                        c = nil
                    end
                end
                function s:destroy()
                    self:disable()
                end

                return s
            end
        end

        function __M.D(): typeof(__modImpl())
            local v = __M.cache.D

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.D = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local cache = __M.a()

            return function(api)
                local selfChams = {}
                local lp = api.lp
                local loopManager = api.loopManager
                local enabled = false
                local color = Color3.fromRGB(155, 125, 175)
                local transparency = 0
                local reflectance = 0
                local material = 'ForceField'
                local effect = 'none'
                local addEffect = 'none'
                local particleColor = Color3.fromRGB(255, 255, 255)
                local particleTransparency = 0
                local heatTime = 0
                local charConnection
                local cachedData = {
                    parts = {},
                    clothing = {},
                    bodyColors = nil,
                }
                local r15Parts = {
                    'LeftFoot',
                    'LeftLowerLeg',
                    'LeftUpperLeg',
                    'RightFoot',
                    'RightLowerLeg',
                    'RightUpperLeg',
                    'LeftHand',
                    'LeftLowerArm',
                    'LeftUpperArm',
                    'RightHand',
                    'RightLowerArm',
                    'RightUpperArm',
                    'LowerTorso',
                    'UpperTorso',
                    'Head',
                }
                local heatMap = {
                    LeftFoot = 0.7,
                    LeftLowerLeg = 0.3,
                    LeftUpperLeg = 0.5,
                    RightFoot = 0.7,
                    RightLowerLeg = 0.3,
                    RightUpperLeg = 0.5,
                    LeftHand = 0.7,
                    LeftLowerArm = 0.3,
                    LeftUpperArm = 0.5,
                    RightHand = 0.7,
                    RightLowerArm = 0.3,
                    RightUpperArm = 0.5,
                    LowerTorso = 0.3,
                    UpperTorso = 0.5,
                    Head = 0.5,
                }
                local partSet = {}

                for _, name in ipairs(r15Parts)do
                    partSet[name] = true
                end

                local function isR15Part(name)
                    return partSet[name] == true
                end
                local function cacheCharacter(char)
                    if not char then
                        return
                    end

                    cachedData.parts = {}
                    cachedData.clothing = {}
                    cachedData.bodyColors = nil

                    for _, part in ipairs(char:GetChildren())do
                        if isR15Part(part.Name) and (part:IsA('MeshPart') or part:IsA('BasePart')) then
                            cachedData.parts[part.Name] = {
                                Material = part.Material,
                                Color = part.Color,
                                Transparency = part.Transparency,
                                Reflectance = part.Reflectance,
                                TextureID = part:IsA('MeshPart') and part.TextureID or nil,
                            }
                        end
                    end
                    for _, desc in ipairs(char:GetDescendants())do
                        if desc:IsA('Shirt') then
                            cachedData.clothing.Shirt = desc.ShirtTemplate
                        elseif desc:IsA('Pants') then
                            cachedData.clothing.Pants = desc.PantsTemplate
                        elseif desc:IsA('BodyColors') then
                            cachedData.bodyColors = {
                                HeadColor3 = desc.HeadColor3,
                                LeftArmColor3 = desc.LeftArmColor3,
                                LeftLegColor3 = desc.LeftLegColor3,
                                RightArmColor3 = desc.RightArmColor3,
                                RightLegColor3 = desc.RightLegColor3,
                                TorsoColor3 = desc.TorsoColor3,
                            }
                        end
                    end
                end
                local function removeParticles(char)
                    if not char then
                        return
                    end

                    for _, part in ipairs(char:GetChildren())do
                        if isR15Part(part.Name) then
                            local stars = part:FindFirstChild('stars')
                            local specks = part:FindFirstChild('Specks')

                            if stars then
                                pcall(function()
                                    stars:Destroy()
                                end)
                            end
                            if specks then
                                pcall(function()
                                    specks:Destroy()
                                end)
                            end
                        end
                    end
                end
                local function applyStars(char)
                    if not char then
                        return
                    end

                    for _, part in ipairs(char:GetChildren())do
                        if isR15Part(part.Name) and (part:IsA('MeshPart') or part:IsA('BasePart')) then
                            local existing = part:FindFirstChild('stars')

                            if existing then
                                existing:Destroy()
                            end

                            pcall(function()
                                local stars = Instance.new('ParticleEmitter')

                                stars.Name = 'stars'
                                stars.Lifetime = NumberRange.new(0.45, 0.9)
                                stars.LockedToPart = true
                                stars.LightEmission = 1
                                stars.Drag = 5
                                stars.Squash = NumberSequence.new(-0.1)
                                stars.Speed = NumberRange.new(0.001, 0.001)
                                stars.Brightness = 3
                                stars.ZOffset = 1
                                stars.Size = NumberSequence.new({
                                    NumberSequenceKeypoint.new(0, 0),
                                    NumberSequenceKeypoint.new(0.508, 0.05, 0.05),
                                    NumberSequenceKeypoint.new(1, 0),
                                })
                                stars.Rate = 150
                                stars.Texture = 'rbxassetid://1084996976'
                                stars.EmissionDirection = Enum.NormalId.Bottom
                                stars.Color = ColorSequence.new(particleColor)
                                stars.Transparency = NumberSequence.new(particleTransparency)
                                stars.Parent = part
                            end)
                        end
                    end
                end
                local function applyParticles(char)
                    if not char then
                        return
                    end

                    for _, part in ipairs(char:GetChildren())do
                        if isR15Part(part.Name) and (part:IsA('MeshPart') or part:IsA('BasePart')) then
                            local existing = part:FindFirstChild('Specks')

                            if existing then
                                existing:Destroy()
                            end

                            pcall(function()
                                local specks = Instance.new('ParticleEmitter')

                                specks.Name = 'Specks'
                                specks.Lifetime = NumberRange.new(0.22, 0.22)
                                specks.SpreadAngle = Vector2.new(90, 90)

                                local t = particleTransparency

                                specks.Transparency = NumberSequence.new({
                                    NumberSequenceKeypoint.new(0, math.min(1, t + 0.8)),
                                    NumberSequenceKeypoint.new(0.25, math.max(0, t - 0.1)),
                                    NumberSequenceKeypoint.new(1, math.min(1, t + 0.8)),
                                })
                                specks.LightEmission = 1
                                specks.Color = ColorSequence.new(particleColor)
                                specks.Drag = 5
                                specks.Squash = NumberSequence.new(0)
                                specks.Speed = NumberRange.new(1, 1)
                                specks.Brightness = 4.2
                                specks.Size = NumberSequence.new(0.15)
                                specks.Acceleration = Vector3.new(0, -15, 0)
                                specks.RotSpeed = NumberRange.new(-45, 45)
                                specks.Rate = 100
                                specks.Texture = 'rbxassetid://7216849703'
                                specks.Parent = part
                            end)
                        end
                    end
                end
                local function applyChams(char, heatPulse, skipParticles)
                    if not char then
                        return
                    end

                    for _, desc in ipairs(char:GetDescendants())do
                        if desc:IsA('Pants') or desc:IsA('Shirt') then
                            pcall(function()
                                desc:Destroy()
                            end)
                        end
                    end
                    for _, part in ipairs(char:GetChildren())do
                        if isR15Part(part.Name) then
                            local trans = transparency

                            if effect == 'heat' and heatMap[part.Name] then
                                local base = heatMap[part.Name]

                                if heatPulse then
                                    trans = base + (math.min(base + 0.2, 1) - base) * heatPulse
                                else
                                    trans = base
                                end
                            end
                            if part:IsA('MeshPart') then
                                pcall(function()
                                    part.Material = Enum.Material[material]
                                    part.Color = color
                                    part.Transparency = trans
                                    part.Reflectance = reflectance
                                    part.TextureID = ''
                                end)
                            elseif part:IsA('BasePart') then
                                pcall(function()
                                    part.Material = Enum.Material[material]
                                    part.Color = color
                                    part.Reflectance = reflectance

                                    if part.Transparency < 1 then
                                        part.Transparency = trans
                                    end
                                end)
                            end
                        end
                    end

                    if not skipParticles then
                        if addEffect == 'stars' then
                            applyStars(char)
                        elseif addEffect == 'particles' then
                            applyParticles(char)
                        else
                            removeParticles(char)
                        end
                    end
                end
                local function restoreCharacter(char)
                    if not char then
                        return
                    end

                    removeParticles(char)

                    for _, part in ipairs(char:GetChildren())do
                        if isR15Part(part.Name) and cachedData.parts[part.Name] then
                            local data = cachedData.parts[part.Name]

                            pcall(function()
                                part.Material = data.Material
                                part.Color = data.Color
                                part.Transparency = data.Transparency
                                part.Reflectance = data.Reflectance

                                if part:IsA('MeshPart') and data.TextureID then
                                    part.TextureID = data.TextureID
                                end
                            end)
                        end
                    end

                    if cachedData.clothing.Shirt then
                        pcall(function()
                            local shirt = Instance.new('Shirt')

                            shirt.ShirtTemplate = cachedData.clothing.Shirt
                            shirt.Parent = char
                        end)
                    end
                    if cachedData.clothing.Pants then
                        pcall(function()
                            local pants = Instance.new('Pants')

                            pants.PantsTemplate = cachedData.clothing.Pants
                            pants.Parent = char
                        end)
                    end
                end

                local lastHeatTick = 0

                local function stopHeatLoop()
                    if loopManager and loopManager:GetHeartbeat('self_chams_heat') then
                        loopManager:RemoveHeartbeat('self_chams_heat')
                    end

                    heatTime = 0
                    lastHeatTick = 0
                end
                local function startHeatLoop()
                    if not loopManager then
                        return
                    end

                    stopHeatLoop()

                    lastHeatTick = tick()

                    loopManager:AddHeartbeat('self_chams_heat', function()
                        if not enabled or effect ~= 'heat' then
                            stopHeatLoop()

                            return
                        end

                        local char = lp.Character

                        if not char then
                            return
                        end

                        local now = tick()
                        local dt = now - lastHeatTick

                        lastHeatTick = now
                        heatTime = heatTime + dt

                        local pulse = math.sin(heatTime * 2) * 0.5 + 0.5

                        applyChams(char, pulse, true)
                    end)
                end

                function selfChams:setEnabled(val)
                    enabled = val

                    local char = lp.Character

                    if enabled then
                        cacheCharacter(char)
                        applyChams(char)

                        if effect == 'heat' then
                            startHeatLoop()
                        end
                        if charConnection then
                            charConnection:Disconnect()
                        end

                        charConnection = lp.CharacterAdded:Connect(function(
                            newChar
                        )
                            newChar:WaitForChild('Humanoid')
                            task.wait(1.1)

                            if enabled then
                                cacheCharacter(newChar)
                                applyChams(newChar)

                                if effect == 'heat' then
                                    startHeatLoop()
                                end

                                task.wait(0.5)
                                applyChams(newChar)
                            end
                        end)
                    else
                        stopHeatLoop()

                        if charConnection then
                            charConnection:Disconnect()

                            charConnection = nil
                        end

                        restoreCharacter(char)
                    end
                end
                function selfChams:setColor(c)
                    color = c

                    if enabled then
                        applyChams(lp.Character)
                    end
                end
                function selfChams:setTransparency(t)
                    transparency = t

                    if enabled then
                        applyChams(lp.Character)
                    end
                end
                function selfChams:setReflectance(r)
                    reflectance = r

                    if enabled then
                        applyChams(lp.Character)
                    end
                end
                function selfChams:setMaterial(m)
                    material = m

                    if enabled then
                        applyChams(lp.Character)
                    end
                end
                function selfChams:setEffect(e)
                    effect = e

                    if enabled then
                        if e == 'heat' then
                            startHeatLoop()
                        else
                            stopHeatLoop()
                            applyChams(lp.Character)
                        end
                    end
                end
                function selfChams:setAddEffect(e)
                    addEffect = e

                    if enabled then
                        removeParticles(lp.Character)

                        if e == 'stars' then
                            applyStars(lp.Character)
                        elseif e == 'particles' then
                            applyParticles(lp.Character)
                        end
                    end
                end
                function selfChams:setParticleColor(c)
                    particleColor = c

                    if enabled then
                        selfChams:setAddEffect(addEffect)
                    end
                end
                function selfChams:setParticleTransparency(t)
                    particleTransparency = t

                    if enabled then
                        selfChams:setAddEffect(addEffect)
                    end
                end

                return selfChams
            end
        end

        function __M.E(): typeof(__modImpl())
            local v = __M.cache.E

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.E = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local cache = __M.a()

            return function(api)
                local toolChams = {}
                local lp = api.lp
                local enabled = false
                local color = Color3.fromRGB(155, 125, 175)
                local transparency = 0
                local reflectance = 0
                local material = 'ForceField'
                local addEffect = 'none'
                local particleColor = Color3.fromRGB(255, 255, 255)
                local particleTransparency = 0
                local trackedTools = {}
                local cachedTools = {}
                local charConnection
                local toolAddedConn
                local toolRemovedConn

                local function removeParticles(tool)
                    if not tool then
                        return
                    end

                    for _, part in ipairs(tool:GetDescendants())do
                        if part:IsA('BasePart') or part:IsA('MeshPart') then
                            local stars = part:FindFirstChild('stars')
                            local specks = part:FindFirstChild('Specks')

                            if stars then
                                pcall(function()
                                    stars:Destroy()
                                end)
                            end
                            if specks then
                                pcall(function()
                                    specks:Destroy()
                                end)
                            end
                        end
                    end
                end
                local function applyStars(tool)
                    if not tool then
                        return
                    end

                    for _, part in ipairs(tool:GetDescendants())do
                        if (part:IsA('BasePart') or part:IsA('MeshPart')) and part.Name ~= 'Handle' then
                            local existing = part:FindFirstChild('stars')

                            if existing then
                                existing:Destroy()
                            end

                            pcall(function()
                                local stars = Instance.new('ParticleEmitter')

                                stars.Name = 'stars'
                                stars.Lifetime = NumberRange.new(0.45, 0.9)
                                stars.LockedToPart = true
                                stars.LightEmission = 1
                                stars.Drag = 5
                                stars.Squash = NumberSequence.new(-0.1)
                                stars.Speed = NumberRange.new(0.001, 0.001)
                                stars.Brightness = 3
                                stars.ZOffset = 1
                                stars.Size = NumberSequence.new({
                                    NumberSequenceKeypoint.new(0, 0),
                                    NumberSequenceKeypoint.new(0.508, 0.05, 0.05),
                                    NumberSequenceKeypoint.new(1, 0),
                                })
                                stars.Rate = 150
                                stars.Texture = 'rbxassetid://1084996976'
                                stars.EmissionDirection = Enum.NormalId.Bottom
                                stars.Color = ColorSequence.new(particleColor)
                                stars.Transparency = NumberSequence.new(particleTransparency)
                                stars.Parent = part
                            end)
                        end
                    end
                end
                local function applyParticles(tool)
                    if not tool then
                        return
                    end

                    for _, part in ipairs(tool:GetDescendants())do
                        if (part:IsA('BasePart') or part:IsA('MeshPart')) and part.Name ~= 'Handle' then
                            local existing = part:FindFirstChild('Specks')

                            if existing then
                                existing:Destroy()
                            end

                            pcall(function()
                                local specks = Instance.new('ParticleEmitter')

                                specks.Name = 'Specks'
                                specks.Lifetime = NumberRange.new(0.22, 0.22)
                                specks.SpreadAngle = Vector2.new(90, 90)

                                local t = particleTransparency

                                specks.Transparency = NumberSequence.new({
                                    NumberSequenceKeypoint.new(0, math.min(1, t + 0.8)),
                                    NumberSequenceKeypoint.new(0.25, math.max(0, t - 0.1)),
                                    NumberSequenceKeypoint.new(1, math.min(1, t + 0.8)),
                                })
                                specks.LightEmission = 1
                                specks.Color = ColorSequence.new(particleColor)
                                specks.Drag = 5
                                specks.Squash = NumberSequence.new(0)
                                specks.Speed = NumberRange.new(1, 1)
                                specks.Brightness = 4.2
                                specks.Size = NumberSequence.new(0.15)
                                specks.Acceleration = Vector3.new(0, -15, 0)
                                specks.RotSpeed = NumberRange.new(-45, 45)
                                specks.Rate = 100
                                specks.Texture = 'rbxassetid://7216849703'
                                specks.Parent = part
                            end)
                        end
                    end
                end
                local function cacheTool(tool)
                    if not tool or cachedTools[tool] then
                        return
                    end

                    cachedTools[tool] = {}

                    for _, part in ipairs(tool:GetDescendants())do
                        if part:IsA('BasePart') or part:IsA('MeshPart') then
                            cachedTools[tool][part] = {
                                Material = part.Material,
                                Color = part.Color,
                                Transparency = part.Transparency,
                                Reflectance = part.Reflectance,
                                TextureID = part:IsA('MeshPart') and part.TextureID or nil,
                            }
                        end
                    end
                end
                local function applyChams(tool)
                    if not tool or not enabled then
                        return
                    end

                    for _, part in ipairs(tool:GetDescendants())do
                        if part.Name ~= 'Handle' then
                            if part:IsA('MeshPart') then
                                pcall(function()
                                    part.Material = Enum.Material[material]
                                    part.Color = color
                                    part.Transparency = transparency
                                    part.Reflectance = reflectance
                                    part.TextureID = ''
                                end)
                            elseif part:IsA('BasePart') then
                                pcall(function()
                                    part.Material = Enum.Material[material]
                                    part.Color = color
                                    part.Transparency = transparency
                                    part.Reflectance = reflectance
                                end)
                            end
                        end
                    end

                    if addEffect == 'stars' then
                        applyStars(tool)
                    elseif addEffect == 'particles' then
                        applyParticles(tool)
                    else
                        removeParticles(tool)
                    end
                end
                local function restoreTool(tool)
                    if not tool then
                        return
                    end

                    removeParticles(tool)

                    local cached = cachedTools[tool]

                    if not cached then
                        return
                    end

                    for part, data in pairs(cached)do
                        if part and part.Parent then
                            pcall(function()
                                part.Material = data.Material
                                part.Color = data.Color
                                part.Transparency = data.Transparency
                                part.Reflectance = data.Reflectance

                                if part:IsA('MeshPart') and data.TextureID then
                                    part.TextureID = data.TextureID
                                end
                            end)
                        end
                    end
                end
                local function applyToAllTools()
                    local char = lp.Character

                    if not char then
                        return
                    end

                    for _, child in ipairs(char:GetChildren())do
                        if child:IsA('Tool') then
                            if not trackedTools[child] then
                                cacheTool(child)

                                trackedTools[child] = true
                            end

                            applyChams(child)
                        end
                    end
                end
                local function setupCharMonitoring(char)
                    if toolAddedConn then
                        toolAddedConn:Disconnect()
                    end
                    if toolRemovedConn then
                        toolRemovedConn:Disconnect()
                    end

                    toolAddedConn = char.ChildAdded:Connect(function(child)
                        if child:IsA('Tool') and enabled then
                            task.wait(0.1)
                            cacheTool(child)

                            trackedTools[child] = true

                            applyChams(child)
                        end
                    end)
                    toolRemovedConn = char.ChildRemoved:Connect(function(child)
                        if child:IsA('Tool') and trackedTools[child] then
                            trackedTools[child] = nil
                        end
                    end)
                end

                function toolChams:setEnabled(val)
                    enabled = val

                    if enabled then
                        trackedTools = {}
                        cachedTools = {}

                        local char = lp.Character

                        if char then
                            applyToAllTools()
                            setupCharMonitoring(char)
                        end
                        if charConnection then
                            charConnection:Disconnect()
                        end

                        charConnection = lp.CharacterAdded:Connect(function(
                            newChar
                        )
                            trackedTools = {}
                            cachedTools = {}

                            task.wait(0.5)

                            if enabled then
                                applyToAllTools()
                                setupCharMonitoring(newChar)
                            end
                        end)
                    else
                        if charConnection then
                            charConnection:Disconnect()

                            charConnection = nil
                        end
                        if toolAddedConn then
                            toolAddedConn:Disconnect()

                            toolAddedConn = nil
                        end
                        if toolRemovedConn then
                            toolRemovedConn:Disconnect()

                            toolRemovedConn = nil
                        end

                        for tool in pairs(trackedTools)do
                            if tool and tool.Parent then
                                restoreTool(tool)
                            end
                        end

                        trackedTools = {}
                        cachedTools = {}
                    end
                end
                function toolChams:setColor(c)
                    color = c

                    if enabled then
                        for tool in pairs(trackedTools)do
                            applyChams(tool)
                        end
                    end
                end
                function toolChams:setTransparency(t)
                    transparency = t

                    if enabled then
                        for tool in pairs(trackedTools)do
                            applyChams(tool)
                        end
                    end
                end
                function toolChams:setReflectance(r)
                    reflectance = r

                    if enabled then
                        for tool in pairs(trackedTools)do
                            applyChams(tool)
                        end
                    end
                end
                function toolChams:setMaterial(m)
                    material = m

                    if enabled then
                        for tool in pairs(trackedTools)do
                            applyChams(tool)
                        end
                    end
                end
                function toolChams:setAddEffect(e)
                    addEffect = e

                    if enabled then
                        for tool in pairs(trackedTools)do
                            removeParticles(tool)

                            if e == 'stars' then
                                applyStars(tool)
                            elseif e == 'particles' then
                                applyParticles(tool)
                            end
                        end
                    end
                end
                function toolChams:setParticleColor(c)
                    particleColor = c

                    if enabled then
                        toolChams:setAddEffect(addEffect)
                    end
                end
                function toolChams:setParticleTransparency(t)
                    particleTransparency = t

                    if enabled then
                        toolChams:setAddEffect(addEffect)
                    end
                end

                return toolChams
            end
        end

        function __M.F(): typeof(__modImpl())
            local v = __M.cache.F

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.F = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(api)
                local chinaHat = {}
                local lp = api.lp
                local loopManager = api.loopManager
                local cam = workspace.CurrentCamera
                local enabled = false
                local c1 = Color3.fromRGB(255, 255, 255)
                local c2 = Color3.fromRGB(255, 255, 255)
                local c3 = Color3.fromRGB(255, 255, 255)
                local c4 = Color3.fromRGB(255, 255, 255)
                local height = 0.7
                local radius = 2
                local sides = 25
                local hatTrs = 0.35
                local lineTrs = 1
                local speed = 0.2
                local offsetY = 0.5
                local drawings = {}

                local function lerp(a, b, t)
                    return a + (b - a) * t
                end
                local function lerpColor(a, b, t)
                    return Color3.new(lerp(a.R, b.R, t), lerp(a.G, b.G, t), lerp(a.B, b.B, t))
                end
                local function getColor(progress, time)
                    local s = (progress + time * speed) % 1

                    if s < 0.25 then
                        return lerpColor(c1, c2, s / 0.25)
                    elseif s < 0.5 then
                        return lerpColor(c2, c3, (s - 0.25) / 0.25)
                    elseif s < 0.75 then
                        return lerpColor(c3, c4, (s - 0.5) / 0.25)
                    else
                        return lerpColor(c4, c1, (s - 0.75) / 0.25)
                    end
                end
                local function createDrawings()
                    if #drawings == sides then
                        return
                    end

                    for _, d in ipairs(drawings)do
                        pcall(function()
                            if d[1] then
                                d[1]:Remove()
                            end
                        end)
                        pcall(function()
                            if d[2] then
                                d[2]:Remove()
                            end
                        end)
                    end

                    drawings = {}

                    for _ = 1, sides do
                        local line = Drawing.new('Line')
                        local triangle = Drawing.new('Triangle')

                        line.ZIndex = 2
                        line.Thickness = 1
                        triangle.ZIndex = 1
                        triangle.Filled = true

                        table.insert(drawings, {line, triangle})
                    end
                end
                local function setVisibility(visible)
                    for _, d in ipairs(drawings)do
                        if d[1] then
                            d[1].Visible = visible
                        end
                        if d[2] then
                            d[2].Visible = visible
                        end
                    end
                end
                local function cleanup()
                    if loopManager and loopManager:GetHeartbeat('china_hat') then
                        loopManager:RemoveHeartbeat('china_hat')
                    end

                    for _, d in ipairs(drawings)do
                        pcall(function()
                            if d[1] then
                                d[1]:Remove()
                            end
                        end)
                        pcall(function()
                            if d[2] then
                                d[2]:Remove()
                            end
                        end)
                    end

                    drawings = {}
                end
                local function render()
                    if not enabled then
                        cleanup()

                        return
                    end

                    local char = lp.Character
                    local head = char and char:FindFirstChild('Head')
                    local hum = char and char:FindFirstChildOfClass('Humanoid')

                    if not (char and head and hum and hum.Health > 0) then
                        setVisibility(false)

                        return
                    end

                    createDrawings()

                    local time = tick()
                    local fullCircle = math.pi * 2
                    local topPos = head.Position + Vector3.new(0, offsetY + height, 0)
                    local basePos = head.Position + Vector3.new(0, offsetY, 0)
                    local screenPos, onScreen = cam:WorldToViewportPoint(head.Position)

                    if not onScreen or screenPos.Z <= 0 then
                        setVisibility(false)

                        return
                    end

                    for i = 1, sides do
                        local line, triangle = drawings[i][1], drawings[i][2]
                        local progress1 = i / sides
                        local progress2 = (i % sides + 1) / sides
                        local angle1 = progress1 * fullCircle
                        local angle2 = progress2 * fullCircle
                        local point1 = basePos + Vector3.new(math.cos(angle1), 0, math.sin(angle1)) * radius
                        local point2 = basePos + Vector3.new(math.cos(angle2), 0, math.sin(angle2)) * radius
                        local screen1 = cam:WorldToViewportPoint(point1)
                        local screen2 = cam:WorldToViewportPoint(point2)
                        local screenTop = cam:WorldToViewportPoint(topPos)
                        local col = getColor(progress1, time)

                        line.From = Vector2.new(screen1.X, screen1.Y)
                        line.To = Vector2.new(screen2.X, screen2.Y)
                        line.Color = col
                        line.Transparency = lineTrs
                        line.Visible = true
                        triangle.PointA = Vector2.new(screenTop.X, screenTop.Y)
                        triangle.PointB = line.From
                        triangle.PointC = line.To
                        triangle.Color = col
                        triangle.Transparency = hatTrs
                        triangle.Visible = true
                    end
                end

                function chinaHat:setEnabled(val)
                    enabled = val

                    if enabled then
                        if loopManager then
                            loopManager:AddRenderStepped('china_hat', render)
                        end
                    else
                        cleanup()
                    end
                end
                function chinaHat:setColor1(c)
                    c1 = c
                end
                function chinaHat:setColor2(c)
                    c2 = c
                end
                function chinaHat:setColor3(c)
                    c3 = c
                end
                function chinaHat:setColor4(c)
                    c4 = c
                end
                function chinaHat:setHeight(h)
                    height = h
                end
                function chinaHat:setRadius(r)
                    radius = r
                end
                function chinaHat:setSides(s)
                    sides = s

                    for _, d in ipairs(drawings)do
                        pcall(function()
                            if d[1] then
                                d[1]:Remove()
                            end
                        end)
                        pcall(function()
                            if d[2] then
                                d[2]:Remove()
                            end
                        end)
                    end

                    drawings = {}
                end
                function chinaHat:setHatTransparency(t)
                    hatTrs = t
                end
                function chinaHat:setLineTransparency(t)
                    lineTrs = t
                end
                function chinaHat:setSpeed(s)
                    speed = s
                end
                function chinaHat:setOffsetY(o)
                    offsetY = o
                end

                return chinaHat
            end
        end

        function __M.G(): typeof(__modImpl())
            local v = __M.cache.G

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.G = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(api)
                local selfHighlight = {}
                local lp = api.lp
                local enabled = false
                local fillColor = Color3.fromRGB(255, 255, 255)
                local fillAlpha = 0.5
                local outlineColor = Color3.fromRGB(0, 0, 0)
                local outlineAlpha = 0
                local highlight
                local charConnection

                local function updateHighlight()
                    local char = lp.Character

                    if not char then
                        return
                    end
                    if highlight then
                        pcall(function()
                            highlight:Destroy()
                        end)

                        highlight = nil
                    end
                    if enabled then
                        highlight = Instance.new('Highlight')
                        highlight.Name = 'SelfHighlight'
                        highlight.Adornee = char
                        highlight.FillColor = fillColor
                        highlight.FillTransparency = fillAlpha
                        highlight.OutlineColor = outlineColor
                        highlight.OutlineTransparency = outlineAlpha
                        highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
                        highlight.Parent = char
                    end
                end

                function selfHighlight:setEnabled(val)
                    enabled = val

                    updateHighlight()

                    if enabled then
                        if charConnection then
                            charConnection:Disconnect()
                        end

                        charConnection = lp.CharacterAdded:Connect(function(
                            char
                        )
                            task.wait(0.1)

                            if enabled then
                                updateHighlight()
                            end
                        end)
                    else
                        if charConnection then
                            charConnection:Disconnect()

                            charConnection = nil
                        end
                    end
                end
                function selfHighlight:setFillColor(c)
                    fillColor = c

                    if highlight then
                        highlight.FillColor = c
                    end
                end
                function selfHighlight:setFillAlpha(a)
                    fillAlpha = a

                    if highlight then
                        highlight.FillTransparency = a
                    end
                end
                function selfHighlight:setOutlineColor(c)
                    outlineColor = c

                    if highlight then
                        highlight.OutlineColor = c
                    end
                end
                function selfHighlight:setOutlineAlpha(a)
                    outlineAlpha = a

                    if highlight then
                        highlight.OutlineTransparency = a
                    end
                end

                return selfHighlight
            end
        end

        function __M.H(): typeof(__modImpl())
            local v = __M.cache.H

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.H = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(api)
                local selfAura = {}
                local lp = api.lp
                local spawn = api.spawn or task.spawn
                local wait = api.wait or task.wait
                local enabled = false
                local auraColor = Color3.fromRGB(133, 220, 255)
                local auraTypes = {}
                local attachments = {}
                local particles = {}
                local charConnection

                local function clearAll()
                    for i = 1, #attachments do
                        if attachments[i] and attachments[i].Parent then
                            attachments[i]:Destroy()
                        end
                    end

                    attachments = {}
                    particles = {}
                end
                local function updateColors()
                    for i = 1, #particles do
                        if particles[i] and particles[i].Parent then
                            particles[i].Color = ColorSequence.new(auraColor)
                        end
                    end
                end
                local function createAngelic()
                    local character = lp.Character

                    if not character then
                        return
                    end

                    local torso = character:FindFirstChild('Torso') or character:FindFirstChild('UpperTorso')

                    if not torso then
                        return
                    end

                    local attachment1 = Instance.new('Attachment')

                    attachment1.CFrame = CFrame.new(-1.012, 0.5, 0.852, 0.966, 0, 0.259, 0, 1, 0, 
-0.259, 0, 0.966)
                    attachment1.Parent = torso

                    table.insert(attachments, attachment1)

                    local emitter1 = Instance.new('ParticleEmitter')

                    emitter1.Lifetime = NumberRange.new(1, 1)
                    emitter1.LockedToPart = true
                    emitter1.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0.944),
                        NumberSequenceKeypoint.new(0.2, 0),
                        NumberSequenceKeypoint.new(0.8, 0),
                        NumberSequenceKeypoint.new(1, 1),
                    })
                    emitter1.LightEmission = 1
                    emitter1.Color = ColorSequence.new(auraColor)
                    emitter1.Speed = NumberRange.new(0.05, 0.05)
                    emitter1.Size = NumberSequence.new(2.75, 3.5)
                    emitter1.Rate = 4
                    emitter1.Texture = 'http://www.roblox.com/asset/?id=13267054240'
                    emitter1.EmissionDirection = Enum.NormalId.Back
                    emitter1.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
                    emitter1.Rotation = NumberRange.new(-15, -15)
                    emitter1.Parent = attachment1

                    table.insert(particles, emitter1)

                    local attachment2 = Instance.new('Attachment')

                    attachment2.CFrame = CFrame.new(1.167, 0.5, 0.852, 0.966, 0, 
-0.259, 0, 1, 0, 0.259, 0, 0.966)
                    attachment2.Parent = torso

                    table.insert(attachments, attachment2)

                    local emitter2 = Instance.new('ParticleEmitter')

                    emitter2.Lifetime = NumberRange.new(1, 1)
                    emitter2.LockedToPart = true
                    emitter2.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0.944),
                        NumberSequenceKeypoint.new(0.2, 0),
                        NumberSequenceKeypoint.new(0.8, 0),
                        NumberSequenceKeypoint.new(1, 1),
                    })
                    emitter2.LightEmission = 1
                    emitter2.Color = ColorSequence.new(auraColor)
                    emitter2.Speed = NumberRange.new(0.05, 0.05)
                    emitter2.Size = NumberSequence.new(2.75, 3.5)
                    emitter2.Rate = 4
                    emitter2.Texture = 'http://www.roblox.com/asset/?id=13267054240'
                    emitter2.EmissionDirection = Enum.NormalId.Front
                    emitter2.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
                    emitter2.Rotation = NumberRange.new(-15, -15)
                    emitter2.Parent = attachment2

                    table.insert(particles, emitter2)

                    local attachment3 = Instance.new('Attachment')

                    attachment3.CFrame = CFrame.new(0, 0.3, 0)
                    attachment3.Parent = torso

                    table.insert(attachments, attachment3)

                    local emitter3 = Instance.new('ParticleEmitter')

                    emitter3.Lifetime = NumberRange.new(2, 2)
                    emitter3.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
                    emitter3.SpreadAngle = Vector2.new(180, 180)
                    emitter3.LockedToPart = true
                    emitter3.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 1),
                        NumberSequenceKeypoint.new(0.5, 0.3),
                        NumberSequenceKeypoint.new(1, 1),
                    })
                    emitter3.LightEmission = 1
                    emitter3.Color = ColorSequence.new(auraColor)
                    emitter3.VelocitySpread = 180
                    emitter3.Speed = NumberRange.new(0.5, 0.5)
                    emitter3.Brightness = 2
                    emitter3.Size = NumberSequence.new(3, 4)
                    emitter3.Rate = 5
                    emitter3.Texture = 'rbxassetid://11402221943'
                    emitter3.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
                    emitter3.Rotation = NumberRange.new(0, 360)
                    emitter3.Parent = attachment3

                    table.insert(particles, emitter3)
                end
                local function createAmbient()
                    local character = lp.Character

                    if not character then
                        return
                    end

                    local hrp = character:FindFirstChild('HumanoidRootPart')

                    if not hrp then
                        return
                    end

                    local attachment = Instance.new('Attachment')

                    attachment.CFrame = CFrame.new(0, -2.75, 0)
                    attachment.Parent = hrp

                    table.insert(attachments, attachment)

                    local emitter1 = Instance.new('ParticleEmitter')

                    emitter1.Lifetime = NumberRange.new(2, 2)
                    emitter1.SpreadAngle = Vector2.new(0.001, 0.001)
                    emitter1.LockedToPart = true
                    emitter1.Transparency = NumberSequence.new(0, 1)
                    emitter1.LightEmission = 1
                    emitter1.Color = ColorSequence.new(auraColor)
                    emitter1.VelocitySpread = 0.001
                    emitter1.Squash = NumberSequence.new(0)
                    emitter1.Speed = NumberRange.new(0.001, 0.001)
                    emitter1.Brightness = 2
                    emitter1.Size = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0),
                        NumberSequenceKeypoint.new(0.3, 1),
                        NumberSequenceKeypoint.new(0.6, 2.5),
                        NumberSequenceKeypoint.new(0.8, 4),
                        NumberSequenceKeypoint.new(1, 6),
                    })
                    emitter1.RotSpeed = NumberRange.new(-600, 600)
                    emitter1.Texture = 
[[https://assetgame.roblox.com/asset/?id=12713358087&assetName=crescent]]
                    emitter1.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
                    emitter1.Rotation = NumberRange.new(0, 360)
                    emitter1.Parent = attachment

                    table.insert(particles, emitter1)

                    local emitter2 = Instance.new('ParticleEmitter')

                    emitter2.Lifetime = NumberRange.new(2, 2)
                    emitter2.SpreadAngle = Vector2.new(0.001, 0.001)
                    emitter2.LockedToPart = true
                    emitter2.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0),
                        NumberSequenceKeypoint.new(0.6, 0.2),
                        NumberSequenceKeypoint.new(1, 1),
                    })
                    emitter2.LightEmission = 1
                    emitter2.Color = ColorSequence.new(auraColor)
                    emitter2.VelocitySpread = 0.001
                    emitter2.Squash = NumberSequence.new(0, 2)
                    emitter2.Speed = NumberRange.new(0.001, 0.001)
                    emitter2.Brightness = 2
                    emitter2.Size = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0),
                        NumberSequenceKeypoint.new(0.3, 1),
                        NumberSequenceKeypoint.new(0.6, 2.5),
                        NumberSequenceKeypoint.new(0.8, 4),
                        NumberSequenceKeypoint.new(1, 6),
                    })
                    emitter2.RotSpeed = NumberRange.new(-30, 30)
                    emitter2.Texture = 'rbxassetid://7216849325'
                    emitter2.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
                    emitter2.Rotation = NumberRange.new(0, 360)
                    emitter2.Parent = attachment

                    table.insert(particles, emitter2)

                    local emitter3 = Instance.new('ParticleEmitter')

                    emitter3.Lifetime = NumberRange.new(2, 2)
                    emitter3.SpreadAngle = Vector2.new(0.001, 0.001)
                    emitter3.LockedToPart = true
                    emitter3.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 1),
                        NumberSequenceKeypoint.new(0.2, 0.3),
                        NumberSequenceKeypoint.new(1, 1),
                    })
                    emitter3.LightEmission = 1
                    emitter3.Color = ColorSequence.new(auraColor)
                    emitter3.VelocitySpread = 0.001
                    emitter3.Squash = NumberSequence.new(0)
                    emitter3.Speed = NumberRange.new(0.001, 0.001)
                    emitter3.Brightness = 2
                    emitter3.Size = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0),
                        NumberSequenceKeypoint.new(0.3, 2),
                        NumberSequenceKeypoint.new(0.6, 5),
                        NumberSequenceKeypoint.new(0.8, 8),
                        NumberSequenceKeypoint.new(1, 12),
                    })
                    emitter3.RotSpeed = NumberRange.new(-40, 40)
                    emitter3.Texture = 'rbxassetid://7216855136'
                    emitter3.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
                    emitter3.Rotation = NumberRange.new(0, 360)
                    emitter3.Parent = attachment

                    table.insert(particles, emitter3)
                end
                local function createNimb()
                    local character = lp.Character

                    if not character then
                        return
                    end

                    local head = character:FindFirstChild('Head')

                    if not head then
                        return
                    end

                    local attachment = Instance.new('Attachment')

                    attachment.CFrame = CFrame.new(-0.25, 0.933, 0.259, 0.469, -0.25, 
-0.847, -0.117, 0.933, -0.34, 0.875, 0.259, 0.408)
                    attachment.Parent = head

                    table.insert(attachments, attachment)

                    local emitter1 = Instance.new('ParticleEmitter')

                    emitter1.Lifetime = NumberRange.new(1, 1)
                    emitter1.SpreadAngle = Vector2.new(5, 5)
                    emitter1.LockedToPart = true
                    emitter1.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 1),
                        NumberSequenceKeypoint.new(0.2, 0),
                        NumberSequenceKeypoint.new(0.8, 0),
                        NumberSequenceKeypoint.new(1, 1),
                    })
                    emitter1.LightEmission = 1
                    emitter1.Color = ColorSequence.new(auraColor)
                    emitter1.VelocitySpread = 5
                    emitter1.Speed = NumberRange.new(0.001, 0.001)
                    emitter1.Brightness = 2
                    emitter1.Size = NumberSequence.new(2.5, 3)
                    emitter1.RotSpeed = NumberRange.new(-400, 400)
                    emitter1.Rate = 7
                    emitter1.Texture = 'rbxassetid://8819682608'
                    emitter1.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
                    emitter1.Rotation = NumberRange.new(0, 360)
                    emitter1.Parent = attachment

                    table.insert(particles, emitter1)

                    local emitter2 = Instance.new('ParticleEmitter')

                    emitter2.Lifetime = NumberRange.new(1, 1)
                    emitter2.SpreadAngle = Vector2.new(5, 5)
                    emitter2.LockedToPart = true
                    emitter2.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 1),
                        NumberSequenceKeypoint.new(0.2, 0),
                        NumberSequenceKeypoint.new(0.8, 0),
                        NumberSequenceKeypoint.new(1, 1),
                    })
                    emitter2.LightEmission = 1
                    emitter2.Color = ColorSequence.new(auraColor)
                    emitter2.VelocitySpread = 5
                    emitter2.Speed = NumberRange.new(0.001, 0.001)
                    emitter2.Brightness = 2
                    emitter2.Size = NumberSequence.new(2, 3)
                    emitter2.RotSpeed = NumberRange.new(-400, 400)
                    emitter2.Rate = 7
                    emitter2.Texture = 'rbxassetid://8819682608'
                    emitter2.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
                    emitter2.Rotation = NumberRange.new(0, 360)
                    emitter2.Parent = attachment

                    table.insert(particles, emitter2)
                end
                local function createTornado()
                    local character = lp.Character

                    if not character then
                        return
                    end

                    local hrp = character:FindFirstChild('HumanoidRootPart')

                    if not hrp then
                        return
                    end

                    local attachment = Instance.new('Attachment')

                    attachment.CFrame = CFrame.new(0, -3, 0)
                    attachment.Parent = hrp

                    table.insert(attachments, attachment)

                    local emitter = Instance.new('ParticleEmitter')

                    emitter.LightInfluence = 1
                    emitter.LockedToPart = true
                    emitter.LightEmission = 1
                    emitter.Color = ColorSequence.new(auraColor)
                    emitter.Speed = NumberRange.new(0.01, 0.01)
                    emitter.Size = NumberSequence.new(6, 10)
                    emitter.RotSpeed = NumberRange.new(360, 360)
                    emitter.Rate = 1
                    emitter.Texture = 'http://www.roblox.com/asset/?id=8553497052'
                    emitter.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
                    emitter.Parent = attachment

                    table.insert(particles, emitter)
                end
                local function refreshAuras()
                    if not enabled then
                        clearAll()

                        return
                    end

                    clearAll()

                    if auraTypes['Angelic'] then
                        createAngelic()
                    end
                    if auraTypes['Ambient'] then
                        createAmbient()
                    end
                    if auraTypes['Nimb'] then
                        createNimb()
                    end
                    if auraTypes['Tornado'] then
                        createTornado()
                    end
                end
                local function onCharacterAdded()
                    if enabled then
                        wait(0.5)
                        refreshAuras()
                    end
                end

                function selfAura:setEnabled(val)
                    enabled = val

                    if val then
                        if not charConnection then
                            charConnection = lp.CharacterAdded:Connect(onCharacterAdded)
                        end
                        if lp.Character then
                            spawn(function()
                                wait(0.5)
                                refreshAuras()
                            end)
                        end
                    else
                        if charConnection then
                            charConnection:Disconnect()

                            charConnection = nil
                        end

                        clearAll()
                    end
                end
                function selfAura:setAuraTypes(types)
                    auraTypes = {}

                    if type(types) == 'table' then
                        for _, auraType in ipairs(types)do
                            auraTypes[auraType] = true
                        end
                    end

                    refreshAuras()
                end
                function selfAura:setAuraColor(color)
                    auraColor = color

                    if enabled and #particles > 0 then
                        updateColors()
                    end
                end

                return selfAura
            end
        end

        function __M.I(): typeof(__modImpl())
            local v = __M.cache.I

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.I = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(api)
                local aspectRatio = {}
                local loopManager = api.loopManager
                local workspace = api.workspace or game:GetService('Workspace')
                local enabled = false
                local horizontalStretch = 1
                local verticalStretch = 1
                local camera = workspace.CurrentCamera

                loopManager:AddRenderStepped('aspect_ratio', function()
                    if not enabled then
                        return
                    end
                    if not camera or not camera.Parent then
                        camera = workspace.CurrentCamera

                        if not camera then
                            return
                        end
                    end

                    local currentCFrame = camera.CFrame
                    local X, Y, Z, R00, R01, R02, R10, R11, R12, R20, R21, R22 = currentCFrame:GetComponents()

                    camera.CFrame = CFrame.new(X, Y, Z, R00 * horizontalStretch, R01 * verticalStretch, R02, R10, R11 * verticalStretch, R12, R20 * horizontalStretch, R21 * verticalStretch, R22)
                end)

                function aspectRatio:setEnabled(val)
                    enabled = val
                end
                function aspectRatio:setHorizontalStretch(val)
                    horizontalStretch = val
                end
                function aspectRatio:setVerticalStretch(val)
                    verticalStretch = val
                end

                return aspectRatio
            end
        end

        function __M.J(): typeof(__modImpl())
            local v = __M.cache.J

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.J = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(api)
                local grenadeEsp = {}
                local lib = api.lib
                local loopManager = api.loopManager
                local ws = workspace
                local cam = ws.CurrentCamera
                local lp = game:GetService('Players').LocalPlayer
                local enabled = false
                local showCircle = false
                local showIndicator = false
                local circleRadius = 12
                local circleSides = 30
                local circleThickness = 2
                local colorSafe = Color3.fromHex('305261')
                local colorDanger = Color3.fromRGB(255, 0, 0)
                local imgSize = 100
                local imgScale = 0.5
                local grenadeData = {}
                local maxGrenades = 10

                local function getBgColor()
                    return lib and lib.Theme and lib.Theme.Background or Color3.fromHex('1b1b1b')
                end
                local function createCircleForGrenade()
                    local lines = {}

                    for _ = 1, circleSides do
                        local line = Drawing.new('Line')

                        line.Visible = false
                        line.Thickness = circleThickness
                        line.ZIndex = 2

                        table.insert(lines, line)
                    end

                    return lines
                end
                local function createIndicatorForGrenade()
                    local screenGui = Instance.new('ScreenGui')

                    screenGui.Name = 'GrenadeInd'
                    screenGui.ResetOnSpawn = false
                    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                    screenGui.Enabled = false
                    screenGui.Parent = lp:WaitForChild('PlayerGui')

                    local size = imgSize * imgScale
                    local frame = Instance.new('Frame')

                    frame.Size = UDim2.fromOffset(size, size)
                    frame.AnchorPoint = Vector2.new(0.5, 0.5)
                    frame.BorderSizePixel = 0
                    frame.BackgroundColor3 = getBgColor()
                    frame.Parent = screenGui

                    local corner = Instance.new('UICorner')

                    corner.CornerRadius = UDim.new(2, 8)
                    corner.Parent = frame

                    local uiStroke = Instance.new('UIStroke')

                    uiStroke.Color = colorSafe
                    uiStroke.Thickness = 1.5
                    uiStroke.Parent = frame

                    local imageLabel = Instance.new('ImageLabel')

                    imageLabel.ZIndex = 10
                    imageLabel.Size = UDim2.new(0.8, 0, 0.8, 0)
                    imageLabel.ClipsDescendants = true
                    imageLabel.BackgroundTransparency = 1
                    imageLabel.Position = UDim2.new(0.1, 0, 0.1, 0)
                    imageLabel.BorderSizePixel = 0
                    imageLabel.Image = 'rbxassetid://118913496210617'
                    imageLabel.ImageColor3 = colorSafe
                    imageLabel.Parent = frame

                    return {
                        gui = screenGui,
                        frame = frame,
                        stroke = uiStroke,
                        image = imageLabel,
                    }
                end
                local function initPool()
                    for i = 1, maxGrenades do
                        grenadeData[i] = {
                            circles = createCircleForGrenade(),
                            indicator = createIndicatorForGrenade(),
                            active = false,
                        }
                    end
                end
                local function hideAll()
                    for _, data in ipairs(grenadeData)do
                        for _, line in ipairs(data.circles)do
                            line.Visible = false
                        end

                        if data.indicator.gui then
                            data.indicator.gui.Enabled = false
                        end

                        data.active = false
                    end
                end
                local function cleanupPool()
                    for _, data in ipairs(grenadeData)do
                        for _, line in ipairs(data.circles)do
                            pcall(function()
                                line:Remove()
                            end)
                        end

                        if data.indicator.gui then
                            pcall(function()
                                data.indicator.gui:Destroy()
                            end)
                        end
                    end

                    grenadeData = {}
                end
                local function getGrenades()
                    local grenades = {}
                    local ignored = ws:FindFirstChild('Ignored')

                    if not ignored then
                        return grenades
                    end

                    for _, child in ipairs(ignored:GetChildren())do
                        if child.Name == 'Handle' and child:IsA('BasePart') then
                            table.insert(grenades, child)
                        end
                    end

                    return grenades
                end
                local function isPlayerInDanger(grenadePos)
                    if not lp.Character then
                        return false
                    end

                    local hrp = lp.Character:FindFirstChild('HumanoidRootPart')

                    if not hrp then
                        return false
                    end

                    return (hrp.Position - grenadePos).Magnitude <= circleRadius
                end
                local function renderCircle(lines, grenadePos, lineColor)
                    local fullCircle = math.pi * 2

                    for i = 1, circleSides do
                        local angle1 = (i - 1) / circleSides * fullCircle
                        local angle2 = i / circleSides * fullCircle
                        local point1 = grenadePos + Vector3.new(math.cos(angle1) * circleRadius, 0, math.sin(angle1) * circleRadius)
                        local point2 = grenadePos + Vector3.new(math.cos(angle2) * circleRadius, 0, math.sin(angle2) * circleRadius)
                        local screen1, onScreen1 = cam:WorldToViewportPoint(point1)
                        local screen2, onScreen2 = cam:WorldToViewportPoint(point2)
                        local line = lines[i]

                        if onScreen1 and onScreen2 and screen1.Z > 0 and screen2.Z > 0 then
                            line.From = Vector2.new(screen1.X, screen1.Y)
                            line.To = Vector2.new(screen2.X, screen2.Y)
                            line.Color = lineColor
                            line.Thickness = circleThickness
                            line.Visible = true
                        else
                            line.Visible = false
                        end
                    end
                end
                local function renderIndicator(ind, grenadePos, lineColor)
                    local screenPos, onScreen = cam:WorldToViewportPoint(grenadePos)

                    if onScreen and screenPos.Z > 0 then
                        ind.frame.Position = UDim2.fromOffset(screenPos.X, screenPos.Y - 60 - (imgSize * imgScale / 2))
                        ind.frame.BackgroundColor3 = getBgColor()
                        ind.stroke.Color = lineColor
                        ind.image.ImageColor3 = lineColor
                        ind.gui.Enabled = true
                    else
                        ind.gui.Enabled = false
                    end
                end
                local function render()
                    if not enabled then
                        hideAll()

                        return
                    end

                    local grenades = getGrenades()

                    if #grenades == 0 then
                        hideAll()

                        return
                    end

                    for i, data in ipairs(grenadeData)do
                        local grenade = grenades[i]

                        if grenade then
                            local pos = grenade.Position
                            local inDanger = isPlayerInDanger(pos)
                            local color = inDanger and colorDanger or colorSafe

                            data.active = true

                            if showCircle then
                                renderCircle(data.circles, pos, color)
                            else
                                for _, l in ipairs(data.circles)do
                                    l.Visible = false
                                end
                            end
                            if showIndicator then
                                renderIndicator(data.indicator, pos, color)
                            else
                                data.indicator.gui.Enabled = false
                            end
                        else
                            for _, line in ipairs(data.circles)do
                                line.Visible = false
                            end

                            data.indicator.gui.Enabled = false
                            data.active = false
                        end
                    end
                end
                local function cleanup()
                    if loopManager and loopManager:GetHeartbeat('grenade_esp') then
                        loopManager:RemoveHeartbeat('grenade_esp')
                    end

                    hideAll()
                    cleanupPool()
                end

                function grenadeEsp:setEnabled(val)
                    enabled = val

                    if enabled then
                        if #grenadeData == 0 then
                            initPool()
                        end
                        if loopManager then
                            loopManager:AddHeartbeat('grenade_esp', render)
                        end
                    else
                        cleanup()
                    end
                end
                function grenadeEsp:setBubble(val)
                    showCircle = val
                end
                function grenadeEsp:setText(val)
                    showIndicator = val
                end
                function grenadeEsp:setCheckPos(val) end
                function grenadeEsp:setDangerColor(c)
                    colorDanger = c
                end
                function grenadeEsp:setSafeColor(c)
                    colorSafe = c
                end
                function grenadeEsp:setCircle(val)
                    showCircle = val
                end
                function grenadeEsp:setCircleThickness(t)
                    circleThickness = t

                    for _, data in ipairs(grenadeData)do
                        for _, line in ipairs(data.circles)do
                            line.Thickness = t
                        end
                    end
                end
                function grenadeEsp:setColorSafe(c)
                    colorSafe = c
                end
                function grenadeEsp:setColorDanger(c)
                    colorDanger = c
                end
                function grenadeEsp:setIndicator(val)
                    showIndicator = val
                end
                function grenadeEsp:setIndicatorScale(s)
                    imgScale = s

                    local size = imgSize * imgScale

                    for _, data in ipairs(grenadeData)do
                        if data.indicator.frame then
                            data.indicator.frame.Size = UDim2.fromOffset(size, size)
                        end
                    end
                end

                return grenadeEsp
            end
        end

        function __M.K(): typeof(__modImpl())
            local v = __M.cache.K

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.K = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(api)
                local rpgEsp = {}
                local lib = api.lib
                local loopManager = api.loopManager
                local ws = workspace
                local cam = ws.CurrentCamera
                local lp = game:GetService('Players').LocalPlayer
                local enabled = false
                local showCircle = false
                local showIndicator = false
                local circleRadius = 12
                local circleSides = 30
                local circleThickness = 2
                local colorSafe = Color3.fromHex('305261')
                local colorDanger = Color3.fromRGB(255, 0, 0)
                local imgSize = 100
                local imgScale = 0.5
                local rpgData = {}
                local maxRpgs = 10

                local function getBgColor()
                    return lib and lib.Theme and lib.Theme.Background or Color3.fromHex('1b1b1b')
                end
                local function createCircleForRpg()
                    local lines = {}

                    for _ = 1, circleSides do
                        local line = Drawing.new('Line')

                        line.Visible = false
                        line.Thickness = circleThickness
                        line.ZIndex = 2

                        table.insert(lines, line)
                    end

                    return lines
                end
                local function createIndicatorForRpg()
                    local screenGui = Instance.new('ScreenGui')

                    screenGui.Name = 'RpgInd'
                    screenGui.ResetOnSpawn = false
                    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                    screenGui.Enabled = false
                    screenGui.Parent = lp:WaitForChild('PlayerGui')

                    local size = imgSize * imgScale
                    local frame = Instance.new('Frame')

                    frame.Size = UDim2.fromOffset(size, size)
                    frame.AnchorPoint = Vector2.new(0.5, 0.5)
                    frame.BorderSizePixel = 0
                    frame.BackgroundColor3 = getBgColor()
                    frame.Parent = screenGui

                    local corner = Instance.new('UICorner')

                    corner.CornerRadius = UDim.new(2, 8)
                    corner.Parent = frame

                    local uiStroke = Instance.new('UIStroke')

                    uiStroke.Color = colorSafe
                    uiStroke.Thickness = 1.5
                    uiStroke.Parent = frame

                    local imageLabel = Instance.new('ImageLabel')

                    imageLabel.ZIndex = 10
                    imageLabel.Size = UDim2.new(0.8, 0, 0.8, 0)
                    imageLabel.ClipsDescendants = true
                    imageLabel.BackgroundTransparency = 1
                    imageLabel.Position = UDim2.new(0.1, 0, 0.1, 0)
                    imageLabel.BorderSizePixel = 0
                    imageLabel.Image = 'rbxassetid://92903099859013'
                    imageLabel.ImageColor3 = colorSafe
                    imageLabel.Parent = frame

                    return {
                        gui = screenGui,
                        frame = frame,
                        stroke = uiStroke,
                        image = imageLabel,
                    }
                end
                local function initPool()
                    for i = 1, maxRpgs do
                        rpgData[i] = {
                            circles = createCircleForRpg(),
                            indicator = createIndicatorForRpg(),
                            active = false,
                        }
                    end
                end
                local function hideAll()
                    for _, data in ipairs(rpgData)do
                        for _, line in ipairs(data.circles)do
                            line.Visible = false
                        end

                        if data.indicator.gui then
                            data.indicator.gui.Enabled = false
                        end

                        data.active = false
                    end
                end
                local function cleanupPool()
                    for _, data in ipairs(rpgData)do
                        for _, line in ipairs(data.circles)do
                            pcall(function()
                                line:Remove()
                            end)
                        end

                        if data.indicator.gui then
                            pcall(function()
                                data.indicator.gui:Destroy()
                            end)
                        end
                    end

                    rpgData = {}
                end
                local function getRpgs()
                    local rpgs = {}
                    local ignored = ws:FindFirstChild('Ignored')

                    if not ignored then
                        return rpgs
                    end

                    for _, child in ipairs(ignored:GetChildren())do
                        if child.Name == 'Model' and child:IsA('Model') then
                            local primary = child.PrimaryPart or child:FindFirstChildWhichIsA('BasePart')

                            if primary then
                                table.insert(rpgs, primary)
                            end
                        end
                    end

                    return rpgs
                end
                local function isPlayerInDanger(rpgPos)
                    if not lp.Character then
                        return false
                    end

                    local hrp = lp.Character:FindFirstChild('HumanoidRootPart')

                    if not hrp then
                        return false
                    end

                    return (hrp.Position - rpgPos).Magnitude <= circleRadius
                end
                local function renderCircle(lines, rpgPos, lineColor)
                    local fullCircle = math.pi * 2

                    for i = 1, circleSides do
                        local angle1 = (i - 1) / circleSides * fullCircle
                        local angle2 = i / circleSides * fullCircle
                        local point1 = rpgPos + Vector3.new(math.cos(angle1) * circleRadius, 0, math.sin(angle1) * circleRadius)
                        local point2 = rpgPos + Vector3.new(math.cos(angle2) * circleRadius, 0, math.sin(angle2) * circleRadius)
                        local screen1, onScreen1 = cam:WorldToViewportPoint(point1)
                        local screen2, onScreen2 = cam:WorldToViewportPoint(point2)
                        local line = lines[i]

                        if onScreen1 and onScreen2 and screen1.Z > 0 and screen2.Z > 0 then
                            line.From = Vector2.new(screen1.X, screen1.Y)
                            line.To = Vector2.new(screen2.X, screen2.Y)
                            line.Color = lineColor
                            line.Thickness = circleThickness
                            line.Visible = true
                        else
                            line.Visible = false
                        end
                    end
                end
                local function renderIndicator(ind, rpgPos, lineColor)
                    local screenPos, onScreen = cam:WorldToViewportPoint(rpgPos)

                    if onScreen and screenPos.Z > 0 then
                        ind.frame.Position = UDim2.fromOffset(screenPos.X, screenPos.Y - 60 - (imgSize * imgScale / 2))
                        ind.frame.BackgroundColor3 = getBgColor()
                        ind.stroke.Color = lineColor
                        ind.image.ImageColor3 = lineColor
                        ind.gui.Enabled = true
                    else
                        ind.gui.Enabled = false
                    end
                end
                local function render()
                    if not enabled then
                        hideAll()

                        return
                    end

                    local rpgs = getRpgs()

                    if #rpgs == 0 then
                        hideAll()

                        return
                    end

                    for i, data in ipairs(rpgData)do
                        local rpg = rpgs[i]

                        if rpg then
                            local pos = rpg.Position
                            local inDanger = isPlayerInDanger(pos)
                            local color = inDanger and colorDanger or colorSafe

                            data.active = true

                            if showCircle then
                                renderCircle(data.circles, pos, color)
                            else
                                for _, l in ipairs(data.circles)do
                                    l.Visible = false
                                end
                            end
                            if showIndicator then
                                renderIndicator(data.indicator, pos, color)
                            else
                                data.indicator.gui.Enabled = false
                            end
                        else
                            for _, line in ipairs(data.circles)do
                                line.Visible = false
                            end

                            data.indicator.gui.Enabled = false
                            data.active = false
                        end
                    end
                end
                local function cleanup()
                    if loopManager and loopManager:GetHeartbeat('rpg_esp') then
                        loopManager:RemoveHeartbeat('rpg_esp')
                    end

                    hideAll()
                    cleanupPool()
                end

                function rpgEsp:setEnabled(val)
                    enabled = val

                    if enabled then
                        if #rpgData == 0 then
                            initPool()
                        end
                        if loopManager then
                            loopManager:AddHeartbeat('rpg_esp', render)
                        end
                    else
                        cleanup()
                    end
                end
                function rpgEsp:setCircle(val)
                    showCircle = val
                end
                function rpgEsp:setCircleThickness(t)
                    circleThickness = t

                    for _, data in ipairs(rpgData)do
                        for _, line in ipairs(data.circles)do
                            line.Thickness = t
                        end
                    end
                end
                function rpgEsp:setColorSafe(c)
                    colorSafe = c
                end
                function rpgEsp:setColorDanger(c)
                    colorDanger = c
                end
                function rpgEsp:setIndicator(val)
                    showIndicator = val
                end
                function rpgEsp:setIndicatorScale(s)
                    imgScale = s

                    local size = imgSize * imgScale

                    for _, data in ipairs(rpgData)do
                        if data.indicator.frame then
                            data.indicator.frame.Size = UDim2.fromOffset(size, size)
                        end
                    end
                end

                return rpgEsp
            end
        end

        function __M.L(): typeof(__modImpl())
            local v = __M.cache.L

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.L = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(api)
                local imageChanger = {}
                local lp = game:GetService('Players').LocalPlayer
                local rs = game:GetService('ReplicatedStorage')
                local runService = game:GetService('RunService')
                local enabled = false
                local currentDamage = 'normal'
                local currentAmmo = 'normal'
                local currentShoot = 'normal'
                local images = {
                    normal_dmg = 'http://www.roblox.com/asset/?id=2827810687',
                    normal_ammo = 'http://www.roblox.com/asset/?id=444744114',
                    normal_shoot = 'http://www.roblox.com/asset/?id=2769170822',
                    peter = 'http://www.roblox.com/asset/?id=10062244808',
                    jumpscare = 'http://www.roblox.com/asset/?id=1021461193',
                }

                local function getImage(name, type)
                    if name == 'normal' then
                        if type == 'dmg' then
                            return images.normal_dmg
                        elseif type == 'ammo' then
                            return images.normal_ammo
                        elseif type == 'shoot' then
                            return images.normal_shoot
                        end
                    end

                    return images[name] or images.normal_dmg
                end

                function imageChanger:setDamageIndicator(val)
                    currentDamage = val

                    if not enabled then
                        return
                    end

                    pcall(function()
                        local indicator = rs:FindFirstChild('DMGIndicator')

                        if indicator then
                            indicator.Image = getImage(val, 'dmg')
                        end
                    end)
                end
                function imageChanger:setAmmoImage(val)
                    currentAmmo = val

                    if not enabled then
                        return
                    end

                    pcall(function()
                        local ammo = rs:FindFirstChild('AmmoG')

                        if ammo then
                            ammo.Image = getImage(val, 'ammo')
                        end
                    end)
                end
                function imageChanger:setShootIndicator(val)
                    currentShoot = val

                    if not enabled then
                        return
                    end

                    pcall(function()
                        runService.Stepped:Wait()

                        local char = lp.Character

                        if not char then
                            return
                        end

                        local tool = char:FindFirstChildOfClass('Tool')

                        if not tool then
                            return
                        end

                        local handle = tool:FindFirstChild('Handle')

                        if not handle then
                            return
                        end

                        local gui = handle:FindFirstChild('ShootBBGUI')

                        if not gui then
                            return
                        end

                        local shoot = gui:FindFirstChild('Shoot')

                        if shoot then
                            shoot.Image = getImage(val, 'shoot')
                        end
                    end)
                end
                function imageChanger:setEnabled(val)
                    enabled = val

                    if enabled then
                        self:setDamageIndicator(currentDamage)
                        self:setAmmoImage(currentAmmo)
                        self:setShootIndicator(currentShoot)
                    else
                        self:setDamageIndicator('normal')
                        self:setAmmoImage('normal')
                        self:setShootIndicator('normal')
                    end
                end

                return imageChanger
            end
        end

        function __M.M(): typeof(__modImpl())
            local v = __M.cache.M

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.M = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(api)
                local textureChanger = {}
                local ws = workspace
                local faces = {
                    Enum.NormalId.Front,
                    Enum.NormalId.Back,
                    Enum.NormalId.Bottom,
                    Enum.NormalId.Top,
                    Enum.NormalId.Right,
                    Enum.NormalId.Left,
                }
                local materials = {
                    Wood = '128754006217410',
                    WoodPlanks = '8676581022',
                    Brick = '8139086777',
                    Cobblestone = '17874801808',
                    Concrete = '15622710576',
                    DiamondPlate = '14197861013',
                    Fabric = '9744916443',
                    Granite = '4714662147',
                    Grass = '9267183930',
                    Ice = '11413423466',
                    Marble = '14974016515',
                    Metal = '12623531687',
                    Sand = '11119324718',
                    Slate = '8139086777',
                    Ground = '9267089500',
                }
                local processedParts = {}

                local function applyTextures()
                    for _, part in ipairs(ws:GetDescendants())do
                        if part:IsA('BasePart') and not processedParts[part] then
                            local texId = materials[part.Material.Name]

                            if texId then
                                for _, face in ipairs(faces)do
                                    local tex = Instance.new('Texture')

                                    tex.Name = 'SymbolTex'
                                    tex.ZIndex = 2147483647
                                    tex.Texture = 'rbxassetid://' .. texId
                                    tex.Face = face
                                    tex.Color3 = part.Color
                                    tex.Transparency = part.Transparency
                                    tex.StudsPerTileU = 4
                                    tex.StudsPerTileV = 4
                                    tex.Parent = part
                                end

                                part.Material = Enum.Material.SmoothPlastic
                                processedParts[part] = true
                            end
                        end
                    end
                end
                local function removeTextures()
                    for _, obj in ipairs(ws:GetDescendants())do
                        if obj:IsA('Texture') and obj.Name == 'SymbolTex' then
                            obj:Destroy()
                        end
                    end

                    processedParts = {}
                end

                function textureChanger:setEnabled(val)
                    if val then
                        task.spawn(applyTextures)
                    else
                        task.spawn(removeTextures)
                    end
                end

                return textureChanger
            end
        end

        function __M.N(): typeof(__modImpl())
            local v = __M.cache.N

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.N = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(api)
                local bulletTracers = {}
                local ws = workspace
                local cam = ws.CurrentCamera
                local runService = game:GetService('RunService')
                local lp = game:GetService('Players').LocalPlayer
                local enabled = false
                local tracerMode = 'beam'
                local tracerColor = Color3.fromRGB(155, 125, 175)
                local tracerTransparency = 0
                local tracerSize = 1
                local tracerLifetime = 3
                local tracerOutline = false
                local tracerTexture = 'rbxassetid://446111271'
                local textures = {
                    beam = 'rbxassetid://12781852245',
                    lightning = 'rbxassetid://446111271',
                    heartrate = 'rbxassetid://5830549480',
                    chain = 'rbxassetid://9632168658',
                    glitch = 'rbxassetid://8089467613',
                    swirl = 'rbxassetid://5638168605',
                }
                local tracerContainer = Instance.new('Folder')

                tracerContainer.Name = 'SymbolTracers'
                tracerContainer.Parent = ws

                local bulletRaysPath = ws:FindFirstChild('Ignored')

                if bulletRaysPath then
                    bulletRaysPath = bulletRaysPath:FindFirstChild('Siren')

                    if bulletRaysPath then
                        bulletRaysPath = bulletRaysPath:FindFirstChild('Radius')
                    end
                end
                if bulletRaysPath then
                    local cleanupFrame = 0

                    runService.RenderStepped:Connect(function()
                        if enabled then
                            cleanupFrame = cleanupFrame + 1

                            if cleanupFrame >= 2 then
                                cleanupFrame = 0

                                for _, child in ipairs(bulletRaysPath:GetChildren())do
                                    if child.Name == 'BULLET_RAYS' then
                                        child:Destroy()
                                    end
                                end
                            end
                        end
                    end)
                end

                local function createBeamTracer(startPos, endPos)
                    local colorSeq = ColorSequence.new({
                        ColorSequenceKeypoint.new(0, tracerColor),
                        ColorSequenceKeypoint.new(1, tracerColor),
                    })
                    local startPart = Instance.new('Part')

                    startPart.Size = Vector3.new(0, 0, 0)
                    startPart.Transparency = 1
                    startPart.CanCollide = false
                    startPart.Anchored = true
                    startPart.Position = startPos
                    startPart.Parent = tracerContainer

                    local startAtt = Instance.new('Attachment')

                    startAtt.Parent = startPart

                    local endPart = Instance.new('Part')

                    endPart.Size = Vector3.new(0, 0, 0)
                    endPart.Transparency = 1
                    endPart.CanCollide = false
                    endPart.Anchored = true
                    endPart.Position = endPos
                    endPart.Parent = tracerContainer

                    local endAtt = Instance.new('Attachment')

                    endAtt.Parent = endPart

                    local beam = Instance.new('Beam')

                    beam.FaceCamera = true
                    beam.Color = colorSeq
                    beam.Attachment0 = startAtt
                    beam.Attachment1 = endAtt
                    beam.LightEmission = 6
                    beam.LightInfluence = 1
                    beam.Width0 = tracerSize
                    beam.Width1 = tracerSize
                    beam.Texture = tracerTexture
                    beam.TextureSpeed = 1
                    beam.TextureLength = 1
                    beam.Transparency = NumberSequence.new(tracerTransparency)
                    beam.Parent = startPart

                    task.delay(tracerLifetime, function()
                        if startPart.Parent then
                            startPart:Destroy()
                        end
                        if endPart.Parent then
                            endPart:Destroy()
                        end
                    end)
                end
                local function createDrawingTracer(startPos, endPos)
                    local line = Drawing.new('Line')

                    line.Color = tracerColor
                    line.Visible = false
                    line.Transparency = 1 - tracerTransparency
                    line.Thickness = tracerSize
                    line.ZIndex = 3

                    local outline

                    if tracerOutline then
                        outline = Drawing.new('Line')
                        outline.Color = Color3.fromRGB(0, 0, 0)
                        outline.Visible = false
                        outline.Transparency = 1 - tracerTransparency
                        outline.Thickness = tracerSize + 2
                        outline.ZIndex = 2
                    end

                    local conn

                    conn = runService.RenderStepped:Connect(function()
                        local s1, on1 = cam:WorldToViewportPoint(startPos)
                        local s2, on2 = cam:WorldToViewportPoint(endPos)

                        if on1 and on2 and s1.Z > 0 and s2.Z > 0 then
                            line.From = Vector2.new(s1.X, s1.Y)
                            line.To = Vector2.new(s2.X, s2.Y)
                            line.Color = tracerColor
                            line.Transparency = 1 - tracerTransparency
                            line.Visible = true

                            if outline then
                                outline.From = Vector2.new(s1.X, s1.Y)
                                outline.To = Vector2.new(s2.X, s2.Y)
                                outline.Transparency = 1 - tracerTransparency
                                outline.Visible = true
                            end
                        else
                            line.Visible = false

                            if outline then
                                outline.Visible = false
                            end
                        end
                    end)

                    task.delay(tracerLifetime, function()
                        if conn then
                            conn:Disconnect()
                        end
                        if line then
                            line:Remove()
                        end
                        if outline then
                            outline:Remove()
                        end
                    end)
                end

                function bulletTracers:create(startPos, endPos)
                    if not enabled then
                        return
                    end
                    if tracerMode == 'beam' then
                        createBeamTracer(startPos, endPos)
                    else
                        createDrawingTracer(startPos, endPos)
                    end
                end
                function bulletTracers:setEnabled(val)
                    enabled = val
                end
                function bulletTracers:setMode(val)
                    tracerMode = val
                end
                function bulletTracers:setColor(c)
                    tracerColor = c
                end
                function bulletTracers:setTransparency(t)
                    tracerTransparency = t
                end
                function bulletTracers:setSize(s)
                    tracerSize = s
                end
                function bulletTracers:setLifetime(l)
                    tracerLifetime = l
                end
                function bulletTracers:setOutline(o)
                    tracerOutline = o
                end
                function bulletTracers:setTexture(t)
                    tracerTexture = textures[t] or textures.lightning
                end

                return bulletTracers
            end
        end

        function __M.O(): typeof(__modImpl())
            local v = __M.cache.O

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.O = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(api)
                local hitDetection = {}
                local rs = game:GetService('ReplicatedStorage')
                local stats = game:GetService('Stats')
                local players = game:GetService('Players')
                local lp = players.LocalPlayer
                local hooked = false
                local enabled = false
                local bloodSplatters = {}
                local onShotCallback
                local onHitCallback
                local onHitShotCallback
                local onHitNotifyCallback

                local function getPing()
                    local ok, ping = pcall(function()
                        return stats.Network.ServerStatsItem['Data Ping']:GetValue()
                    end)

                    return ok and ping or 100
                end
                local function findMainEvent()
                    if rs:FindFirstChild('MainEvent') then
                        return rs.MainEvent
                    elseif rs:FindFirstChild('MAINEVENT') then
                        return rs.MAINEVENT
                    elseif rs:FindFirstChild('MainRemotes') and rs.MainRemotes:FindFirstChild('MainRemoteEvent') then
                        return rs.MainRemotes.MainRemoteEvent
                    end

                    return nil
                end
                local function getClosestPlayer(radius, pos)
                    local dist, closest = radius

                    for _, plr in ipairs(players:GetPlayers())do
                        if plr ~= lp and plr.Character then
                            local hrp = plr.Character:FindFirstChild('HumanoidRootPart')

                            if hrp then
                                local d = (hrp.Position - pos).Magnitude

                                if d < dist then
                                    closest, dist = plr, d
                                end
                            end
                        end
                    end

                    return closest
                end
                local function hasBloodSplatter(plr)
                    if not plr or not plr.Character then
                        return false
                    end

                    for _, inst in ipairs(plr.Character:GetDescendants())do
                        if (inst.Name == 'BloodSplatter' or inst.Name == 'BloodParticles' or inst.Name == 'BloodParticle') and not table.find(bloodSplatters, inst) then
                            table.insert(bloodSplatters, inst)

                            return true, inst.Parent
                        end
                    end

                    return false
                end
                local function checkHPDecrease(plr, oldHP)
                    if not plr or not plr.Character then
                        return false
                    end

                    local humanoid = plr.Character:FindFirstChild('Humanoid')

                    if not humanoid then
                        return false
                    end

                    local newHP = humanoid.Health

                    return newHP < oldHP
                end
                local function onShot(handle, startPos, endPos)
                    local tool = handle and handle.Parent
                    local toolName = tool and tool.Name or '?'
                    local plr = getClosestPlayer(10, endPos)

                    if not plr then
                        return
                    end

                    local oldHP

                    if plr.Character then
                        local humanoid = plr.Character:FindFirstChild('Humanoid')

                        if humanoid then
                            oldHP = humanoid.Health
                        end
                    end

                    local waitTime = (getPing() + 30) / 1000

                    task.delay(waitTime, function()
                        local hit, part = hasBloodSplatter(plr)
                        local hpDecreased = oldHP and checkHPDecrease(plr, oldHP)

                        if hit or hpDecreased then
                            local newHP = 0

                            if plr.Character then
                                local humanoid = plr.Character:FindFirstChild('Humanoid')

                                if humanoid then
                                    newHP = humanoid.Health
                                end
                            end

                            local dmg = oldHP and (oldHP - newHP) or 0

                            if onHitCallback then
                                task.spawn(onHitCallback, plr, part)
                            end
                            if onHitShotCallback then
                                task.spawn(onHitShotCallback, startPos, endPos)
                            end
                            if onHitNotifyCallback then
                                local hitData = {
                                    hitdmg = math.floor(dmg),
                                    localgun = toolName,
                                    targetlasthp = math.floor(newHP),
                                    hitpart = part and part.Name or '?',
                                    targetname = plr.Name,
                                    targetdisplayname = plr.DisplayName,
                                }

                                print('[hit_detection] Calling hit notification callback')
                                task.spawn(onHitNotifyCallback, hitData)
                            end
                        end
                    end)
                end
                local function setupHook()
                    if hooked then
                        return
                    end

                    local mainEvent = findMainEvent()

                    if not mainEvent then
                        return
                    end

                    local mt = getrawmetatable(mainEvent)

                    if not mt then
                        return
                    end

                    setreadonly(mt, false)

                    local cloned_mt = table.clone(mt)
                    local oldnamecall = cloned_mt.__namecall

                    setrawmetatable(mainEvent, {
                        __namecall = function(self, ...)
                            local args = {...}

                            if getnamecallmethod() == 'FireServer' then
                                if args[1] == 'ShootGun' then
                                    local startPos = args[3]
                                    local endPos = args[4]

                                    if enabled then
                                        task.spawn(onShot, args[2], startPos, endPos)
                                    end
                                    if onShotCallback then
                                        task.spawn(onShotCallback, startPos, endPos)
                                    end
                                end
                            end

                            return oldnamecall(self, ...)
                        end,
                        __index = cloned_mt.__index,
                        __newindex = cloned_mt.__newindex,
                        __call = cloned_mt.__call,
                        __tostring = cloned_mt.__tostring,
                    })

                    hooked = true
                end

                function hitDetection:setEnabled(val)
                    enabled = val

                    if val and not hooked then
                        setupHook()
                    end
                end
                function hitDetection:onShot(callback)
                    onShotCallback = callback

                    if not hooked then
                        setupHook()
                    end
                end
                function hitDetection:onHit(callback)
                    onHitCallback = callback

                    if not hooked then
                        setupHook()
                    end
                end
                function hitDetection:onHitShot(callback)
                    onHitShotCallback = callback

                    if not hooked then
                        setupHook()
                    end
                end
                function hitDetection:onHitNotify(callback)
                    onHitNotifyCallback = callback

                    if not hooked then
                        setupHook()
                    end
                end

                return hitDetection
            end
        end

        function __M.P(): typeof(__modImpl())
            local v = __M.cache.P

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.P = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(api)
                local hitEffects = {}
                local ws = workspace
                local tweenService = game:GetService('TweenService')
                local players = game:GetService('Players')
                local lp = players.LocalPlayer
                local chamsEnabled = false
                local chamsColor = Color3.fromRGB(255, 0, 0)
                local chamsMaterial = Enum.Material.Neon
                local chamsDuration = 2
                local chamsTransparency = 0.5
                local lastChamsTime = 0
                local soundsEnabled = false
                local soundVolume = 5
                local soundPitch = 1
                local soundSelection = '1'
                local soundsFolder
                local availableSounds = {}
                local lastSoundTime = 0

                local function getSoundsFolder()
                    if not soundsFolder then
                        local symbolData = getgenv().Sakura

                        if symbolData and symbolData.Folders and type(symbolData.Folders.GetPath) == 'function' then
                            soundsFolder = symbolData.Folders.GetPath('Sounds')
                        else
                            soundsFolder = 'Sakura\\Sounds'
                        end
                    end

                    return soundsFolder
                end

                local effectsEnabled = false
                local effectsColor = Color3.fromRGB(255, 255, 255)
                local effectsType = 'Particle'
                local lastEffectTime = 0
                local screenEnabled = false
                local screenColor = Color3.fromRGB(255, 0, 0)
                local screenTransparency = 0
                local screenDuration = 0.5
                local lastScreenTime = 0
                local bodyParts = {
                    'Head',
                    'UpperTorso',
                    'LowerTorso',
                    'LeftUpperArm',
                    'LeftLowerArm',
                    'LeftHand',
                    'RightUpperArm',
                    'RightLowerArm',
                    'RightHand',
                    'LeftUpperLeg',
                    'LeftLowerLeg',
                    'LeftFoot',
                    'RightUpperLeg',
                    'RightLowerLeg',
                    'RightFoot',
                }

                local function createHitChams(target)
                    if not chamsEnabled then
                        return
                    end

                    local currentTime = tick()

                    if currentTime - lastChamsTime < 0.2 then
                        return
                    end

                    lastChamsTime = currentTime

                    if not target or not target.Character then
                        return
                    end

                    local hrp = target.Character:FindFirstChild('HumanoidRootPart')

                    if not hrp then
                        return
                    end

                    target.Character.Archivable = true

                    local clone = target.Character:Clone()

                    clone.Name = 'HitChams_Clone'

                    for _, child in ipairs(clone:GetChildren())do
                        if child:IsA('BasePart') then
                            local keep = false

                            for _, name in ipairs(bodyParts)do
                                if child.Name == name then
                                    keep = true

                                    break
                                end
                            end

                            if not keep then
                                child:Destroy()
                            end
                        elseif child:IsA('Accessory') or child:IsA('Tool') or child:IsA('Shirt') or child:IsA('Pants') or child:IsA('Hat') then
                            child:Destroy()
                        end
                    end

                    if clone:FindFirstChild('Humanoid') then
                        clone.Humanoid:Destroy()
                    end

                    for _, part in ipairs(clone:GetChildren())do
                        if part:IsA('BasePart') then
                            part.CanCollide = false
                            part.Anchored = true
                            part.Transparency = chamsTransparency
                            part.Color = chamsColor
                            part.Material = chamsMaterial
                        end
                    end

                    if clone:FindFirstChild('Head') then
                        local head = clone.Head

                        head.Transparency = chamsTransparency
                        head.Color = chamsColor
                        head.Material = chamsMaterial

                        if head:FindFirstChild('face') then
                            head.face:Destroy()
                        end
                    end

                    clone.Parent = ws

                    local tweenInfo = TweenInfo.new(chamsDuration, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut, 0, true)

                    for _, part in ipairs(clone:GetChildren())do
                        if part:IsA('BasePart') then
                            tweenService:Create(part, tweenInfo, {Transparency = 1}):Play()
                        end
                    end

                    task.delay(chamsDuration, function()
                        if clone and clone.Parent then
                            clone:Destroy()
                        end
                    end)
                end
                local function loadSounds()
                    local folder = getSoundsFolder()

                    availableSounds = {}

                    if isfolder(folder) and listfiles then
                        local files = listfiles(folder)

                        for _, file in ipairs(files)do
                            local fileName = file:match('([^\\]+)$')

                            if fileName and (fileName:match('%.wav$') or fileName:match('%.mp3$') or fileName:match('%.ogg$')) then
                                local name = fileName:gsub('%.%w+$', '')

                                table.insert(availableSounds, name)
                            end
                        end
                    end
                    if #availableSounds == 0 then
                        for i = 1, 20 do
                            table.insert(availableSounds, tostring(i))
                        end
                    end
                end
                local function getSoundPath(name)
                    local folder = getSoundsFolder()
                    local extensions = {
                        '.wav',
                        '.mp3',
                        '.ogg',
                    }

                    for _, ext in ipairs(extensions)do
                        local path = folder .. '\\' .. name .. ext

                        if isfile(path) then
                            return path
                        end
                    end

                    return nil
                end
                local function playHitSound()
                    if not soundsEnabled then
                        return
                    end

                    local currentTime = tick()

                    if currentTime - lastSoundTime < 0.2 then
                        return
                    end

                    lastSoundTime = currentTime

                    local path = getSoundPath(soundSelection)

                    if path and isfile(path) then
                        local sound = Instance.new('Sound')

                        sound.Volume = soundVolume
                        sound.PlaybackSpeed = soundPitch

                        local ok, asset = pcall(function()
                            if getcustomasset then
                                return getcustomasset(path)
                            elseif getsynasset then
                                return getsynasset(path)
                            else
                                return 'rbxassetid://6565367558'
                            end
                        end)

                        if ok and asset then
                            sound.SoundId = asset
                            sound.Parent = ws

                            sound:Play()
                            sound.Ended:Connect(function()
                                sound:Destroy()
                            end)
                        end
                    end
                end

                local effectTemplates = {}

                local function createEffectTemplates()
                    local particleAttachment = Instance.new('Attachment')
                    local dots1 = Instance.new('ParticleEmitter')

                    dots1.Name = 'Dots 1'
                    dots1.LightEmission = 1
                    dots1.Color = ColorSequence.new(Color3.fromRGB(255, 255, 255))
                    dots1.LockedToPart = false
                    dots1.ZOffset = 10
                    dots1.Texture = 'rbxassetid://7216849075'
                    dots1.VelocitySpread = 360
                    dots1.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0),
                        NumberSequenceKeypoint.new(1, 0.663),
                    })
                    dots1.Lifetime = NumberRange.new(1, 5)
                    dots1.Speed = NumberRange.new(1, 210)
                    dots1.SpreadAngle = Vector2.new(360, -360)
                    dots1.Rate = 60
                    dots1.Size = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0.1),
                        NumberSequenceKeypoint.new(0.428, 0),
                        NumberSequenceKeypoint.new(1, 0.627),
                    })
                    dots1.Enabled = false
                    dots1.Parent = particleAttachment

                    local dots2 = Instance.new('ParticleEmitter')

                    dots2.Name = 'Dots 2'
                    dots2.LightEmission = 1
                    dots2.Color = ColorSequence.new(Color3.fromRGB(255, 255, 255))
                    dots2.LockedToPart = false
                    dots2.ZOffset = 10
                    dots2.Texture = 'rbxassetid://7216849075'
                    dots2.VelocitySpread = 360
                    dots2.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0),
                        NumberSequenceKeypoint.new(1, 0.663),
                    })
                    dots2.Lifetime = NumberRange.new(1, 5)
                    dots2.Speed = NumberRange.new(1, 210)
                    dots2.SpreadAngle = Vector2.new(360, -360)
                    dots2.Rate = 100
                    dots2.Size = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0.1),
                        NumberSequenceKeypoint.new(0.502, 1.438),
                        NumberSequenceKeypoint.new(0.925, 1.125),
                        NumberSequenceKeypoint.new(1, 0.397),
                    })
                    dots2.Enabled = false
                    dots2.Orientation = Enum.ParticleOrientation.FacingCamera
                    dots2.Parent = particleAttachment
                    effectTemplates['Particle'] = particleAttachment

                    local bloodAttachment = Instance.new('Attachment')
                    local blood02 = Instance.new('ParticleEmitter')

                    blood02.Name = 'Blood-02'
                    blood02.Lifetime = NumberRange.new(0.5, 0.75)
                    blood02.SpreadAngle = Vector2.new(90, 90)
                    blood02.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 1),
                        NumberSequenceKeypoint.new(0.125, 0.5),
                        NumberSequenceKeypoint.new(1, 1),
                    })
                    blood02.Color = ColorSequence.new(Color3.fromRGB(130, 0, 0))
                    blood02.VelocitySpread = 90
                    blood02.Speed = NumberRange.new(5, 10)
                    blood02.Size = NumberSequence.new(0.5, 2)
                    blood02.Acceleration = Vector3.new(0, -20, 0)
                    blood02.RotSpeed = NumberRange.new(-90, 90)
                    blood02.Rate = 250
                    blood02.Texture = 'rbxassetid://241576804'
                    blood02.Rotation = NumberRange.new(-360, 360)
                    blood02.Enabled = false
                    blood02.Parent = bloodAttachment

                    local blood01 = Instance.new('ParticleEmitter')

                    blood01.Name = 'Blood-01'
                    blood01.Lifetime = NumberRange.new(0.5, 0.5)
                    blood01.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
                    blood01.SpreadAngle = Vector2.new(10, 10)
                    blood01.LockedToPart = true
                    blood01.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 1),
                        NumberSequenceKeypoint.new(0.105985, 0),
                        NumberSequenceKeypoint.new(0.5024938, 0),
                        NumberSequenceKeypoint.new(1, 1),
                    })
                    blood01.Color = ColorSequence.new(Color3.fromRGB(130, 0, 0))
                    blood01.VelocitySpread = 10
                    blood01.Speed = NumberRange.new(0.01, 0.01)
                    blood01.ZOffset = 0.5
                    blood01.Size = NumberSequence.new(2.1875, 3.5625)
                    blood01.Rate = 10
                    blood01.Texture = 'rbxassetid://16668936898'
                    blood01.EmissionDirection = Enum.NormalId.Front
                    blood01.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
                    blood01.Rotation = NumberRange.new(-360, 360)
                    blood01.Enabled = false
                    blood01.Parent = bloodAttachment

                    local blood03 = Instance.new('ParticleEmitter')

                    blood03.Name = 'Blood-03'
                    blood03.LightInfluence = 1
                    blood03.Lifetime = NumberRange.new(0.25, 0.5)
                    blood03.SpreadAngle = Vector2.new(360, 360)
                    blood03.LockedToPart = true
                    blood03.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 1),
                        NumberSequenceKeypoint.new(0.25, 0),
                        NumberSequenceKeypoint.new(1, 1),
                    })
                    blood03.Color = ColorSequence.new(Color3.fromRGB(100, 0, 0))
                    blood03.VelocitySpread = 360
                    blood03.Squash = NumberSequence.new(0, -3)
                    blood03.Speed = NumberRange.new(15, 25)
                    blood03.Size = NumberSequence.new(0.125, 0.6874996)
                    blood03.Acceleration = Vector3.new(0, -75, 0)
                    blood03.Rate = 100
                    blood03.Texture = 'rbxassetid://4509687978'
                    blood03.Orientation = Enum.ParticleOrientation.VelocityParallel
                    blood03.Enabled = false
                    blood03.Parent = bloodAttachment

                    local blood05 = Instance.new('ParticleEmitter')

                    blood05.Name = 'Blood-05'
                    blood05.Lifetime = NumberRange.new(0.75, 0.75)
                    blood05.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
                    blood05.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 1),
                        NumberSequenceKeypoint.new(0.5037407, 0),
                        NumberSequenceKeypoint.new(1, 1),
                    })
                    blood05.Color = ColorSequence.new(Color3.fromRGB(130, 0, 0))
                    blood05.Speed = NumberRange.new(0.001, 0.001)
                    blood05.ZOffset = 4
                    blood05.Size = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0.25),
                        NumberSequenceKeypoint.new(0.3764706, 2.0625, 0.5763994),
                        NumberSequenceKeypoint.new(1, 2.6875, 0.125),
                    })
                    blood05.Rate = 5
                    blood05.Texture = 'rbxassetid://16664856199'
                    blood05.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
                    blood05.Rotation = NumberRange.new(-360, 360)
                    blood05.Enabled = false
                    blood05.Parent = bloodAttachment

                    local blood04 = Instance.new('ParticleEmitter')

                    blood04.Name = 'Blood-04'
                    blood04.LightInfluence = 1
                    blood04.Lifetime = NumberRange.new(0.25, 0.5)
                    blood04.SpreadAngle = Vector2.new(180, 180)
                    blood04.LockedToPart = true
                    blood04.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 1),
                        NumberSequenceKeypoint.new(0.25, 0),
                        NumberSequenceKeypoint.new(1, 1),
                    })
                    blood04.Color = ColorSequence.new(Color3.fromRGB(100, 0, 0))
                    blood04.VelocitySpread = 180
                    blood04.Squash = NumberSequence.new(0, -3)
                    blood04.Speed = NumberRange.new(29, 29)
                    blood04.Size = NumberSequence.new(0.125, 0.6874996)
                    blood04.Acceleration = Vector3.new(0, -45, 0)
                    blood04.Rate = 100
                    blood04.Texture = 'rbxassetid://4509687978'
                    blood04.Orientation = Enum.ParticleOrientation.VelocityParallel
                    blood04.Enabled = false
                    blood04.Parent = bloodAttachment
                    effectTemplates['Blood'] = bloodAttachment

                    local lightAttachment = Instance.new('Attachment')
                    local light1 = Instance.new('ParticleEmitter')

                    light1.LightInfluence = 1
                    light1.Lifetime = NumberRange.new(1, 1)
                    light1.LockedToPart = true
                    light1.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 1),
                        NumberSequenceKeypoint.new(0.2066596, 0),
                        NumberSequenceKeypoint.new(0.4947146, 0),
                        NumberSequenceKeypoint.new(0.7996829, 0),
                        NumberSequenceKeypoint.new(1, 1),
                    })
                    light1.LightEmission = 1
                    light1.Speed = NumberRange.new(0, 0)
                    light1.ZOffset = 4
                    light1.Size = NumberSequence.new(7.5)
                    light1.RotSpeed = NumberRange.new(100, 100)
                    light1.Rate = 1
                    light1.Texture = 'rbxassetid://271370648'
                    light1.Enabled = false
                    light1.Parent = lightAttachment

                    local light2 = Instance.new('ParticleEmitter')

                    light2.LightInfluence = 1
                    light2.Lifetime = NumberRange.new(1, 1)
                    light2.LockedToPart = true
                    light2.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 1),
                        NumberSequenceKeypoint.new(0.4947146, 0),
                        NumberSequenceKeypoint.new(1, 1),
                    })
                    light2.LightEmission = 1
                    light2.Speed = NumberRange.new(0, 0)
                    light2.ZOffset = 5
                    light2.Size = NumberSequence.new(7.5)
                    light2.Rate = 2
                    light2.Texture = 'rbxassetid://13275495915'
                    light2.Enabled = false
                    light2.Parent = lightAttachment

                    local light3 = Instance.new('ParticleEmitter')

                    light3.LightInfluence = 1
                    light3.Lifetime = NumberRange.new(1, 1)
                    light3.LockedToPart = true
                    light3.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0),
                        NumberSequenceKeypoint.new(0.5042283, 0.49375),
                        NumberSequenceKeypoint.new(1, 1),
                    })
                    light3.LightEmission = 1
                    light3.Speed = NumberRange.new(0, 0)
                    light3.ZOffset = 5
                    light3.Size = NumberSequence.new(0, 7.4375)
                    light3.Rate = 3
                    light3.Texture = 'rbxassetid://15267994078'
                    light3.Rotation = NumberRange.new(-360, 360)
                    light3.Enabled = false
                    light3.Parent = lightAttachment
                    effectTemplates['Light'] = lightAttachment

                    local lightningAttachment = Instance.new('Attachment')
                    local startAttachment = Instance.new('Attachment')

                    startAttachment.Name = 'Start'
                    startAttachment.CFrame = CFrame.new(0, 20, 0)
                    startAttachment.Parent = lightningAttachment

                    local endAttachment = Instance.new('Attachment')

                    endAttachment.Name = 'End'
                    endAttachment.CFrame = CFrame.new(0, 0, 0)
                    endAttachment.Parent = lightningAttachment

                    local beam1 = Instance.new('Beam')

                    beam1.FaceCamera = true
                    beam1.ZOffset = 0.3
                    beam1.TextureSpeed = 1.5
                    beam1.Width1 = 5
                    beam1.Width0 = 2
                    beam1.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 1),
                        NumberSequenceKeypoint.new(0.0112219, 0),
                        NumberSequenceKeypoint.new(0.9912719, 0),
                        NumberSequenceKeypoint.new(1, 1),
                    })
                    beam1.TextureLength = 0.5
                    beam1.LightEmission = 1
                    beam1.Texture = 'rbxassetid://7216850022'
                    beam1.Attachment0 = startAttachment
                    beam1.Attachment1 = endAttachment
                    beam1.Parent = startAttachment

                    local beam2 = Instance.new('Beam')

                    beam2.FaceCamera = true
                    beam2.ZOffset = 0.3
                    beam2.TextureSpeed = 1.5
                    beam2.Width1 = 5
                    beam2.Width0 = 2
                    beam2.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 1),
                        NumberSequenceKeypoint.new(0.0112219, 0),
                        NumberSequenceKeypoint.new(0.9912719, 0),
                        NumberSequenceKeypoint.new(1, 1),
                    })
                    beam2.TextureLength = 0.5
                    beam2.LightEmission = 1
                    beam2.Texture = 'rbxassetid://7216850022'
                    beam2.Attachment0 = startAttachment
                    beam2.Attachment1 = endAttachment
                    beam2.Parent = startAttachment

                    local lightningOne = Instance.new('ParticleEmitter')

                    lightningOne.Name = 'Lightning One'
                    lightningOne.FlipbookFramerate = NumberRange.new(17, 17)
                    lightningOne.Lifetime = NumberRange.new(0.1, 1)
                    lightningOne.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
                    lightningOne.LockedToPart = true
                    lightningOne.Speed = NumberRange.new(0.01, 0.01)
                    lightningOne.Brightness = 15
                    lightningOne.ZOffset = 3
                    lightningOne.Size = NumberSequence.new(5)
                    lightningOne.Rate = 5
                    lightningOne.Texture = 'rbxassetid://14582813693'
                    lightningOne.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
                    lightningOne.Rotation = NumberRange.new(-360, 360)
                    lightningOne.Enabled = false
                    lightningOne.Parent = endAttachment

                    local lightningTwo = Instance.new('ParticleEmitter')

                    lightningTwo.Name = 'Lightning two'
                    lightningTwo.FlipbookFramerate = NumberRange.new(17, 17)
                    lightningTwo.Lifetime = NumberRange.new(0.1, 1)
                    lightningTwo.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
                    lightningTwo.LockedToPart = true
                    lightningTwo.Speed = NumberRange.new(0.01, 0.01)
                    lightningTwo.Brightness = 15
                    lightningTwo.ZOffset = 3
                    lightningTwo.Size = NumberSequence.new(5)
                    lightningTwo.Rate = 5
                    lightningTwo.Texture = 'rbxassetid://14582813693'
                    lightningTwo.Orientation = Enum.ParticleOrientation.VelocityParallel
                    lightningTwo.Rotation = NumberRange.new(-360, 360)
                    lightningTwo.Enabled = false
                    lightningTwo.Parent = endAttachment

                    local glow = Instance.new('ParticleEmitter')

                    glow.Name = 'Glow'
                    glow.Lifetime = NumberRange.new(0.4, 0.4)
                    glow.SpreadAngle = Vector2.new(360, 360)
                    glow.Transparency = NumberSequence.new(0, 1)
                    glow.LightEmission = 1
                    glow.Drag = 15
                    glow.VelocitySpread = 360
                    glow.Speed = NumberRange.new(0.0099825, 0.0099825)
                    glow.Brightness = 5
                    glow.ZOffset = 4
                    glow.Size = NumberSequence.new(5)
                    glow.Rate = 2
                    glow.Texture = 'rbxassetid://13305806509'
                    glow.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
                    glow.Enabled = false
                    glow.Parent = endAttachment
                    effectTemplates['Lightning'] = lightningAttachment

                    local blackFlashAttachment = Instance.new('Attachment')
                    local pe2 = Instance.new('ParticleEmitter')

                    pe2.Name = '2'
                    pe2.LightInfluence = 0.2
                    pe2.Lifetime = NumberRange.new(0.1, 0.25)
                    pe2.SpreadAngle = Vector2.new(360, 360)
                    pe2.LockedToPart = true
                    pe2.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0),
                        NumberSequenceKeypoint.new(0.037522, 0.291925),
                        NumberSequenceKeypoint.new(0.13103, 0.602484),
                        NumberSequenceKeypoint.new(0.259083, 0.78882),
                        NumberSequenceKeypoint.new(0.403812, 0.906832),
                        NumberSequenceKeypoint.new(1, 1),
                    })
                    pe2.LightEmission = 1
                    pe2.Color = ColorSequence.new(Color3.fromRGB(255, 17, 17))
                    pe2.VelocitySpread = 360
                    pe2.Speed = NumberRange.new(0.0135816, 0.0135816)
                    pe2.Brightness = 10
                    pe2.Size = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0),
                        NumberSequenceKeypoint.new(0.064513, 5.37),
                        NumberSequenceKeypoint.new(0.236513, 11.31),
                        NumberSequenceKeypoint.new(0.586513, 15.7),
                        NumberSequenceKeypoint.new(1, 18.56),
                    })
                    pe2.RotSpeed = NumberRange.new(-20, 20)
                    pe2.Rate = 3
                    pe2.Texture = 'rbxassetid://10149702982'
                    pe2.EmissionDirection = Enum.NormalId.Front
                    pe2.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
                    pe2.Rotation = NumberRange.new(-360, 360)
                    pe2.Enabled = false
                    pe2.Parent = blackFlashAttachment

                    local lightning3 = Instance.new('ParticleEmitter')

                    lightning3.Name = 'Lightning3'
                    lightning3.Lifetime = NumberRange.new(0.25, 0.41)
                    lightning3.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
                    lightning3.SpreadAngle = Vector2.new(16, 16)
                    lightning3.LockedToPart = true
                    lightning3.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 1),
                        NumberSequenceKeypoint.new(0.0280971, 0),
                        NumberSequenceKeypoint.new(0.523627, 0.0875),
                        NumberSequenceKeypoint.new(0.569604, 0.43125),
                        NumberSequenceKeypoint.new(0.633461, 0.7875),
                        NumberSequenceKeypoint.new(0.747126, 0.95),
                        NumberSequenceKeypoint.new(1, 1),
                    })
                    lightning3.Color = ColorSequence.new(Color3.fromRGB(255, 17, 17))
                    lightning3.Drag = 5
                    lightning3.VelocitySpread = 16
                    lightning3.Speed = NumberRange.new(0.0077598, 0.0077598)
                    lightning3.ZOffset = 5.3460002
                    lightning3.Size = NumberSequence.new(9.31)
                    lightning3.Rate = 3
                    lightning3.Texture = 'rbxassetid://14934040881'
                    lightning3.EmissionDirection = Enum.NormalId.Front
                    lightning3.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
                    lightning3.Rotation = NumberRange.new(-360, 360)
                    lightning3.Enabled = false
                    lightning3.Parent = blackFlashAttachment

                    local flare1 = Instance.new('ParticleEmitter')

                    flare1.Name = 'Flare1'
                    flare1.Lifetime = NumberRange.new(0.6, 1.3)
                    flare1.SpreadAngle = Vector2.new(180, 180)
                    flare1.LockedToPart = true
                    flare1.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0.602871),
                        NumberSequenceKeypoint.new(0.113611, 0.842105, 0.0191388),
                        NumberSequenceKeypoint.new(0.457399, 0.9625),
                        NumberSequenceKeypoint.new(1, 1),
                    })
                    flare1.LightEmission = 1
                    flare1.Drag = 10
                    flare1.VelocitySpread = 180
                    flare1.Speed = NumberRange.new(72.6485977, 290.5939941)
                    flare1.Brightness = 0.75
                    flare1.ZOffset = 3.459456
                    flare1.Size = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0.58, 3.49),
                        NumberSequenceKeypoint.new(0.1, 6.27, 3.49),
                        NumberSequenceKeypoint.new(0.2, 9.86, 3.49),
                        NumberSequenceKeypoint.new(0.3, 12.52, 3.49),
                        NumberSequenceKeypoint.new(0.4, 14.59, 3.49),
                        NumberSequenceKeypoint.new(0.5, 16.25, 3.49),
                        NumberSequenceKeypoint.new(0.6, 17.59, 3.49),
                        NumberSequenceKeypoint.new(0.7, 18.66, 3.49),
                        NumberSequenceKeypoint.new(0.8, 19.49, 3.49),
                        NumberSequenceKeypoint.new(0.9, 20.08, 3.49),
                        NumberSequenceKeypoint.new(1, 20.34, 3.49),
                    })
                    flare1.Rate = 3
                    flare1.Texture = 'rbxassetid://15883763954'
                    flare1.EmissionDirection = Enum.NormalId.Front
                    flare1.Orientation = Enum.ParticleOrientation.VelocityParallel
                    flare1.Rotation = NumberRange.new(-360, 360)
                    flare1.Enabled = false
                    flare1.Parent = blackFlashAttachment

                    local flash = Instance.new('ParticleEmitter')

                    flash.Name = 'Flash'
                    flash.Lifetime = NumberRange.new(0.07, 0.2)
                    flash.SpreadAngle = Vector2.new(-360, 360)
                    flash.LockedToPart = true
                    flash.LightEmission = 1
                    flash.Color = ColorSequence.new(Color3.fromRGB(255, 17, 17))
                    flash.VelocitySpread = -360
                    flash.Squash = NumberSequence.new(0.15)
                    flash.Speed = NumberRange.new(0.0197291, 0.0197291)
                    flash.Brightness = 15
                    flash.ZOffset = 3.9599998
                    flash.Size = NumberSequence.new(25.55, 0)
                    flash.Rate = 3
                    flash.Texture = 'rbxassetid://15446757636'
                    flash.Orientation = Enum.ParticleOrientation.VelocityParallel
                    flash.Rotation = NumberRange.new(-360, 360)
                    flash.Enabled = false
                    flash.Parent = blackFlashAttachment

                    local impactFlare = Instance.new('ParticleEmitter')

                    impactFlare.Name = 'ImpactFlare'
                    impactFlare.Lifetime = NumberRange.new(0.1, 0.2)
                    impactFlare.SpreadAngle = Vector2.new(360, 360)
                    impactFlare.LockedToPart = true
                    impactFlare.LightEmission = 1
                    impactFlare.Color = ColorSequence.new(Color3.fromRGB(255, 17, 17))
                    impactFlare.VelocitySpread = 360
                    impactFlare.Squash = NumberSequence.new(-0.25)
                    impactFlare.Speed = NumberRange.new(0.159667, 0.159667)
                    impactFlare.Brightness = 15
                    impactFlare.ZOffset = 3.9599998
                    impactFlare.Size = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0),
                        NumberSequenceKeypoint.new(0.146875, 21.95),
                        NumberSequenceKeypoint.new(0.475, 5.59),
                        NumberSequenceKeypoint.new(1, 0),
                    })
                    impactFlare.Rate = 3
                    impactFlare.Texture = 'rbxassetid://15860138158'
                    impactFlare.Orientation = Enum.ParticleOrientation.VelocityParallel
                    impactFlare.Enabled = false
                    impactFlare.Parent = blackFlashAttachment
                    effectTemplates['BlackFlash'] = blackFlashAttachment

                    local gravityAttachment = Instance.new('Attachment')
                    local gradient = Instance.new('ParticleEmitter')

                    gradient.Name = 'Gradient'
                    gradient.Lifetime = NumberRange.new(0.6, 0.6)
                    gradient.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 1),
                        NumberSequenceKeypoint.new(0.578059, 0.7375),
                        NumberSequenceKeypoint.new(1, 1),
                    })
                    gradient.LightEmission = 1
                    gradient.Color = ColorSequence.new(Color3.fromRGB(114, 44, 255))
                    gradient.Speed = NumberRange.new(0.0629003, 0.0629003)
                    gradient.Brightness = 4
                    gradient.Size = NumberSequence.new(0, 35.7745705)
                    gradient.RotSpeed = NumberRange.new(500, 800)
                    gradient.Rate = 3
                    gradient.Texture = 'rbxassetid://8030746658'
                    gradient.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
                    gradient.Rotation = NumberRange.new(-360, 360)
                    gradient.Enabled = false
                    gradient.Parent = gravityAttachment

                    local specs = Instance.new('ParticleEmitter')

                    specs.Name = 'Specs'
                    specs.Lifetime = NumberRange.new(0.85, 1)
                    specs.SpreadAngle = Vector2.new(-30, 30)
                    specs.LightEmission = 1
                    specs.Color = ColorSequence.new(Color3.fromRGB(81, 62, 189))
                    specs.VelocitySpread = -30
                    specs.Speed = NumberRange.new(5, 10)
                    specs.Brightness = 4
                    specs.Size = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0),
                        NumberSequenceKeypoint.new(0.1672474, 0.8749998, 0.4375),
                        NumberSequenceKeypoint.new(1, 0),
                    })
                    specs.Rate = 35
                    specs.Texture = 'rbxassetid://8030760338'
                    specs.Enabled = false
                    specs.Parent = gravityAttachment

                    local specs3 = Instance.new('ParticleEmitter')

                    specs3.Name = 'Specs3'
                    specs3.Lifetime = NumberRange.new(0.2, 0.4)
                    specs3.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 1),
                        NumberSequenceKeypoint.new(0.2606061, 0),
                        NumberSequenceKeypoint.new(1, 0),
                    })
                    specs3.LightEmission = 1
                    specs3.Color = ColorSequence.new(Color3.fromRGB(114, 44, 255))
                    specs3.Drag = 1
                    specs3.Squash = NumberSequence.new(0, 3)
                    specs3.Speed = NumberRange.new(5, 10)
                    specs3.Brightness = 3
                    specs3.Size = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0),
                        NumberSequenceKeypoint.new(0.110303, 4.0975556),
                        NumberSequenceKeypoint.new(1, 0),
                    })
                    specs3.ShapeInOut = Enum.ParticleEmitterShapeInOut.InAndOut
                    specs3.Rate = 70
                    specs3.Texture = 'rbxassetid://8801300936'
                    specs3.Orientation = Enum.ParticleOrientation.FacingCameraWorldUp
                    specs3.Enabled = false
                    specs3.Parent = gravityAttachment

                    local lines = Instance.new('ParticleEmitter')

                    lines.Name = 'Lines'
                    lines.LightInfluence = 1
                    lines.Lifetime = NumberRange.new(0.2, 0.3)
                    lines.LockedToPart = true
                    lines.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 1),
                        NumberSequenceKeypoint.new(0.244546, 0),
                        NumberSequenceKeypoint.new(0.5, 0),
                        NumberSequenceKeypoint.new(0.738232, 0),
                        NumberSequenceKeypoint.new(1, 1),
                    })
                    lines.Color = ColorSequence.new(Color3.fromRGB(0, 0, 0))
                    lines.Squash = NumberSequence.new(0, 2.7750001)
                    lines.Speed = NumberRange.new(1, 1)
                    lines.Brightness = 0.645
                    lines.ZOffset = 1.01
                    lines.Size = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0),
                        NumberSequenceKeypoint.new(0.100266, 0),
                        NumberSequenceKeypoint.new(0.5092024, 1.6249996, 0.645087),
                        NumberSequenceKeypoint.new(0.899734, 0),
                        NumberSequenceKeypoint.new(1, 0),
                    })
                    lines.VelocityInheritance = 1
                    lines.Rate = 200
                    lines.Texture = 'rbxassetid://8984664353'
                    lines.EmissionDirection = Enum.NormalId.Back
                    lines.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
                    lines.Enabled = false
                    lines.Parent = gravityAttachment

                    local lines1 = Instance.new('ParticleEmitter')

                    lines1.Name = 'Lines1'
                    lines1.Lifetime = NumberRange.new(0.2, 0.3)
                    lines1.LockedToPart = true
                    lines1.LightEmission = 1
                    lines1.Color = ColorSequence.new(Color3.fromRGB(126, 66, 255))
                    lines1.Squash = NumberSequence.new(0, 1.1999998)
                    lines1.Speed = NumberRange.new(1, 1)
                    lines1.Brightness = 15
                    lines1.ZOffset = 1.01
                    lines1.Size = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0),
                        NumberSequenceKeypoint.new(0.100266, 0),
                        NumberSequenceKeypoint.new(0.5153374, 2.2499995, 0.645087),
                        NumberSequenceKeypoint.new(0.899734, 0),
                        NumberSequenceKeypoint.new(1, 0),
                    })
                    lines1.VelocityInheritance = 1
                    lines1.Rate = 200
                    lines1.Texture = 'rbxassetid://8984664353'
                    lines1.EmissionDirection = Enum.NormalId.Back
                    lines1.Orientation = Enum.ParticleOrientation.VelocityPerpendicular
                    lines1.Enabled = false
                    lines1.Parent = gravityAttachment
                    effectTemplates['Gravity'] = gravityAttachment

                    local meteorAttachment = Instance.new('Attachment')
                    local meteorStart = Instance.new('Attachment')

                    meteorStart.Name = 'MeteorStart'
                    meteorStart.CFrame = CFrame.new(0, 25, 0)
                    meteorStart.Parent = meteorAttachment

                    local meteorEnd = Instance.new('Attachment')

                    meteorEnd.Name = 'MeteorEnd'
                    meteorEnd.CFrame = CFrame.new(0, 0, 0)
                    meteorEnd.Parent = meteorAttachment

                    local trail = Instance.new('Trail')

                    trail.FaceCamera = true
                    trail.Color = ColorSequence.new(Color3.fromRGB(79, 25, 255))
                    trail.WidthScale = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0),
                        NumberSequenceKeypoint.new(0.0666667, 0.13125),
                        NumberSequenceKeypoint.new(0.180117, 0.23125),
                        NumberSequenceKeypoint.new(0.3309942, 0.2375),
                        NumberSequenceKeypoint.new(0.4842105, 0.16875),
                        NumberSequenceKeypoint.new(0.5918128, 0.1),
                        NumberSequenceKeypoint.new(0.7274854, 0.05),
                        NumberSequenceKeypoint.new(1, 0),
                    })
                    trail.Transparency = NumberSequence.new(0)
                    trail.Lifetime = 0.2
                    trail.Brightness = 13
                    trail.Attachment0 = meteorStart
                    trail.Attachment1 = meteorEnd
                    trail.Parent = meteorAttachment

                    local fireSpiky = Instance.new('ParticleEmitter')

                    fireSpiky.Name = 'FireGroundSpikeyFire'
                    fireSpiky.Lifetime = NumberRange.new(0.1, 0.3)
                    fireSpiky.FlipbookLayout = Enum.ParticleFlipbookLayout.Grid4x4
                    fireSpiky.SpreadAngle = Vector2.new(40, 40)
                    fireSpiky.LightEmission = 0.1
                    fireSpiky.Color = ColorSequence.new(Color3.fromRGB(72, 26, 255))
                    fireSpiky.Drag = 9
                    fireSpiky.FlipbookStartRandom = true
                    fireSpiky.VelocitySpread = 40
                    fireSpiky.Speed = NumberRange.new(100, 200)
                    fireSpiky.Brightness = 4.57
                    fireSpiky.ZOffset = -0.1146465
                    fireSpiky.Size = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 14.1784506, 0.3640427),
                        NumberSequenceKeypoint.new(0.374578, 16.1989517, 0.3758909),
                        NumberSequenceKeypoint.new(1, 10.3182821, 0.689132),
                    })
                    fireSpiky.Rate = 30
                    fireSpiky.Texture = 'http://www.roblox.com/asset/?id=13136714025'
                    fireSpiky.EmissionDirection = Enum.NormalId.Back
                    fireSpiky.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
                    fireSpiky.Rotation = NumberRange.new(0, 360)
                    fireSpiky.Enabled = false
                    fireSpiky.Parent = meteorEnd

                    local stars = Instance.new('ParticleEmitter')

                    stars.Name = 'Stars'
                    stars.Lifetime = NumberRange.new(0.15, 0.25)
                    stars.SpreadAngle = Vector2.new(30, 30)
                    stars.LockedToPart = true
                    stars.LightEmission = 0.6
                    stars.Color = ColorSequence.new(Color3.fromRGB(69, 44, 255))
                    stars.Drag = 26
                    stars.VelocitySpread = 30
                    stars.Squash = NumberSequence.new(0.2624998, 0.5625)
                    stars.Speed = NumberRange.new(0.1326618, 0.1326618)
                    stars.Brightness = 6.885
                    stars.ZOffset = 3
                    stars.Size = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0),
                        NumberSequenceKeypoint.new(0.2652124, 1.1607907, 0.820863),
                        NumberSequenceKeypoint.new(0.398578, 4.1880746, 1.0401549),
                        NumberSequenceKeypoint.new(0.480578, 7.5677743, 1.1607915),
                        NumberSequenceKeypoint.new(0.530578, 4.3972955, 1.0044292),
                        NumberSequenceKeypoint.new(0.7210103, 1.4095318, 0.7420586),
                        NumberSequenceKeypoint.new(1, 0),
                    })
                    stars.Rate = 50
                    stars.Texture = 'rbxassetid://16722791958'
                    stars.EmissionDirection = Enum.NormalId.Back
                    stars.Rotation = NumberRange.new(150, 150)
                    stars.Enabled = false
                    stars.Parent = meteorEnd

                    local sparks = Instance.new('ParticleEmitter')

                    sparks.Name = 'Sparks'
                    sparks.Lifetime = NumberRange.new(0.2, 0.4)
                    sparks.SpreadAngle = Vector2.new(50, 50)
                    sparks.Color = ColorSequence.new(Color3.fromRGB(84, 41, 255))
                    sparks.Drag = 8
                    sparks.VelocitySpread = 50
                    sparks.Speed = NumberRange.new(141.4421234, 183.8747559)
                    sparks.Brightness = 12
                    sparks.ZOffset = -0.3245147
                    sparks.Size = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 0),
                        NumberSequenceKeypoint.new(0.2594719, 1.777688, 0.3979976),
                        NumberSequenceKeypoint.new(1, 0),
                    })
                    sparks.Acceleration = Vector3.new(0, -282.8842468261719, 0)
                    sparks.RotSpeed = NumberRange.new(-30, 30)
                    sparks.Rate = 40
                    sparks.Texture = 'rbxassetid://11995504618'
                    sparks.EmissionDirection = Enum.NormalId.Back
                    sparks.Orientation = Enum.ParticleOrientation.VelocityParallel
                    sparks.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
                    sparks.Enabled = false
                    sparks.Parent = meteorEnd

                    local meteorFlash = Instance.new('ParticleEmitter')

                    meteorFlash.Name = 'Flash'
                    meteorFlash.Lifetime = NumberRange.new(0.07, 0.12)
                    meteorFlash.SpreadAngle = Vector2.new(30, 30)
                    meteorFlash.Transparency = NumberSequence.new({
                        NumberSequenceKeypoint.new(0, 1),
                        NumberSequenceKeypoint.new(0.1301587, 0.6625),
                        NumberSequenceKeypoint.new(0.2412698, 0.91875),
                        NumberSequenceKeypoint.new(0.4952381, 0.74375),
                        NumberSequenceKeypoint.new(0.7603174, 0.94375),
                        NumberSequenceKeypoint.new(0.8857143, 0.8375),
                        NumberSequenceKeypoint.new(1, 1),
                    })
                    meteorFlash.Color = ColorSequence.new(Color3.fromRGB(108, 34, 255))
                    meteorFlash.Drag = 14
                    meteorFlash.FlipbookStartRandom = true
                    meteorFlash.VelocitySpread = 30
                    meteorFlash.Speed = NumberRange.new(57.6029854, 230.4119415)
                    meteorFlash.Brightness = 14
                    meteorFlash.ZOffset = 1.7270366
                    meteorFlash.Size = NumberSequence.new(5.0313563, 6.708528)
                    meteorFlash.Rate = 80
                    meteorFlash.Texture = 'rbxassetid://11995386251'
                    meteorFlash.EmissionDirection = Enum.NormalId.Back
                    meteorFlash.FlipbookMode = Enum.ParticleFlipbookMode.OneShot
                    meteorFlash.Rotation = NumberRange.new(0, 360)
                    meteorFlash.Enabled = false
                    meteorFlash.Parent = meteorEnd
                    effectTemplates['Meteor'] = meteorAttachment
                end
                local function createHitEffect(target)
                    if not effectsEnabled then
                        return
                    end

                    local currentTime = tick()

                    if currentTime - lastEffectTime < 0.2 then
                        return
                    end

                    lastEffectTime = currentTime

                    if not target or not target.Character then
                        return
                    end

                    local hrp = target.Character:FindFirstChild('HumanoidRootPart')

                    if not hrp then
                        return
                    end
                    if not next(effectTemplates) then
                        createEffectTemplates()
                    end

                    local template = effectTemplates[effectsType]

                    if not template then
                        return
                    end

                    local effect = template:Clone()

                    for _, child in pairs(effect:GetDescendants())do
                        if child:IsA('ParticleEmitter') then
                            child.Color = ColorSequence.new(effectsColor)
                        elseif child:IsA('Beam') then
                            child.Color = ColorSequence.new(effectsColor)
                        elseif child:IsA('Trail') then
                            child.Color = ColorSequence.new(effectsColor)
                        end
                    end

                    effect.Parent = hrp

                    for _, child in pairs(effect:GetDescendants())do
                        if child:IsA('ParticleEmitter') then
                            child:Emit(child.Rate or 100)
                        end
                    end

                    task.delay(2, function()
                        if effect and effect.Parent then
                            effect:Destroy()
                        end
                    end)
                end
                local function createHitScreen()
                    if not screenEnabled then
                        return
                    end

                    local currentTime = tick()

                    if currentTime - lastScreenTime < 0.2 then
                        return
                    end

                    lastScreenTime = currentTime

                    local playerGui = lp:FindFirstChild('PlayerGui')

                    if not playerGui then
                        return
                    end

                    local screenGui = Instance.new('ScreenGui')

                    screenGui.Name = 'HitScreen'
                    screenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                    screenGui.IgnoreGuiInset = true
                    screenGui.Parent = playerGui

                    local imageLabel = Instance.new('ImageLabel')

                    imageLabel.Size = UDim2.new(1, 0, 1, 0)
                    imageLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
                    imageLabel.BackgroundTransparency = 1
                    imageLabel.BorderSizePixel = 0
                    imageLabel.Image = 'rbxassetid://1066498967'
                    imageLabel.ImageColor3 = screenColor
                    imageLabel.ImageTransparency = screenTransparency
                    imageLabel.Parent = screenGui

                    task.delay(screenDuration, function()
                        if screenGui and screenGui.Parent then
                            screenGui:Destroy()
                        end
                    end)
                end

                function hitEffects:onHit(target)
                    if chamsEnabled then
                        createHitChams(target)
                    end
                    if soundsEnabled then
                        playHitSound()
                    end
                    if effectsEnabled then
                        createHitEffect(target)
                    end
                    if screenEnabled then
                        createHitScreen()
                    end
                end
                function hitEffects:setChamsEnabled(v)
                    chamsEnabled = v
                end
                function hitEffects:setChamsColor(c)
                    chamsColor = c
                end
                function hitEffects:setChamsMaterial(m)
                    local mats = {
                        Neon = Enum.Material.Neon,
                        ForceField = Enum.Material.ForceField,
                        Glass = Enum.Material.Glass,
                        Plastic = Enum.Material.Plastic,
                        Metal = Enum.Material.Metal,
                        Concrete = Enum.Material.Concrete,
                    }

                    chamsMaterial = mats[m] or Enum.Material.Neon
                end
                function hitEffects:setChamsDuration(d)
                    chamsDuration = d
                end
                function hitEffects:setChamsTransparency(t)
                    chamsTransparency = t
                end
                function hitEffects:setSoundsEnabled(v)
                    soundsEnabled = v
                end
                function hitEffects:setSoundVolume(v)
                    soundVolume = v
                end
                function hitEffects:setSoundPitch(p)
                    soundPitch = p
                end
                function hitEffects:setSoundSelection(s)
                    soundSelection = s
                end
                function hitEffects:getAvailableSounds()
                    return availableSounds
                end
                function hitEffects:setEffectsEnabled(v)
                    effectsEnabled = v
                end
                function hitEffects:setEffectsColor(c)
                    effectsColor = c
                end
                function hitEffects:setEffectsType(t)
                    effectsType = t
                end
                function hitEffects:setScreenEnabled(v)
                    screenEnabled = v
                end
                function hitEffects:setScreenColor(c)
                    screenColor = c
                end
                function hitEffects:setScreenTransparency(t)
                    screenTransparency = t
                end
                function hitEffects:setScreenDuration(d)
                    screenDuration = d
                end

                loadSounds()

                return hitEffects
            end
        end

        function __M.Q(): typeof(__modImpl())
            local v = __M.cache.Q

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.Q = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(api)
                local crosshair = {}
                local lp = api.lp
                local loopManager = api.loopManager
                local targeting = api.targeting
                local uis = game:GetService('UserInputService')
                local enabled = false
                local gui, holder
                local side1, side2, side3, side4
                local stroke1, stroke2, stroke3, stroke4
                local indicatorHolder, indicatorLabel, indicatorGlow, indicatorGradient
                local thickness = 2
                local gap = 5
                local length = 10
                local outlineThick = 1
                local chaseCursor = false
                local chaseTarget = false
                local rotate = false
                local rotateSpeed = 1
                local rotateMode = 'both_sides'
                local currentRotation = 0
                local rotationDir = 1
                local smoothEnabled = false
                local smoothSpeed = 10
                local currentX, currentY = 0, 0
                local indicatorEnabled = false
                local indicatorColor1 = Color3.fromRGB(255, 255, 255)
                local indicatorColor2 = Color3.fromRGB(255, 255, 255)
                local indicatorGlowEnabled = false
                local sideColors = {
                    Color3.fromRGB(255, 255, 255),
                    Color3.fromRGB(255, 255, 255),
                    Color3.fromRGB(255, 255, 255),
                    Color3.fromRGB(255, 255, 255),
                }
                local outlineColor = Color3.fromRGB(0, 0, 0)

                local function getMinecraftiaFont()
                    local symbolData = getgenv().Sakura

                    if symbolData and symbolData.Fonts and symbolData.Fonts.Data then
                        return symbolData.Fonts.Data['Minecraftia'] or symbolData.Fonts.Data['SmallestPixel7']
                    end

                    return nil
                end
                local function getTargetScreenPos()
                    if not targeting then
                        return nil
                    end
                    if not targeting:IsTargetValid() then
                        return nil
                    end

                    local char = targeting.target

                    if not char then
                        return nil
                    end

                    local hrp = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Head')

                    if not hrp then
                        return nil
                    end

                    local cam = workspace.CurrentCamera

                    if not cam then
                        return nil
                    end

                    local pos = cam:WorldToViewportPoint(hrp.Position)

                    if pos.Z > 0 then
                        return {
                            x = pos.X,
                            y = pos.Y,
                        }
                    end

                    return nil
                end
                local function createGui()
                    if gui then
                        return
                    end

                    gui = Instance.new('ScreenGui')
                    gui.Name = 'CrosshairGui'
                    gui.ResetOnSpawn = false
                    gui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
                    gui.DisplayOrder = 999999
                    gui.IgnoreGuiInset = true
                    holder = Instance.new('Frame')
                    holder.Name = 'Holder'
                    holder.Parent = gui
                    holder.BackgroundTransparency = 1
                    holder.BorderSizePixel = 0
                    holder.AnchorPoint = Vector2.new(0.5, 0.5)
                    holder.Size = UDim2.new(0, 50, 0, 50)

                    local function createSide(
                        name,
                        posX,
                        posY,
                        sizeX,
                        sizeY,
                        idx
                    )
                        local side = Instance.new('Frame')

                        side.Name = name
                        side.Parent = holder
                        side.BackgroundColor3 = sideColors[idx]
                        side.BorderSizePixel = 0
                        side.Position = UDim2.new(0.5, posX, 0.5, posY)
                        side.Size = UDim2.new(0, sizeX, 0, sizeY)

                        local stroke = Instance.new('UIStroke')

                        stroke.Parent = side
                        stroke.Color = outlineColor
                        stroke.Thickness = outlineThick
                        stroke.LineJoinMode = Enum.LineJoinMode.Miter

                        return side, stroke
                    end

                    side1, stroke1 = createSide('Side1', -gap - length, -thickness / 2, length, thickness, 1)
                    side2, stroke2 = createSide('Side2', gap, -thickness / 2, length, thickness, 2)
                    side3, stroke3 = createSide('Side3', -thickness / 2, -gap - length, thickness, length, 3)
                    side4, stroke4 = createSide('Side4', -thickness / 2, gap, thickness, length, 4)
                    indicatorHolder = Instance.new('Frame')
                    indicatorHolder.Name = 'IndicatorHolder'
                    indicatorHolder.Parent = gui
                    indicatorHolder.BackgroundTransparency = 1
                    indicatorHolder.BorderSizePixel = 0
                    indicatorHolder.Size = UDim2.new(0, 150, 0, 30)
                    indicatorHolder.AnchorPoint = Vector2.new(0.5, 0)
                    indicatorLabel = Instance.new('TextLabel')
                    indicatorLabel.Name = 'Indicator'
                    indicatorLabel.Parent = indicatorHolder
                    indicatorLabel.BackgroundTransparency = 1
                    indicatorLabel.BorderSizePixel = 0
                    indicatorLabel.Position = UDim2.new(0.5, 0, 0, 0)
                    indicatorLabel.Size = UDim2.new(1, 0, 1, 0)
                    indicatorLabel.AnchorPoint = Vector2.new(0.5, 0)
                    indicatorLabel.Text = 'symbol'
                    indicatorLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
                    indicatorLabel.TextSize = 13
                    indicatorLabel.TextStrokeTransparency = 0.1
                    indicatorLabel.Visible = indicatorEnabled

                    local mFont = getMinecraftiaFont()

                    if mFont then
                        indicatorLabel.FontFace = mFont
                    else
                        indicatorLabel.Font = Enum.Font.GothamBold
                    end

                    indicatorGlow = Instance.new('ImageLabel')
                    indicatorGlow.Name = 'glow'
                    indicatorGlow.Parent = indicatorLabel
                    indicatorGlow.BackgroundTransparency = 1
                    indicatorGlow.BorderSizePixel = 0
                    indicatorGlow.AnchorPoint = Vector2.new(0.5, 0.5)
                    indicatorGlow.Position = UDim2.new(0.5, 0, 0.5, 0)
                    indicatorGlow.Size = UDim2.new(0, 150, 0, 50)
                    indicatorGlow.ZIndex = 0
                    indicatorGlow.Image = 'rbxassetid://113581364214844'
                    indicatorGlow.ImageTransparency = 0.82
                    indicatorGlow.Visible = indicatorGlowEnabled
                    indicatorGradient = Instance.new('UIGradient')
                    indicatorGradient.Parent = indicatorLabel
                    indicatorGradient.Color = ColorSequence.new({
                        ColorSequenceKeypoint.new(0, indicatorColor1),
                        ColorSequenceKeypoint.new(1, indicatorColor2),
                    })
                end
                local function updateDimensions()
                    if not side1 then
                        return
                    end

                    side1.Position = UDim2.new(0.5, -gap - length, 0.5, -thickness / 2)
                    side1.Size = UDim2.new(0, length, 0, thickness)
                    side2.Position = UDim2.new(0.5, gap, 0.5, -thickness / 2)
                    side2.Size = UDim2.new(0, length, 0, thickness)
                    side3.Position = UDim2.new(0.5, -thickness / 2, 0.5, -gap - length)
                    side3.Size = UDim2.new(0, thickness, 0, length)
                    side4.Position = UDim2.new(0.5, -thickness / 2, 0.5, gap)
                    side4.Size = UDim2.new(0, thickness, 0, length)

                    if stroke1 then
                        stroke1.Thickness = outlineThick
                    end
                    if stroke2 then
                        stroke2.Thickness = outlineThick
                    end
                    if stroke3 then
                        stroke3.Thickness = outlineThick
                    end
                    if stroke4 then
                        stroke4.Thickness = outlineThick
                    end
                end
                local function updateColors()
                    if side1 then
                        side1.BackgroundColor3 = sideColors[1]
                    end
                    if side2 then
                        side2.BackgroundColor3 = sideColors[2]
                    end
                    if side3 then
                        side3.BackgroundColor3 = sideColors[3]
                    end
                    if side4 then
                        side4.BackgroundColor3 = sideColors[4]
                    end
                    if stroke1 then
                        stroke1.Color = outlineColor
                    end
                    if stroke2 then
                        stroke2.Color = outlineColor
                    end
                    if stroke3 then
                        stroke3.Color = outlineColor
                    end
                    if stroke4 then
                        stroke4.Color = outlineColor
                    end
                end
                local function lerp(a, b, t)
                    return a + (b - a) * t
                end

                local lastTick = 0

                local function render()
                    if not enabled or not holder then
                        return
                    end

                    local now = tick()
                    local dt = math.min(now - lastTick, 0.1)

                    lastTick = now

                    local targetX, targetY
                    local cam = workspace.CurrentCamera
                    local viewSize = cam and cam.ViewportSize or Vector2.new(1920, 1080)
                    local targetPos = chaseTarget and getTargetScreenPos()

                    if targetPos then
                        targetX, targetY = targetPos.x, targetPos.y
                    elseif chaseCursor then
                        local mousePos = uis:GetMouseLocation()

                        targetX, targetY = mousePos.X, mousePos.Y
                    else
                        targetX, targetY = viewSize.X / 2, viewSize.Y / 2
                    end
                    if smoothEnabled then
                        local t = math.min(1, smoothSpeed * dt)

                        currentX = lerp(currentX, targetX, t)
                        currentY = lerp(currentY, targetY, t)
                    else
                        currentX, currentY = targetX, targetY
                    end

                    holder.Position = UDim2.new(0, currentX, 0, currentY)

                    if rotate then
                        if rotateMode == 'one_side' then
                            currentRotation = currentRotation + (rotateSpeed * 60 * dt * rotationDir)

                            if currentRotation >= 90 then
                                currentRotation = 90
                                rotationDir = -1
                            elseif currentRotation <= 0 then
                                currentRotation = 0
                                rotationDir = 1
                            end
                        elseif rotateMode == 'both_sides' then
                            currentRotation = currentRotation + (rotateSpeed * 60 * dt * rotationDir)

                            if currentRotation >= 180 then
                                currentRotation = 180
                                rotationDir = -1
                            elseif currentRotation <= -180 then
                                currentRotation = -180
                                rotationDir = 1
                            end
                        elseif rotateMode == 'pulse' then
                            currentRotation = math.sin(now * rotateSpeed * 2) * 45
                        elseif rotateMode == 'bounce' then
                            currentRotation = math.abs(math.sin(now * rotateSpeed)) * 90
                        end

                        holder.Rotation = currentRotation
                    end
                    if indicatorHolder then
                        indicatorHolder.Position = UDim2.new(0, currentX, 0, currentY + length + gap + 12)
                    end
                end
                local function cleanup()
                    if loopManager and loopManager:GetRenderStepped('crosshair_gui') then
                        loopManager:RemoveRenderStepped('crosshair_gui')
                    end
                    if gui then
                        gui.Parent = nil
                    end
                end

                function crosshair:setEnabled(val)
                    enabled = val

                    if enabled then
                        createGui()

                        gui.Parent = lp:WaitForChild('PlayerGui')

                        local cam = workspace.CurrentCamera
                        local viewSize = cam and cam.ViewportSize or Vector2.new(1920, 1080)

                        currentX, currentY = viewSize.X / 2, viewSize.Y / 2
                        lastTick = tick()

                        if loopManager then
                            loopManager:AddRenderStepped('crosshair_gui', render)
                        end
                    else
                        cleanup()

                        if holder then
                            holder.Rotation = 0
                        end

                        currentRotation = 0
                        rotationDir = 1
                    end
                end
                function crosshair:setThickness(t)
                    thickness = t

                    updateDimensions()
                end
                function crosshair:setGap(g)
                    gap = g

                    updateDimensions()
                end
                function crosshair:setLength(l)
                    length = l

                    updateDimensions()
                end
                function crosshair:setOutlineThickness(t)
                    outlineThick = t

                    updateDimensions()
                end
                function crosshair:setChaseCursor(c)
                    chaseCursor = c
                end
                function crosshair:setChaseTarget(c)
                    chaseTarget = c
                end
                function crosshair:setRotate(r)
                    rotate = r

                    if not r and holder then
                        holder.Rotation = 0
                        currentRotation = 0
                        rotationDir = 1
                    end
                end
                function crosshair:setRotateSpeed(s)
                    rotateSpeed = s
                end
                function crosshair:setRotateMode(m)
                    rotateMode = m
                end
                function crosshair:setSmoothEnabled(s)
                    smoothEnabled = s
                end
                function crosshair:setSmoothSpeed(s)
                    smoothSpeed = s
                end
                function crosshair:setSideColor(idx, c)
                    sideColors[idx] = c

                    updateColors()
                end
                function crosshair:setOutlineColor(c)
                    outlineColor = c

                    updateColors()
                end
                function crosshair:setIndicatorEnabled(e)
                    indicatorEnabled = e

                    if indicatorLabel then
                        indicatorLabel.Visible = e
                    end
                end
                function crosshair:setIndicatorColor1(c)
                    indicatorColor1 = c

                    if indicatorGradient then
                        indicatorGradient.Color = ColorSequence.new({
                            ColorSequenceKeypoint.new(0, indicatorColor1),
                            ColorSequenceKeypoint.new(1, indicatorColor2),
                        })
                    end
                end
                function crosshair:setIndicatorColor2(c)
                    indicatorColor2 = c

                    if indicatorGradient then
                        indicatorGradient.Color = ColorSequence.new({
                            ColorSequenceKeypoint.new(0, indicatorColor1),
                            ColorSequenceKeypoint.new(1, indicatorColor2),
                        })
                    end
                end
                function crosshair:setIndicatorGlow(g)
                    indicatorGlowEnabled = g

                    if indicatorGlow then
                        indicatorGlow.Visible = g
                    end
                end

                return crosshair
            end
        end

        function __M.R(): typeof(__modImpl())
            local v = __M.cache.R

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.R = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            return function(api)
                local crosshair = {}
                local lp = api.lp
                local loopManager = api.loopManager
                local targeting = api.targeting
                local uis = game:GetService('UserInputService')
                local enabled = false
                local lines = {}
                local outlines = {}
                local thickness = 1.5
                local outlineThick = 2.5
                local gap = 12
                local length = 12
                local chaseCursor = false
                local chaseTarget = false
                local rotate = false
                local rotateSpeed = 12
                local rotateMode = 'both_sides'
                local spinAngle = 0
                local rotationDir = 1
                local smoothEnabled = false
                local smoothSpeed = 10
                local currentX, currentY = 0, 0
                local sideColors = {
                    Color3.fromRGB(255, 255, 255),
                    Color3.fromRGB(255, 255, 255),
                    Color3.fromRGB(255, 255, 255),
                    Color3.fromRGB(255, 255, 255),
                }
                local outlineColor = Color3.fromRGB(0, 0, 0)
                local lineAngles = {
                    0,
                    math.pi / 2,
                    math.pi,
                    math.pi * 1.5,
                }

                local function getTargetScreenPos()
                    if not targeting then
                        return nil
                    end
                    if not targeting:IsTargetValid() then
                        return nil
                    end

                    local char = targeting.target

                    if not char then
                        return nil
                    end

                    local hrp = char:FindFirstChild('HumanoidRootPart') or char:FindFirstChild('Head')

                    if not hrp then
                        return nil
                    end

                    local cam = workspace.CurrentCamera

                    if not cam then
                        return nil
                    end

                    local pos = cam:WorldToViewportPoint(hrp.Position)

                    if pos.Z > 0 then
                        return {
                            x = pos.X,
                            y = pos.Y,
                        }
                    end

                    return nil
                end
                local function createDrawings()
                    for i = 1, #lines do
                        pcall(function()
                            lines[i]:Remove()
                        end)
                    end
                    for i = 1, #outlines do
                        pcall(function()
                            outlines[i]:Remove()
                        end)
                    end

                    lines = {}
                    outlines = {}

                    for i = 1, 4 do
                        local outline = Drawing.new('Line')

                        outline.Visible = false
                        outline.Color = outlineColor
                        outline.Thickness = outlineThick
                        outline.ZIndex = 1
                        outlines[i] = outline

                        local line = Drawing.new('Line')

                        line.Visible = false
                        line.Color = sideColors[i]
                        line.Thickness = thickness
                        line.ZIndex = 2
                        lines[i] = line
                    end
                end
                local function cleanup()
                    if loopManager and loopManager:GetRenderStepped('crosshair_draw') then
                        loopManager:RemoveRenderStepped('crosshair_draw')
                    end

                    for i = 1, #lines do
                        pcall(function()
                            lines[i]:Remove()
                        end)
                    end
                    for i = 1, #outlines do
                        pcall(function()
                            outlines[i]:Remove()
                        end)
                    end

                    lines = {}
                    outlines = {}
                end
                local function lerp(a, b, t)
                    return a + (b - a) * t
                end

                local lastTick = 0

                local function render()
                    if not enabled then
                        return
                    end

                    local now = tick()
                    local dt = math.min(now - lastTick, 0.1)

                    lastTick = now

                    local cam = workspace.CurrentCamera
                    local viewSize = cam and cam.ViewportSize or Vector2.new(1920, 1080)
                    local targetX, targetY
                    local targetPos = chaseTarget and getTargetScreenPos()

                    if targetPos then
                        targetX, targetY = targetPos.x, targetPos.y
                    elseif chaseCursor then
                        local mousePos = uis:GetMouseLocation()

                        targetX, targetY = mousePos.X, mousePos.Y
                    else
                        targetX, targetY = viewSize.X / 2, viewSize.Y / 2
                    end
                    if smoothEnabled then
                        local t = math.min(1, smoothSpeed * dt)

                        currentX = lerp(currentX, targetX, t)
                        currentY = lerp(currentY, targetY, t)
                    else
                        currentX, currentY = targetX, targetY
                    end

                    local origin = Vector2.new(currentX, currentY)

                    if rotate then
                        if rotateMode == 'one_side' then
                            spinAngle = spinAngle + (rotateSpeed * dt * rotationDir)

                            if spinAngle >= math.pi / 2 then
                                spinAngle = math.pi / 2
                                rotationDir = -1
                            elseif spinAngle <= 0 then
                                spinAngle = 0
                                rotationDir = 1
                            end
                        elseif rotateMode == 'both_sides' then
                            spinAngle = spinAngle + (rotateSpeed * dt * rotationDir)

                            if spinAngle >= math.pi then
                                spinAngle = math.pi
                                rotationDir = -1
                            elseif spinAngle <= -math.pi then
                                spinAngle = -math.pi
                                rotationDir = 1
                            end
                        elseif rotateMode == 'pulse' then
                            spinAngle = math.sin(now * rotateSpeed) * (math.pi / 4)
                        elseif rotateMode == 'bounce' then
                            spinAngle = math.abs(math.sin(now * rotateSpeed)) * (math.pi / 2)
                        end
                    else
                        spinAngle = 0
                    end

                    local radius = length * 5

                    for i = 1, 4 do
                        local angle = spinAngle + lineAngles[i]
                        local dir = Vector2.new(math.cos(angle), math.sin(angle))
                        local fromPos = origin + dir * gap
                        local toPos = fromPos + dir * radius

                        lines[i].From = fromPos
                        lines[i].To = toPos
                        lines[i].Thickness = thickness
                        lines[i].Visible = true
                        outlines[i].From = origin + dir * (gap - 1)
                        outlines[i].To = fromPos + dir * (radius + 1)
                        outlines[i].Thickness = outlineThick
                        outlines[i].Visible = true
                    end
                end

                function crosshair:setEnabled(val)
                    enabled = val

                    if enabled then
                        createDrawings()

                        local cam = workspace.CurrentCamera
                        local viewSize = cam and cam.ViewportSize or Vector2.new(1920, 1080)

                        currentX, currentY = viewSize.X / 2, viewSize.Y / 2
                        lastTick = tick()

                        if loopManager then
                            loopManager:AddRenderStepped('crosshair_draw', render)
                        end
                    else
                        cleanup()

                        spinAngle = 0
                        rotationDir = 1
                    end
                end
                function crosshair:setThickness(t)
                    thickness = t
                end
                function crosshair:setOutlineThickness(t)
                    outlineThick = t
                end
                function crosshair:setGap(g)
                    gap = g
                end
                function crosshair:setLength(l)
                    length = l
                end
                function crosshair:setChaseCursor(c)
                    chaseCursor = c
                end
                function crosshair:setChaseTarget(c)
                    chaseTarget = c
                end
                function crosshair:setRotate(r)
                    rotate = r

                    if not r then
                        spinAngle = 0
                        rotationDir = 1
                    end
                end
                function crosshair:setRotateSpeed(s)
                    rotateSpeed = s
                end
                function crosshair:setRotateMode(m)
                    rotateMode = m
                end
                function crosshair:setSmoothEnabled(s)
                    smoothEnabled = s
                end
                function crosshair:setSmoothSpeed(s)
                    smoothSpeed = s
                end
                function crosshair:setSideColor(idx, c)
                    sideColors[idx] = c

                    if lines[idx] then
                        lines[idx].Color = c
                    end
                end
                function crosshair:setOutlineColor(c)
                    outlineColor = c

                    for i = 1, #outlines do
                        outlines[i].Color = c
                    end
                end

                return crosshair
            end
        end

        function __M.S(): typeof(__modImpl())
            local v = __M.cache.S

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.S = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local cache = __M.a()

            return function(api)
                local lib = api.lib
                local lighting = cache.Lighting
                local colorCorrection = lighting:FindFirstChildOfClass('ColorCorrectionEffect')

                if not colorCorrection then
                    colorCorrection = Instance.new('ColorCorrectionEffect')
                    colorCorrection.Parent = lighting
                end

                local originalBrightness = colorCorrection.Brightness
                local originalContrast = colorCorrection.Contrast
                local originalSaturation = colorCorrection.Saturation
                local worldColors = {}

                function worldColors:update()
                    if not lib.Flags.world_colors_enabled then
                        colorCorrection.Enabled = false
                        colorCorrection.Brightness = originalBrightness
                        colorCorrection.Contrast = originalContrast
                        colorCorrection.Saturation = originalSaturation

                        return
                    end

                    colorCorrection.Enabled = true
                    colorCorrection.Brightness = lib.Flags.world_cc_brightness or 0
                    colorCorrection.Contrast = lib.Flags.world_cc_contrast or 0
                    colorCorrection.Saturation = lib.Flags.world_cc_saturation or 0
                end

                return worldColors
            end
        end

        function __M.T(): typeof(__modImpl())
            local v = __M.cache.T

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.T = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local cache = __M.a()

            return function(api)
                local lib = api.lib
                local lighting = cache.Lighting
                local sunRays = lighting:FindFirstChildOfClass('SunRaysEffect')

                if not sunRays then
                    sunRays = Instance.new('SunRaysEffect')
                    sunRays.Parent = lighting
                end

                local originalEnabled = sunRays.Enabled
                local originalIntensity = sunRays.Intensity
                local originalSpread = sunRays.Spread
                local worldSunRays = {}

                function worldSunRays:update()
                    if not lib.Flags.world_sunrays_enabled then
                        sunRays.Enabled = originalEnabled
                        sunRays.Intensity = originalIntensity
                        sunRays.Spread = originalSpread

                        return
                    end

                    sunRays.Enabled = true
                    sunRays.Intensity = lib.Flags.world_sunrays_intensity or 0.1
                    sunRays.Spread = lib.Flags.world_sunrays_spread or 1
                end

                return worldSunRays
            end
        end

        function __M.U(): typeof(__modImpl())
            local v = __M.cache.U

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.U = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local cache = __M.a()

            return function(api)
                local lib = api.lib
                local lighting = cache.Lighting
                local originalClockTime = lighting.ClockTime
                local timeConnection
                local worldTime = {}

                function worldTime:update()
                    if timeConnection then
                        timeConnection:Disconnect()

                        timeConnection = nil
                    end
                    if not lib.Flags.world_time_enabled then
                        return
                    end

                    local hours = lib.Flags.world_time_hours or 12
                    local minutes = lib.Flags.world_time_minutes or 0
                    local clockTime = hours + (minutes / 60)

                    lighting.ClockTime = clockTime
                    timeConnection = lighting:GetPropertyChangedSignal('ClockTime'):Connect(function(
                    )
                        if lib.Flags.world_time_enabled then
                            local targetTime = hours + (minutes / 60)

                            if math.abs(lighting.ClockTime - targetTime) > 0.01 then
                                lighting.ClockTime = targetTime
                            end
                        end
                    end)
                end

                return worldTime
            end
        end

        function __M.V(): typeof(__modImpl())
            local v = __M.cache.V

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.V = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local cache = __M.a()

            return function(api)
                local lib = api.lib
                local lighting = cache.Lighting
                local skyboxPresets = {
                    ['v1'] = {
                        SkyboxUp = 'rbxassetid://158516792',
                        SkyboxFt = 'rbxassetid://158516797',
                        SkyboxRt = 'rbxassetid://158516797',
                        SkyboxDn = 'rbxassetid://158516788',
                        SkyboxBk = 'rbxassetid://158516797',
                        SkyboxLf = 'rbxassetid://158516797',
                        StarCount = 4000,
                    },
                    ['v2'] = {
                        SkyboxUp = 'rbxassetid://16573634370',
                        SkyboxFt = 'rbxassetid://16573632795',
                        SkyboxRt = 'rbxassetid://16573633908',
                        SkyboxDn = 'rbxassetid://16573631950',
                        SkyboxBk = 'rbxassetid://16573631102',
                        SkyboxLf = 'rbxassetid://16573633258',
                    },
                    ['v3'] = {
                        SkyboxUp = 'rbxassetid://541743441',
                        SkyboxFt = 'rbxassetid://541743446',
                        SkyboxRt = 'rbxassetid://541743435',
                        SkyboxDn = 'rbxassetid://541743443',
                        SkyboxBk = 'rbxassetid://541743453',
                        SkyboxLf = 'rbxassetid://541743436',
                    },
                    ['v4'] = {
                        SkyboxUp = 'rbxassetid://126944775797063',
                        SkyboxFt = 'rbxassetid://90546017435179',
                        SkyboxRt = 'rbxassetid://94190734796082',
                        SkyboxDn = 'rbxassetid://78646480540009',
                        SkyboxBk = 'rbxassetid://108929045660200',
                        SkyboxLf = 'rbxassetid://109838453114563',
                        CelestialBodiesShown = false,
                    },
                    ['v5'] = {
                        SkyboxUp = 'rbxasset://sky/null_plainsky512_up.jpg',
                        SkyboxFt = 'rbxasset://sky/null_plainsky512_ft.jpg',
                        SkyboxRt = 'rbxasset://sky/null_plainsky512_rt.jpg',
                        SkyboxDn = 'rbxasset://sky/null_plainsky512_dn.jpg',
                        SkyboxBk = 'rbxasset://sky/null_plainsky512_bk.jpg',
                        SkyboxLf = 'rbxasset://sky/null_plainsky512_lf.jpg',
                    },
                    ['v6'] = {
                        SkyboxUp = 'rbxassetid://591059642',
                        SkyboxFt = 'rbxassetid://591058104',
                        SkyboxRt = 'rbxassetid://591057625',
                        SkyboxDn = 'rbxassetid://591059876',
                        SkyboxBk = 'rbxassetid://591058823',
                        SkyboxLf = 'rbxassetid://591057861',
                    },
                }
                local worldSkybox = {}

                function worldSkybox:update()
                    if not lib.Flags.world_skybox_enabled then
                        local sky = lighting:FindFirstChild('CustomSkybox')

                        if sky then
                            sky:Destroy()
                        end

                        return
                    end

                    local sky = lighting:FindFirstChild('CustomSkybox')

                    if not sky then
                        sky = Instance.new('Sky')
                        sky.Name = 'CustomSkybox'
                        sky.Parent = lighting
                    end

                    local preset = skyboxPresets[lib.Flags.world_skybox_preset or 'v1']

                    if not preset then
                        return
                    end

                    sky.SkyboxBk = preset.SkyboxBk
                    sky.SkyboxDn = preset.SkyboxDn
                    sky.SkyboxFt = preset.SkyboxFt
                    sky.SkyboxLf = preset.SkyboxLf
                    sky.SkyboxRt = preset.SkyboxRt
                    sky.SkyboxUp = preset.SkyboxUp

                    if preset.StarCount then
                        sky.StarCount = preset.StarCount
                    end
                    if preset.CelestialBodiesShown ~= nil then
                        sky.CelestialBodiesShown = preset.CelestialBodiesShown
                    end
                end
                function worldSkybox:getSkyboxList()
                    return {
                        'v1',
                        'v2',
                        'v3',
                        'v4',
                        'v5',
                        'v6',
                    }
                end

                return worldSkybox
            end
        end

        function __M.W(): typeof(__modImpl())
            local v = __M.cache.W

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.W = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local cache = __M.a()

            return function(api)
                local lib = api.lib
                local lighting = cache.Lighting
                local originalFogColor = lighting.FogColor
                local originalFogStart = lighting.FogStart
                local originalFogEnd = lighting.FogEnd
                local worldFog = {}

                function worldFog:update()
                    if not lib.Flags.world_fog_enabled then
                        lighting.FogColor = originalFogColor
                        lighting.FogStart = originalFogStart
                        lighting.FogEnd = originalFogEnd

                        return
                    end

                    local fogR = lib.Flags.world_fog_color_r or 0.75
                    local fogG = lib.Flags.world_fog_color_g or 0.75
                    local fogB = lib.Flags.world_fog_color_b or 0.75

                    lighting.FogColor = Color3.fromRGB(math.floor(fogR * 255), math.floor(fogG * 255), math.floor(fogB * 255))
                    lighting.FogStart = lib.Flags.world_fog_start or 0
                    lighting.FogEnd = lib.Flags.world_fog_end or 100
                end

                return worldFog
            end
        end

        function __M.X(): typeof(__modImpl())
            local v = __M.cache.X

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.X = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local cache = __M.a()

            return function(api)
                local lib = api.lib
                local lighting = cache.Lighting
                local originalAmbient = lighting.Ambient
                local originalOutdoorAmbient = lighting.OutdoorAmbient
                local worldLightingColors = {}

                function worldLightingColors:update()
                    if lib.Flags.world_ambient_enabled then
                        local ambientColor = lib.Flags.world_ambient_color or Color3.fromRGB(255, 255, 255)

                        lighting.Ambient = ambientColor
                    else
                        lighting.Ambient = originalAmbient
                    end
                    if lib.Flags.world_outdoor_ambient_enabled then
                        local outdoorColor = lib.Flags.world_outdoor_ambient_color or Color3.fromRGB(255, 255, 255)

                        lighting.OutdoorAmbient = outdoorColor
                    else
                        lighting.OutdoorAmbient = originalOutdoorAmbient
                    end
                end

                return worldLightingColors
            end
        end

        function __M.Y(): typeof(__modImpl())
            local v = __M.cache.Y

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.Y = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local cache = __M.a()

            return function(api)
                local lib = api.lib
                local lighting = cache.Lighting
                local bloom = lighting:FindFirstChildOfClass('BloomEffect')

                if not bloom then
                    bloom = Instance.new('BloomEffect')
                    bloom.Parent = lighting
                end

                local originalEnabled = bloom.Enabled
                local originalIntensity = bloom.Intensity
                local originalSize = bloom.Size
                local originalThreshold = bloom.Threshold
                local worldBloom = {}

                function worldBloom:update()
                    if not lib.Flags.world_bloom_enabled then
                        bloom.Enabled = originalEnabled
                        bloom.Intensity = originalIntensity
                        bloom.Size = originalSize
                        bloom.Threshold = originalThreshold

                        return
                    end

                    bloom.Enabled = true
                    bloom.Intensity = lib.Flags.world_bloom_intensity or 1
                    bloom.Size = lib.Flags.world_bloom_size or 24
                    bloom.Threshold = lib.Flags.world_bloom_threshold or 2
                end

                return worldBloom
            end
        end

        function __M.Z(): typeof(__modImpl())
            local v = __M.cache.Z

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache.Z = v
            end

            return v.c
        end
    end
    do
        local function __modImpl()
            local cache = __M.a()

            return function(vars)
                local esp = {}
                local lp, loopManager, lib = vars.lp, vars.loopManager, vars.lib
                local boxes, healthbar, armorbar, flags = vars.boxes, vars.healthbar, vars.armorbar, vars.flags
                local players = cache.Players
                local espCache = {}
                local screenGui
                local tracers = vars.tracers
                local skeletons = vars.skeletons
                local highlight = vars.highlight
                local chams = vars.chams
                local boxes3d = vars.boxes3d
                local assetLoader = vars.assetLoader
                local imageCache = {}
                local settings = {
                    boxEnabled = true,
                    boxFillEnabled = false,
                    healthEnabled = false,
                    armorEnabled = false,
                    boxGradientColor1 = Color3.fromRGB(200, 200, 200),
                    boxGradientColor2 = Color3.fromRGB(180, 180, 180),
                    boxGradientColor3 = Color3.fromRGB(150, 150, 150),
                    boxGradientColor4 = Color3.fromRGB(120, 120, 120),
                    boxOutlineColor = Color3.fromRGB(0, 0, 0),
                    boxOutlineAlpha = 0,
                    boxInlineColor = Color3.fromRGB(0, 0, 0),
                    boxInlineAlpha = 0,
                    boxFillGradientColor1 = Color3.fromRGB(255, 255, 255),
                    boxFillGradientColor2 = Color3.fromRGB(200, 200, 200),
                    boxFillGradientColor3 = Color3.fromRGB(150, 150, 150),
                    boxFillGradientAlpha1 = 0.3,
                    boxFillGradientAlpha2 = 0.2,
                    boxFillGradientAlpha3 = 0.1,
                    boxFillRotateAnimationEnabled = false,
                    boxFillRotateAnimationSpeed = 1.67,
                    boxFillOverrideEnabled = false,
                    boxFillOverrideColor = Color3.fromRGB(255, 255, 255),
                    boxFillOverrideAlpha = 1,
                    boxFillOverrideImage = 'peter',
                    healthGradientColor1 = Color3.fromRGB(0, 255, 0),
                    healthGradientColor2 = Color3.fromRGB(100, 255, 0),
                    healthGradientColor3 = Color3.fromRGB(255, 200, 0),
                    healthGradientColor4 = Color3.fromRGB(255, 0, 0),
                    healthAdaptiveHueEnabled = false,
                    healthAdaptiveHueColor = Color3.fromRGB(255, 0, 0),
                    healthBarSide = 'left',
                    armorGradientColor1 = Color3.fromRGB(100, 150, 255),
                    armorGradientColor2 = Color3.fromRGB(100, 200, 255),
                    armorGradientColor3 = Color3.fromRGB(150, 200, 255),
                    armorGradientColor4 = Color3.fromRGB(200, 220, 255),
                    armorAdaptiveHueEnabled = false,
                    armorAdaptiveHueColor = Color3.fromRGB(100, 150, 255),
                    armorBarSide = 'right',
                    healthBarDirection = 'regular',
                    armorBarDirection = 'regular',
                    flagsEnabled = false,
                    flagsHealthEnabled = false,
                    flagsHealthMode = 'percent',
                    flagsArmorEnabled = false,
                    flagsArmorMode = 'value',
                    flagsUsernameEnabled = false,
                    flagsDisplaynameEnabled = false,
                    flagsToolEnabled = false,
                    flagsRaceEnabled = false,
                    flagsHealthColor = Color3.fromRGB(255, 255, 255),
                    flagsHealthSize = 13,
                    flagsHealthFont = 'GothamBold',
                    flagsArmorColor = Color3.fromRGB(255, 255, 255),
                    flagsArmorSize = 13,
                    flagsArmorFont = 'GothamBold',
                    flagsUsernameColor = Color3.fromRGB(255, 255, 255),
                    flagsUsernameSize = 13,
                    flagsUsernameFont = 'GothamBold',
                    flagsDisplaynameColor = Color3.fromRGB(255, 255, 255),
                    flagsDisplaynameSize = 13,
                    flagsDisplaynameFont = 'GothamBold',
                    flagsToolColor = Color3.fromRGB(255, 255, 255),
                    flagsToolSize = 13,
                    flagsToolFont = 'GothamBold',
                    flagsRaceColor = Color3.fromRGB(255, 255, 255),
                    flagsRaceSize = 13,
                    flagsRaceFont = 'GothamBold',
                    flagsOutlineColor = Color3.fromRGB(0, 0, 0),
                    flagsOutlineAlpha = 0,
                    tracersEnabled = false,
                    tracersOrigin = 'mouse',
                    tracersDestination = 'HumanoidRootPart',
                    tracersOutlineColor = Color3.fromRGB(0, 0, 0),
                    tracersOutlineAlpha = 0,
                    tracersOutlineThickness = 3,
                    tracersMainColor = Color3.fromRGB(255, 255, 255),
                    tracersMainAlpha = 1,
                    tracersMainThickness = 1.5,
                    skeletonsEnabled = false,
                    skeletonsOutlineColor = Color3.fromRGB(0, 0, 0),
                    skeletonsOutlineAlpha = 0,
                    skeletonsOutlineThickness = 3,
                    skeletonsMainColor = Color3.fromRGB(255, 255, 255),
                    skeletonsMainAlpha = 0,
                    skeletonsMainThickness = 1.5,
                    highlightEnabled = false,
                    highlightFillColor = Color3.fromRGB(255, 255, 255),
                    highlightFillAlpha = 0.5,
                    highlightOutlineColor = Color3.fromRGB(255, 255, 255),
                    highlightOutlineAlpha = 0.5,
                    highlightThroughWalls = false,
                    chamsEnabled = false,
                    chamsColor = Color3.fromRGB(255, 255, 255),
                    chamsAlpha = 0.5,
                    boxes3dEnabled = false,
                    boxes3dOutlineColor = Color3.fromRGB(0, 0, 0),
                    boxes3dOutlineAlpha = 0,
                    boxes3dOutlineThickness = 3,
                    boxes3dMainColor = Color3.fromRGB(255, 255, 255),
                    boxes3dMainAlpha = 1,
                    boxes3dMainThickness = 1.5,
                }

                local function initScreenGui()
                    if not screenGui then
                        screenGui = Instance.new('ScreenGui')
                        screenGui.Name = 'ESPScreenGui'
                        screenGui.ResetOnSpawn = false
                        screenGui.IgnoreGuiInset = true
                        screenGui.Parent = lp:WaitForChild('PlayerGui')
                    end

                    return screenGui
                end
                local function lerpColor(c1, c2, t)
                    return Color3.new(c1.R + (c2.R - c1.R) * t, c1.G + (c2.G - c1.G) * t, c1.B + (c2.B - c1.B) * t)
                end
                local function createBox(player)
                    local character = player.Character

                    if not character or not character:FindFirstChild('HumanoidRootPart') then
                        return
                    end

                    local gui = initScreenGui()
                    local boxData = boxes:create(gui, player)
                    local healthData = healthbar:create(gui, player)
                    local armorData = armorbar:create(gui, player)
                    local flagData = flags:create(player)

                    return {
                        player = player,
                        character = character,
                        box = boxData.box,
                        stroke = boxData.stroke,
                        gradient = boxData.gradient,
                        boxFill = boxData.boxFill,
                        fillGradient = boxData.fillGradient,
                        overrideImage = boxData.overrideImage,
                        outlineFrame = boxData.outlineFrame,
                        outlineStroke = boxData.outlineStroke,
                        inlineFrame = boxData.inlineFrame,
                        inlineStroke = boxData.inlineStroke,
                        healthBarOutline = healthData.healthBarOutline,
                        healthBarFill = healthData.healthBarFill,
                        healthGradient = healthData.healthGradient,
                        lastHealth = 1,
                        armorBarOutline = armorData.armorBarOutline,
                        armorBarFill = armorData.armorBarFill,
                        armorGradient = armorData.armorGradient,
                        lastArmor = 1,
                        healthText = flagData.healthText,
                        armorText = flagData.armorText,
                        usernameText = flagData.usernameText,
                        displaynameText = flagData.displaynameText,
                        toolText = flagData.toolText,
                        raceText = flagData.raceText,
                        tracerData = tracers:create(player),
                        skeletonData = skeletons:create(player),
                        highlightData = highlight:create(player),
                        chamsData = chams:create(player),
                        boxes3dData = boxes3d:create(player),
                        lastBoxX = 0,
                        lastBoxY = 0,
                        lastBoxWidth = 0,
                        lastBoxHeight = 0,
                    }
                end
                local function removeBox(player)
                    local espData = espCache[player]

                    if espData then
                        pcall(function()
                            boxes:remove(espData)
                        end)
                        pcall(function()
                            healthbar:remove(espData)
                        end)
                        pcall(function()
                            armorbar:remove(espData)
                        end)
                        pcall(function()
                            flags:remove(espData)
                        end)
                        pcall(function()
                            tracers:remove(player)
                        end)
                        pcall(function()
                            skeletons:remove(player)
                        end)
                        pcall(function()
                            highlight:remove(player)
                        end)
                        pcall(function()
                            chams:remove(player)
                        end)
                        pcall(function()
                            boxes3d:remove(player)
                        end)
                    end

                    espCache[player] = nil
                end
                local function updateBox(espData)
                    if not espData or not espData.character or not espData.box then
                        return
                    end

                    local character = espData.character

                    if not character or not character.Parent then
                        if espData.box then
                            espData.box.Visible = false
                        end
                        if espData.healthBarOutline then
                            espData.healthBarOutline.Visible = false
                        end
                        if espData.armorBarOutline then
                            espData.armorBarOutline.Visible = false
                        end
                        if espData.healthText then
                            espData.healthText.Visible = false
                        end
                        if espData.armorText then
                            espData.armorText.Visible = false
                        end
                        if espData.usernameText then
                            espData.usernameText.Visible = false
                        end
                        if espData.displaynameText then
                            espData.displaynameText.Visible = false
                        end
                        if espData.toolText then
                            espData.toolText.Visible = false
                        end
                        if espData.raceText then
                            espData.raceText.Visible = false
                        end
                        if espData.tracerData and espData.tracerData.outline then
                            espData.tracerData.outline.Visible = false
                        end
                        if espData.tracerData and espData.tracerData.main then
                            espData.tracerData.main.Visible = false
                        end
                        if espData.skeletonData then
                            for i = 1, #espData.skeletonData.boneLines do
                                espData.skeletonData.boneLines[i].outline.Visible = false
                                espData.skeletonData.boneLines[i].main.Visible = false
                            end
                        end
                        if espData.highlightData and espData.highlightData.highlight then
                            espData.highlightData.highlight.Enabled = false
                        end
                        if espData.boxes3dData and espData.boxes3dData.boxLines then
                            for _, lineData in ipairs(espData.boxes3dData.boxLines)do
                                lineData.outline.Visible = false
                                lineData.main.Visible = false
                            end
                        end

                        removeBox(espData.player)

                        return
                    end

                    local hrp = character:FindFirstChild('HumanoidRootPart')
                    local humanoid = character:FindFirstChildOfClass('Humanoid')

                    if not hrp or not humanoid then
                        if espData.box then
                            espData.box.Visible = false
                        end
                        if espData.healthBarOutline then
                            espData.healthBarOutline.Visible = false
                        end
                        if espData.armorBarOutline then
                            espData.armorBarOutline.Visible = false
                        end
                        if espData.healthText then
                            espData.healthText.Visible = false
                        end
                        if espData.tracerData and espData.tracerData.outline then
                            espData.tracerData.outline.Visible = false
                        end
                        if espData.tracerData and espData.tracerData.main then
                            espData.tracerData.main.Visible = false
                        end
                        if espData.skeletonData then
                            for i = 1, #espData.skeletonData.boneLines do
                                espData.skeletonData.boneLines[i].outline.Visible = false
                                espData.skeletonData.boneLines[i].main.Visible = false
                            end
                        end
                        if espData.highlightData and espData.highlightData.highlight then
                            espData.highlightData.highlight.Enabled = false
                        end
                        if espData.boxes3dData and espData.boxes3dData.boxLines then
                            for _, lineData in ipairs(espData.boxes3dData.boxLines)do
                                lineData.outline.Visible = false
                                lineData.main.Visible = false
                            end
                        end

                        return
                    end

                    local camera = workspace.CurrentCamera
                    local _, onScreen = camera:WorldToViewportPoint(hrp.Position)

                    if not onScreen then
                        if espData.box then
                            espData.box.Visible = false
                        end
                        if espData.healthBarOutline then
                            espData.healthBarOutline.Visible = false
                        end
                        if espData.armorBarOutline then
                            espData.armorBarOutline.Visible = false
                        end
                        if espData.healthText then
                            espData.healthText.Visible = false
                        end
                        if espData.armorText then
                            espData.armorText.Visible = false
                        end
                        if espData.usernameText then
                            espData.usernameText.Visible = false
                        end
                        if espData.displaynameText then
                            espData.displaynameText.Visible = false
                        end
                        if espData.toolText then
                            espData.toolText.Visible = false
                        end
                        if espData.raceText then
                            espData.raceText.Visible = false
                        end
                        if espData.tracerData and espData.tracerData.outline then
                            espData.tracerData.outline.Visible = false
                        end
                        if espData.tracerData and espData.tracerData.main then
                            espData.tracerData.main.Visible = false
                        end
                        if espData.skeletonData then
                            for i = 1, #espData.skeletonData.boneLines do
                                espData.skeletonData.boneLines[i].outline.Visible = false
                                espData.skeletonData.boneLines[i].main.Visible = false
                            end
                        end
                        if espData.highlightData and espData.highlightData.highlight then
                            espData.highlightData.highlight.Enabled = false
                        end
                        if espData.boxes3dData and espData.boxes3dData.boxLines then
                            for _, lineData in ipairs(espData.boxes3dData.boxLines)do
                                lineData.outline.Visible = false
                                lineData.main.Visible = false
                            end
                        end

                        return
                    end

                    local sizeX, sizeY, sizeZ = 2.5, 6, 1.5
                    local corners = {
                        camera:WorldToViewportPoint((hrp.CFrame * CFrame.new(-sizeX / 2, 
-sizeY / 2, -sizeZ / 2)).Position),
                        camera:WorldToViewportPoint((hrp.CFrame * CFrame.new(sizeX / 2, 
-sizeY / 2, -sizeZ / 2)).Position),
                        camera:WorldToViewportPoint((hrp.CFrame * CFrame.new(-sizeX / 2, sizeY / 2, 
-sizeZ / 2)).Position),
                        camera:WorldToViewportPoint((hrp.CFrame * CFrame.new(sizeX / 2, sizeY / 2, 
-sizeZ / 2)).Position),
                        camera:WorldToViewportPoint((hrp.CFrame * CFrame.new(-sizeX / 2, 
-sizeY / 2, sizeZ / 2)).Position),
                        camera:WorldToViewportPoint((hrp.CFrame * CFrame.new(sizeX / 2, 
-sizeY / 2, sizeZ / 2)).Position),
                        camera:WorldToViewportPoint((hrp.CFrame * CFrame.new(-sizeX / 2, sizeY / 2, sizeZ / 2)).Position),
                        camera:WorldToViewportPoint((hrp.CFrame * CFrame.new(sizeX / 2, sizeY / 2, sizeZ / 2)).Position),
                    }
                    local minX, minY, maxX, maxY = math.huge, math.huge, -math.huge, 
-math.huge

                    for i = 1, 8 do
                        local corner = corners[i]

                        minX = math.min(minX, corner.X)
                        minY = math.min(minY, corner.Y)
                        maxX = math.max(maxX, corner.X)
                        maxY = math.max(maxY, corner.Y)
                    end

                    local boxWidth, boxHeight = maxX - minX, maxY - minY
                    local boxX, boxY = minX, minY

                    espData.lastBoxX = boxX
                    espData.lastBoxY = boxY
                    espData.lastBoxWidth = boxWidth
                    espData.lastBoxHeight = boxHeight

                    boxes:update({
                        box = espData.box,
                        outlineStroke = espData.outlineStroke,
                        inlineStroke = espData.inlineStroke,
                        boxFill = espData.boxFill,
                        overrideImage = espData.overrideImage,
                    }, settings, {
                        lastBoxX = boxX,
                        lastBoxY = boxY,
                        lastBoxWidth = boxWidth,
                        lastBoxHeight = boxHeight,
                    })

                    espData.box.Position = UDim2.new(0, boxX, 0, boxY)
                    espData.box.Size = UDim2.new(0, boxWidth, 0, boxHeight)

                    if settings.boxFillOverrideEnabled and settings.boxFillOverrideImage and settings.boxFillOverrideImage ~= '' then
                        if assetLoader and espData.overrideImage then
                            if not imageCache[settings.boxFillOverrideImage] then
                                imageCache[settings.boxFillOverrideImage] = assetLoader:GetCustomAsset(settings.boxFillOverrideImage)
                            end
                            if imageCache[settings.boxFillOverrideImage] then
                                espData.overrideImage.Image = imageCache[settings.boxFillOverrideImage]
                            end
                        end
                    end

                    local healthbarData = {
                        healthBarOutline = espData.healthBarOutline,
                        healthBarFill = espData.healthBarFill,
                        healthGradient = espData.healthGradient,
                        lastHealth = espData.lastHealth,
                    }

                    healthbar:update(healthbarData, settings, humanoid, {
                        lastBoxX = espData.lastBoxX,
                        lastBoxY = espData.lastBoxY,
                        lastBoxWidth = espData.lastBoxWidth,
                        lastBoxHeight = espData.lastBoxHeight,
                    }, camera)

                    espData.lastHealth = healthbarData.lastHealth

                    local armorbarData = {
                        armorBarOutline = espData.armorBarOutline,
                        armorBarFill = espData.armorBarFill,
                        armorGradient = espData.armorGradient,
                        lastArmor = espData.lastArmor,
                    }

                    armorbar:update(armorbarData, settings, espData.player, {
                        lastBoxX = espData.lastBoxX,
                        lastBoxY = espData.lastBoxY,
                        lastBoxWidth = espData.lastBoxWidth,
                        lastBoxHeight = espData.lastBoxHeight,
                    }, camera)

                    espData.lastArmor = armorbarData.lastArmor

                    local flagData = {
                        healthText = espData.healthText,
                        armorText = espData.armorText,
                        usernameText = espData.usernameText,
                        displaynameText = espData.displaynameText,
                        toolText = espData.toolText,
                        raceText = espData.raceText,
                    }

                    flags:update(flagData, settings, humanoid, {
                        lastBoxX = espData.lastBoxX,
                        lastBoxY = espData.lastBoxY,
                        lastBoxWidth = espData.lastBoxWidth,
                        lastBoxHeight = espData.lastBoxHeight,
                    }, camera)

                    if settings.tracersEnabled then
                        tracers:update(espData.player, settings, camera)
                    else
                        if espData.tracerData and espData.tracerData.outline then
                            espData.tracerData.outline.Visible = false
                        end
                        if espData.tracerData and espData.tracerData.main then
                            espData.tracerData.main.Visible = false
                        end
                    end
                    if settings.skeletonsEnabled then
                        skeletons:update(espData.player, settings, camera)
                    else
                        if espData.skeletonData then
                            for i = 1, #espData.skeletonData.boneLines do
                                espData.skeletonData.boneLines[i].outline.Visible = false
                                espData.skeletonData.boneLines[i].main.Visible = false
                            end
                        end
                    end

                    highlight:update(espData.player, settings)

                    if settings.chamsEnabled then
                        chams:update(espData.player, settings)
                    else
                        if espData.chamsData and espData.chamsData.chams then
                            for _, adornment in ipairs(espData.chamsData.chams)do
                                adornment.Visible = false
                            end
                        end
                    end
                    if settings.boxes3dEnabled then
                        boxes3d:update(espData.player, settings, camera, hrp)
                    else
                        if espData.boxes3dData and espData.boxes3dData.boxLines then
                            for _, lineData in ipairs(espData.boxes3dData.boxLines)do
                                lineData.outline.Visible = false
                                lineData.main.Visible = false
                            end
                        end
                    end
                end

                loopManager:AddHeartbeat('esp', function()
                    if not lib.Flags.esp_enabled then
                        for p in pairs(espCache)do
                            removeBox(p)
                        end

                        return
                    end

                    for _, player in ipairs(players:GetPlayers())do
                        if player ~= lp then
                            if not espCache[player] then
                                espCache[player] = createBox(player)
                            end
                            if espCache[player] then
                                updateBox(espCache[player])
                            end
                        end
                    end
                end)
                loopManager:AddHeartbeat('esp_gradients', function()
                    for player, espData in pairs(espCache)do
                        if not espData or not espData.box or not espData.box.Parent then
                            return
                        end
                        if espData.gradient then
                            espData.gradient.Color = ColorSequence.new({
                                ColorSequenceKeypoint.new(0, settings.boxGradientColor1),
                                ColorSequenceKeypoint.new(0.33, settings.boxGradientColor2),
                                ColorSequenceKeypoint.new(0.66, settings.boxGradientColor3),
                                ColorSequenceKeypoint.new(1, settings.boxGradientColor4),
                            })
                        end
                        if espData.fillGradient and espData.boxFill and espData.boxFill.Parent then
                            espData.fillGradient.Color = ColorSequence.new({
                                ColorSequenceKeypoint.new(0, settings.boxFillGradientColor1),
                                ColorSequenceKeypoint.new(0.5, settings.boxFillGradientColor2),
                                ColorSequenceKeypoint.new(1, settings.boxFillGradientColor3),
                            })
                            espData.fillGradient.Transparency = NumberSequence.new({
                                NumberSequenceKeypoint.new(0, settings.boxFillGradientAlpha1),
                                NumberSequenceKeypoint.new(0.5, settings.boxFillGradientAlpha2),
                                NumberSequenceKeypoint.new(1, settings.boxFillGradientAlpha3),
                            })

                            if settings.boxFillRotateAnimationEnabled then
                                espData.fillGradient.Rotation = (espData.fillGradient.Rotation + settings.boxFillRotateAnimationSpeed) % 360
                            else
                                espData.fillGradient.Rotation = 45
                            end
                        end
                    end
                end)
                players.PlayerAdded:Connect(function(player)
                    if player ~= lp and lib.Flags.esp_enabled then
                        local espData = createBox(player)

                        if espData then
                            espCache[player] = espData
                        end
                    end
                end)
                players.PlayerRemoving:Connect(function(player)
                    removeBox(player)
                end)

                function esp:setSetting(key, value)
                    settings[key] = value
                end
                function esp:getSetting(key)
                    return settings[key]
                end
                function esp:clearAll()
                    for p in pairs(espCache)do
                        removeBox(p)
                    end
                end

                return esp
            end
        end

        function __M._(): typeof(__modImpl())
            local v = __M.cache._

            if not v then
                v = {
                    c = __modImpl(),
                }
                __M.cache._ = v
            end

            return v.c
        end
    end
end

local v = __M.b()

_G.ProjectVariables = v

local lib = __M.c()
local loopManager = __M.d()({
    rnd = v.rnd,
})
local targeting = __M.e()(v)
local desync = __M.f()({
    lp = v.lp,
    runService = v.runService,
    rnd = v.rnd,
})

desync:syncWithPlayer()

local ragebot = __M.g()({
    targeting = targeting,
    camera = v.cam,
    userinput = v.input,
    lp = v.lp,
    loopManager = loopManager,
    lib = lib,
})
local autofire = __M.h()({
    targeting = targeting,
    lp = v.lp,
    loopManager = loopManager,
    lib = lib,
    desync = desync,
})
local auto_stomp = __M.i()({
    lp = v.lp,
    loopManager = loopManager,
    lib = lib,
    targeting = targeting,
    desync = desync,
})
local autoLoadout = __M.j()()({
    lp = v.lp,
    desync = desync,
    lib = lib,
    targeting = targeting,
    loopManager = loopManager,
    auto_stomp = auto_stomp,
})
local autoequip = __M.k()({
    lp = v.lp,
    loopManager = loopManager,
    lib = lib,
    targeting = targeting,
    autoLoadout = autoLoadout,
})
local velocity_break = __M.l()({
    lp = v.lp,
    loopManager = loopManager,
    lib = lib,
    camera = v.cam,
})
local physics_sender_rate = __M.m()({
    lp = v.lp,
    loopManager = loopManager,
    lib = lib,
})
local a_sync = __M.n()({
    loopManager = loopManager,
    lib = lib,
})
local desync_visualise = __M.o()({
    lp = v.lp,
    loopManager = loopManager,
    input = v.input,
    lib = lib,
    desync = desync,
})
local void_hide = __M.p()({
    lp = v.lp,
    loopManager = loopManager,
    lib = lib,
    desync = desync,
    auto_stomp = auto_stomp,
})
local void_reload = __M.q()({
    lp = v.lp,
    loopManager = loopManager,
    lib = lib,
    desync = desync,
})
local follow_target = __M.r()({
    lp = v.lp,
    loopManager = loopManager,
    lib = lib,
    targeting = targeting,
    desync = desync,
    void_hide = void_hide,
    auto_stomp = auto_stomp,
})
local network_desync = __M.s()({
    lp = v.lp,
    loopManager = loopManager,
    lib = lib,
})
local boxes = __M.t()({})
local healthbar = __M.u()({})
local armorbar = __M.v()({})
local flags = __M.w()({
    lp = v.lp,
})
local tracers = __M.x()({
    lp = v.lp,
})
local skeletons = __M.y()({
    lp = v.lp,
})
local highlight = __M.z()({
    lp = v.lp,
})
local chams = __M.A()({
    lp = v.lp,
})
local boxes3d = __M.B()({
    lp = v.lp,
})
local serverspoofer = __M.C()({
    lp = v.lp,
})
local hide_crosshair = __M.D()({
    lp = v.lp,
})
local self_chams = __M.E()({
    lp = v.lp,
    loopManager = loopManager,
})
local tool_chams = __M.F()({
    lp = v.lp,
})
local china_hat = __M.G()({
    lp = v.lp,
    loopManager = loopManager,
})
local self_highlight = __M.H()({
    lp = v.lp,
})
local self_aura = __M.I()({
    lp = v.lp,
    spawn = task.spawn,
    wait = task.wait,
})
local aspect_ratio = __M.J()({
    loopManager = loopManager,
    workspace = v.ws,
})
local grenade_esp = __M.K()({
    lib = lib,
    loopManager = loopManager,
})
local rpg_esp = __M.L()({
    lib = lib,
    loopManager = loopManager,
})
local image_changer = __M.M()({lib = lib})
local texture_changer = __M.N()({lib = lib})
local bullet_tracers = __M.O()({
    lib = lib,
    loopManager = loopManager,
})
local hit_detection = __M.P()({})
local hit_effects = __M.Q()({})
local crosshair_gui = __M.R()({
    lp = v.lp,
    loopManager = loopManager,
    targeting = targeting,
})
local crosshair_draw = __M.S()({
    lp = v.lp,
    loopManager = loopManager,
    targeting = targeting,
})
local world_colors = __M.T()({lib = lib})
local world_sunrays = __M.U()({lib = lib})
local world_time = __M.V()({lib = lib})
local world_skybox = __M.W()({lib = lib})
local world_fog = __M.X()({lib = lib})
local world_lighting_colors = __M.Y()({lib = lib})
local world_bloom = __M.Z()({lib = lib})
local esp = __M._()({
    lp = v.lp,
    loopManager = loopManager,
    lib = lib,
    boxes = boxes,
    healthbar = healthbar,
    armorbar = armorbar,
    flags = flags,
    tracers = tracers,
    skeletons = skeletons,
    highlight = highlight,
    chams = chams,
    boxes3d = boxes3d,
    assetLoader = getgenv().Sakura.AssetLoader,
})
local http, lp, lighting, tps, rnd = v.http, v.lp, v.lighting, v.tps, v.rnd

local function getAssetsFileList()
    local assetLoader = getgenv().Sakura.AssetLoader

    if not assetLoader or not assetLoader.AssetsFolder then
        return {}
    end

    local files = isfolder(assetLoader.AssetsFolder) and listfiles(assetLoader.AssetsFolder) or {}
    local result = {}

    for _, filePath in ipairs(files)do
        local fileName = filePath:gsub(assetLoader.AssetsFolder, '')

        if fileName ~= '' then
            table.insert(result, fileName)
        end
    end

    return result
end

pcall(function()
    v.lp.PlayerScripts:FindFirstChild('CustomMacro'):Destroy()
end)

local win = lib:Window({
    name = 'Symbol',
    size = UDim2.fromOffset(600, 599),
    open = true,
    fontsize = 20,
})

lib.Windows = {win}
lib.Theme.Accent = Color3.fromHex('305261')
lib.Theme.Text = Color3.fromHex('546d88')
lib.Theme['Dark Text'] = Color3.fromHex('324250')
lib.Theme.Background = Color3.fromHex('1b1b1b')
lib.Theme['Section Background'] = Color3.fromHex('151515')
lib.Theme['Page Background'] = Color3.fromHex('171717')
lib.Theme['Light Text'] = Color3.fromHex('676767')
lib.Theme['Inline'] = Color3.fromHex('313131')

do
    local ragebot_tab = win:Tab({
        name = 'ragebot',
        icon = v.icons.ragebot,
    })
    local general_section = ragebot_tab:Section({
        name = 'general',
        description = 'main settings',
        side = 'left',
    })
    local ragebot_toggle = general_section:Toggle({
        name = 'ragebot',
        value = false,
        callback = function(v)
            lib.Flags.ragebot_enabled = v
        end,
        flag = 'ragebot_enabled',
    })
    local popup = ragebot_toggle:Popup({size = 200})

    popup:Toggle({
        name = 'skip ko',
        value = false,
        callback = function(v)
            lib.Flags.skip_ko = v
        end,
        flag = 'skip_ko',
    })
    popup:Toggle({
        name = 'skip grabbed',
        value = false,
        callback = function(v)
            lib.Flags.skip_grabbed = v
        end,
        flag = 'skip_grabbed',
    })
    popup:Toggle({
        name = 'skip dead',
        value = false,
        callback = function(v)
            lib.Flags.skip_dead = v
        end,
        flag = 'skip_dead',
    })
    popup:Toggle({
        name = 'skip forcefield',
        value = false,
        callback = function(v)
            lib.Flags.skip_ff = v
        end,
        flag = 'skip_ff',
    })
    ragebot_toggle:Keybind({
        key = Enum.KeyCode.Unknown,
        mode = 'Toggle',
        callback = function(v)
            if not lib.Flags.ragebot_enabled then
                return
            end
            if v then
                local filters = {
                    SkipKO = lib.Flags.skip_ko,
                    SkipGrabbed = lib.Flags.skip_grabbed,
                    SkipDead = lib.Flags.skip_dead,
                    SkipFF = lib.Flags.skip_ff,
                }
                local ok = targeting:SetTarget(true, filters)

                if ok then
                    local info = targeting:GetTargetInfo({
                        'basic',
                    })

                    if info then
                        local skipped = {}

                        if lib.Flags.skip_ko then
                            table.insert(skipped, 'KO')
                        end
                        if lib.Flags.skip_grabbed then
                            table.insert(skipped, 'Grabbed')
                        end
                        if lib.Flags.skip_dead then
                            table.insert(skipped, 'Dead')
                        end
                        if lib.Flags.skip_ff then
                            table.insert(skipped, 'FF')
                        end

                        local msg = 'Target Picked: ' .. info.PlayerName

                        if #skipped > 0 then
                            msg = msg .. ' (Skipped: ' .. table.concat(skipped, ', ') .. ')'
                        end

                        print(msg)
                    end
                end
            else
                targeting:ClearTarget()
                print('Target Cleared')
            end
        end,
        flag = 'ragebot_keybind',
    })

    local autofire_toggle = general_section:Toggle({
        name = 'auto fire',
        value = false,
        callback = function(v)
            lib.Flags.autofire_enabled = v
        end,
        flag = 'autofire_enabled',
    })
    local autofire_popup = autofire_toggle:Popup({size = 200})

    autofire_popup:Slider({
        name = 'cooldown',
        value = 4,
        min = 1,
        max = 15,
        float = 1,
        suffix = '%s ms',
        callback = function(v)
            lib.Flags.autofire_cooldown = v

            autofire:setCooldown(v)
        end,
        flag = 'autofire_cooldown',
    })
    autofire_popup:Dropdown({
        name = 'destination',
        values = {
            'Head',
            'Torso',
            'LeftArm',
            'RightArm',
            'LeftLeg',
            'RightLeg',
            'LeftHand',
            'RightHand',
            'LeftFoot',
            'RightFoot',
            'Neck',
            'Waist',
            'LeftUpperArm',
            'RightUpperArm',
            'LeftLowerArm',
            'RightLowerArm',
            'LeftUpperLeg',
            'RightUpperLeg',
            'LeftLowerLeg',
            'RightLowerLeg',
        },
        value = 'Head',
        callback = function(v)
            lib.Flags.autofire_destination = v
        end,
        flag = 'autofire_destination',
    })
    autofire_popup:Dropdown({
        name = 'origin',
        values = {
            'destination',
            'sway',
            'upper',
            'random',
        },
        value = 'destination',
        callback = function(v)
            lib.Flags.autofire_origin = v
        end,
        flag = 'autofire_origin',
    })

    local checks_toggle = autofire_popup:Toggle({
        name = 'checks',
        value = false,
        callback = function(v)
            lib.Flags.autofire_checks = v
        end,
        flag = 'autofire_checks',
    })
    local checks_popup = checks_toggle:Popup({size = 200})

    checks_popup:Toggle({
        name = 'check knocked',
        value = false,
        callback = function(v)
            lib.Flags.autofire_check_ko = v
        end,
        flag = 'autofire_check_ko',
    })
    checks_popup:Toggle({
        name = 'check forcefield',
        value = false,
        callback = function(v)
            lib.Flags.autofire_check_ff = v
        end,
        flag = 'autofire_check_ff',
    })
    checks_popup:Toggle({
        name = 'check dead',
        value = false,
        callback = function(v)
            lib.Flags.autofire_check_dead = v
        end,
        flag = 'autofire_check_dead',
    })
    checks_popup:Toggle({
        name = 'check grabbed',
        value = false,
        callback = function(v)
            lib.Flags.autofire_check_grabbed = v
        end,
        flag = 'autofire_check_grabbed',
    })
    autofire_toggle:Keybind({
        key = Enum.KeyCode.Unknown,
        mode = 'Toggle',
        callback = function(v)
            autofire_toggle.Set(v)
        end,
        flag = 'autofire_keybind',
    })

    local autoequip_toggle = general_section:Toggle({
        name = 'auto equip',
        value = false,
        callback = function(v)
            lib.Flags.autoequip_enabled = v
        end,
        flag = 'autoequip_enabled',
    })
    local autoequip_popup = autoequip_toggle:Popup({size = 200})

    autoequip:setEquipCooldown(100)
    autoequip_popup:Toggle({
        name = 'check if target exists',
        value = false,
        callback = function(v)
            lib.Flags.autoequip_check_target = v
        end,
        flag = 'autoequip_check_target',
    })
    autoequip_popup:Dropdown({
        name = 'guns',
        values = {
            'AUG',
            'Rifle',
            'LMG',
            'P90',
            'Flintlock',
            'Revolver',
            'Double-Barrel SG',
            'AK47',
            'TacticalShotgun',
            'Shotgun',
            'SMG',
            'DrumGun',
            'Glock',
            'Silencer',
            'AR',
        },
        value = {},
        multi = true,
        callback = function(v)
            lib.Flags.autoequip_guns = v
        end,
        flag = 'autoequip_guns',
    })
    autoequip_toggle:Keybind({
        key = Enum.KeyCode.Unknown,
        mode = 'Toggle',
        callback = function(v)
            autoequip_toggle.Set(v)
        end,
        flag = 'autoequip_keybind',
    })

    local main_section = ragebot_tab:Section({
        name = 'main',
        description = 'hvh things',
        side = 'right',
    })
    local velocity_break_toggle = main_section:Toggle({
        name = 'velocity break',
        value = false,
        callback = function(v)
            lib.Flags.velocity_break_enabled = v
        end,
        flag = 'velocity_break_enabled',
    })
    local velocity_break_popup = velocity_break_toggle:Popup({size = 200})

    velocity_break_popup:Slider({
        name = 'velocity x',
        value = 0,
        min = -25,
        max = 25,
        float = 1,
        suffix = '%s studs',
        callback = function(v)
            lib.Flags.velocity_break_x = v

            velocity_break:setVelocityX(v)
        end,
        flag = 'velocity_break_x',
    })
    velocity_break_popup:Slider({
        name = 'velocity y',
        value = 0,
        min = -25,
        max = 25,
        float = 1,
        suffix = '%s studs',
        callback = function(v)
            lib.Flags.velocity_break_y = v

            velocity_break:setVelocityY(v)
        end,
        flag = 'velocity_break_y',
    })
    velocity_break_popup:Slider({
        name = 'velocity z',
        value = 0,
        min = -25,
        max = 25,
        float = 1,
        suffix = '%s studs',
        callback = function(v)
            lib.Flags.velocity_break_z = v

            velocity_break:setVelocityZ(v)
        end,
        flag = 'velocity_break_z',
    })

    local velocity_visualise_toggle = velocity_break_popup:Toggle({
        name = 'visualise',
        value = false,
        callback = function(v)
            lib.Flags.velocity_break_visualise = v
        end,
        flag = 'velocity_break_visualise',
    })
    local velocity_visualise_popup = velocity_visualise_toggle:Popup({size = 200})

    velocity_visualise_popup:Colorpicker({
        name = 'tracer color',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.velocity_break_tracer_color = d.c
            lib.Flags.velocity_break_tracer_alpha = d.a

            velocity_break:setTracerColor(d.c, d.a)
        end,
        flag = 'velocity_break_tracer_color',
    })
    velocity_break_toggle:Keybind({
        key = Enum.KeyCode.Unknown,
        mode = 'Toggle',
        callback = function(v)
            velocity_break_toggle.Set(v)
        end,
        flag = 'velocity_break_keybind',
    })

    local physics_sender_rate_toggle = main_section:Toggle({
        name = 'physics sender rate',
        value = false,
        callback = function(v)
            lib.Flags.physics_sender_rate_enabled = v
        end,
        flag = 'physics_sender_rate_enabled',
    })
    local physics_sender_rate_popup = physics_sender_rate_toggle:Popup({size = 200})

    physics_sender_rate_popup:Dropdown({
        name = 'mode',
        values = {
            'default',
            'extra low',
            'extra big',
        },
        value = 'default',
        callback = function(v)
            lib.Flags.physics_sender_rate_mode = v

            physics_sender_rate:setMode(v)
        end,
        flag = 'physics_sender_rate_mode',
    })
    physics_sender_rate_popup:Slider({
        name = 'rate',
        value = 240,
        min = 1,
        max = 240,
        float = 1,
        callback = function(v)
            lib.Flags.physics_sender_rate_value = v

            physics_sender_rate:setRate(v)
        end,
        flag = 'physics_sender_rate_value',
    })
    physics_sender_rate_toggle:Keybind({
        key = Enum.KeyCode.Unknown,
        mode = 'Toggle',
        callback = function(v)
            physics_sender_rate_toggle.Set(v)
        end,
        flag = 'physics_sender_rate_keybind',
    })

    local a_sync_toggle = main_section:Toggle({
        name = 'a-sync',
        value = false,
        callback = function(v)
            lib.Flags.a_sync_enabled = v
        end,
        flag = 'a_sync_enabled',
    })
    local a_sync_popup = a_sync_toggle:Popup({size = 200})

    a_sync_popup:Slider({
        name = 'cooldown',
        value = 0.1,
        min = 0.05,
        max = 0.5,
        float = 0.05,
        callback = function(v)
            lib.Flags.a_sync_cooldown = v

            a_sync:setCooldown(v)
        end,
        flag = 'a_sync_cooldown',
    })
    a_sync_toggle:Keybind({
        key = Enum.KeyCode.Unknown,
        mode = 'Toggle',
        callback = function(v)
            a_sync_toggle.Set(v)
        end,
        flag = 'a_sync_keybind',
    })

    local network_desync_toggle = main_section:Toggle({
        name = 'network desync',
        value = false,
        callback = function(v)
            lib.Flags.network_desync_enabled = v
        end,
        flag = 'network_desync_enabled',
    })
    local network_desync_popup = network_desync_toggle:Popup({size = 200})

    network_desync_popup:Dropdown({
        name = 'mode',
        values = {
            'Slow',
            'Aggressive',
        },
        value = 'Aggressive',
        callback = function(v)
            lib.Flags.network_desync_mode = v

            network_desync:setMode(v)
        end,
        flag = 'network_desync_mode',
    })
    network_desync_toggle:Keybind({
        key = Enum.KeyCode.Unknown,
        mode = 'Toggle',
        callback = function(v)
            network_desync_toggle.Set(v)
        end,
        flag = 'network_desync_keybind',
    })

    local fakepos_toggle = main_section:Toggle({
        name = 'fake position',
        value = false,
        callback = function(enabled)
            lib.Flags.fakepos_enabled = enabled

            if enabled then
                pcall(function()
                    task.wait(1)
                    replicatesignal(v.lp.Kill)
                    task.wait(0.04)
                    setfflag('NextGenReplicatorEnabledWrite4', 'false')
                    setfflag('NextGenReplicatorEnabledWrite4', 'false')
                    setfflag('NextGenReplicatorEnabledWrite4', 'false')
                    replicatesignal(v.lp.Kill)
                    setfflag('NextGenReplicatorEnabledWrite4', 'true')
                    task.wait(0.04)
                    replicatesignal(v.lp.Kill)
                end)
            else
                pcall(function()
                    task.wait(1)
                    replicatesignal(v.lp.Kill)
                    task.wait(0.04)
                    setfflag('NextGenReplicatorEnabledWrite4', 'false')
                    setfflag('NextGenReplicatorEnabledWrite4', 'false')
                    setfflag('NextGenReplicatorEnabledWrite4', 'false')
                    replicatesignal(v.lp.Kill)
                end)
            end
        end,
        flag = 'fakepos_enabled',
    })

    fakepos_toggle:Keybind({
        key = Enum.KeyCode.Unknown,
        mode = 'Toggle',
        callback = function(v)
            fakepos_toggle.Set(v)
        end,
        flag = 'fakepos_keybind',
    })

    local ultra_instinct_toggle = main_section:Toggle({
        name = 'ultra instinct',
        value = false,
        callback = function(enabled)
            lib.Flags.ultra_instinct_enabled = enabled

            local repStorage = v.repStorage
            local lp = v.lp
            local wPlayers = workspace:FindFirstChild('Players')

            if not wPlayers then
                return
            end

            local function setupBlock(plr)
                task.spawn(function()
                    local be = plr:WaitForChild('BodyEffects', 5)

                    if not be then
                        return
                    end

                    local attacking = be:WaitForChild('Attacking', 5)

                    if not attacking then
                        return
                    end

                    attacking.Changed:Connect(function()
                        if not lib.Flags.ultra_instinct_enabled then
                            return
                        end

                        local char = lp.Character

                        if not char or not char:FindFirstChild('HumanoidRootPart') then
                            return
                        end

                        local hrp = plr:FindFirstChild('HumanoidRootPart')

                        if not hrp then
                            return
                        end
                        if attacking.Value and (hrp.Position - char.HumanoidRootPart.Position).Magnitude <= 10 then
                            repeat
                                repStorage.MainEvent:FireServer('Block', true)
                                task.wait()
                            until not attacking.Value or not lib.Flags.ultra_instinct_enabled

                            repStorage.MainEvent:FireServer('Block', false)
                        end
                    end)
                end)
            end

            for _, plr in pairs(wPlayers:GetChildren())do
                setupBlock(plr)
            end

            wPlayers.ChildAdded:Connect(function(plr)
                setupBlock(plr)
            end)
        end,
        flag = 'ultra_instinct_enabled',
    })

    ultra_instinct_toggle:Keybind({
        key = Enum.KeyCode.Unknown,
        mode = 'Toggle',
        callback = function(val)
            ultra_instinct_toggle.Set(val)
        end,
        flag = 'ultra_instinct_keybind',
    })

    local desync_section = ragebot_tab:Section({
        name = 'desync',
        description = 'desync utils',
        side = 'right',
    })
    local desync_visualise_toggle = desync_section:Toggle({
        name = 'visualise',
        value = false,
        callback = function(v)
            lib.Flags.desync_visualise_enabled = v
        end,
        flag = 'desync_visualise_enabled',
    })

    desync_visualise_toggle:Keybind({
        key = Enum.KeyCode.Unknown,
        mode = 'Toggle',
        callback = function(v)
            desync_visualise_toggle.Set(v)
        end,
        flag = 'desync_visualise_keybind',
    })

    local desync_visualise_popup = desync_visualise_toggle:Popup({size = 250})

    desync_visualise_popup:Toggle({
        name = 'hide if synced',
        value = false,
        callback = function(v)
            lib.Flags.desync_dont_show_if_synced = v
        end,
        flag = 'desync_dont_show_if_synced',
    })

    local desync_tracer_toggle = desync_visualise_popup:Toggle({
        name = 'tracer',
        value = false,
        callback = function(v)
            lib.Flags.desync_tracer_enabled = v

            if v then
                desync_visualise:setTracerEnabled(v)
            end
        end,
        flag = 'desync_tracer_enabled',
    })
    local desync_tracer_popup = desync_tracer_toggle:Popup({size = 250})

    desync_tracer_popup:Colorpicker({
        name = 'outline color',
        value = Color3.fromRGB(0, 0, 0),
        alpha = 0,
        callback = function(d)
            lib.Flags.desync_tracer_outline_color = d.c
            lib.Flags.desync_tracer_outline_alpha = d.a

            desync_visualise:setTracerOutlineColor(d.c, d.a)
        end,
        flag = 'desync_tracer_outline',
    })
    desync_tracer_popup:Colorpicker({
        name = 'main color',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.desync_tracer_main_color = d.c
            lib.Flags.desync_tracer_main_alpha = d.a

            desync_visualise:setTracerColor(d.c, d.a)
        end,
        flag = 'desync_tracer_main',
    })
    desync_tracer_popup:Slider({
        name = 'outline thickness',
        value = 3,
        min = 0.5,
        max = 5,
        float = 0.1,
        callback = function(v)
            lib.Flags.desync_tracer_outline_thickness = v

            desync_visualise:setTracerOutlineThickness(v)
        end,
        flag = 'desync_tracer_outline_thickness',
    })
    desync_tracer_popup:Slider({
        name = 'main thickness',
        value = 1.5,
        min = 0.5,
        max = 5,
        float = 0.1,
        callback = function(v)
            lib.Flags.desync_tracer_main_thickness = v

            desync_visualise:setTracerMainThickness(v)
        end,
        flag = 'desync_tracer_main_thickness',
    })

    local desync_tracer_smooth_toggle = desync_tracer_popup:Toggle({
        name = 'smooth',
        value = false,
        callback = function(v)
            desync_visualise:setTracerSmooth(v)
        end,
        flag = 'desync_tracer_smooth',
    })
    local desync_tracer_smooth_popup = desync_tracer_smooth_toggle:Popup({size = 150})

    desync_tracer_smooth_popup:Dropdown({
        name = 'type',
        values = {
            'ping',
            'custom',
        },
        value = 'ping',
        callback = function(v)
            desync_visualise:setTracerSmoothType(v)
        end,
        flag = 'desync_tracer_smooth_type',
    })
    desync_tracer_smooth_popup:Slider({
        name = 'delay',
        value = 200,
        min = 10,
        max = 500,
        float = 10,
        suffix = '%s ms',
        callback = function(v)
            desync_visualise:setTracerSmoothDelay(v)
        end,
        flag = 'desync_tracer_smooth_delay',
    })

    local desync_image_toggle = desync_visualise_popup:Toggle({
        name = 'image',
        value = false,
        callback = function(v)
            desync_visualise:setImageEnabled(v)
        end,
        flag = 'desync_image_enabled',
    })
    local desync_image_popup = desync_image_toggle:Popup({size = 200})

    desync_image_popup:Colorpicker({
        name = 'image color',
        value = Color3.fromHex('305261'),
        callback = function(d)
            desync_visualise:setImageColor(d.c)
        end,
        flag = 'desync_image_color',
    })
    desync_image_popup:Colorpicker({
        name = 'stroke color',
        value = Color3.fromHex('305261'),
        callback = function(d)
            desync_visualise:setStrokeColor(d.c)
        end,
        flag = 'desync_image_stroke',
    })
    desync_image_popup:Colorpicker({
        name = 'background',
        value = Color3.fromHex('1b1b1b'),
        callback = function(d)
            desync_visualise:setBackgroundColor(d.c)
        end,
        flag = 'desync_image_bg',
    })
    desync_image_popup:Slider({
        name = 'scale',
        value = 0.5,
        min = 0.1,
        max = 1,
        float = 0.1,
        callback = function(v)
            desync_visualise:setImageScale(v)
        end,
        flag = 'desync_image_scale',
    })

    local desync_smooth_toggle = desync_image_popup:Toggle({
        name = 'smooth',
        value = false,
        callback = function(v)
            desync_visualise:setSmooth(v)
        end,
        flag = 'desync_image_smooth',
    })
    local desync_smooth_popup = desync_smooth_toggle:Popup({size = 150})

    desync_smooth_popup:Dropdown({
        name = 'type',
        values = {
            'ping',
            'custom',
        },
        value = 'ping',
        callback = function(v)
            desync_visualise:setSmoothType(v)
        end,
        flag = 'desync_smooth_type',
    })
    desync_smooth_popup:Slider({
        name = 'delay',
        value = 200,
        min = 10,
        max = 500,
        float = 10,
        suffix = '%s ms',
        callback = function(v)
            desync_visualise:setCustomDelay(v)
        end,
        flag = 'desync_smooth_delay',
    })

    local desync_dummy_toggle = desync_visualise_popup:Toggle({
        name = 'dummy',
        value = false,
        callback = function(v)
            desync_visualise:setDummyEnabled(v)
        end,
        flag = 'desync_dummy_enabled',
    })
    local desync_dummy_popup = desync_dummy_toggle:Popup({size = 250})

    desync_dummy_popup:Dropdown({
        name = 'type',
        values = {
            'R6',
            'Clone',
        },
        value = 'R6',
        callback = function(v)
            lib.Flags.desync_dummy_type = v

            desync_visualise:setDummyType(v)
        end,
        flag = 'desync_dummy_type',
    })
    desync_dummy_popup:Dropdown({
        name = 'material',
        values = {
            'Neon',
            'SmoothPlastic',
            'Metal',
            'Glass',
            'Brick',
        },
        value = 'Neon',
        callback = function(v)
            lib.Flags.desync_dummy_material = v

            desync_visualise:setDummyMaterial(Enum.Material[v])
        end,
        flag = 'desync_dummy_material',
    })
    desync_dummy_popup:Colorpicker({
        name = 'color',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0.3,
        callback = function(d)
            lib.Flags.desync_dummy_color = d.c
            lib.Flags.desync_dummy_alpha = d.a

            desync_visualise:setDummyColor(d.c, d.a)
        end,
        flag = 'desync_dummy_color',
    })

    local follow_target_toggle = desync_section:Toggle({
        name = 'follow target',
        value = false,
        callback = function(v)
            lib.Flags.follow_target_enabled = v

            if follow_target then
                follow_target:setEnabled(v)
            end
        end,
        flag = 'follow_target_enabled',
    })

    follow_target_toggle:Keybind({
        key = Enum.KeyCode.Unknown,
        mode = 'Toggle',
        callback = function(v)
            follow_target_toggle.Set(v)
        end,
        flag = 'follow_target_keybind',
    })

    local follow_target_popup = follow_target_toggle:Popup({size = 400})

    follow_target_popup:Dropdown({
        name = 'strafe type',
        values = {
            'Circle',
            'SpiralY',
            'Random',
            'Experimental',
            'Experimental v2',
        },
        value = 'Circle',
        callback = function(v)
            lib.Flags.follow_target_mode = v

            if follow_target then
                follow_target:setMode(v)
            end
        end,
        flag = 'follow_target_mode',
    })
    follow_target_popup:Slider({
        name = 'radius',
        value = 15,
        min = 1,
        max = 100,
        float = 0.5,
        suffix = '%s studs',
        callback = function(v)
            lib.Flags.follow_target_radius = v

            if follow_target then
                follow_target:setRadius(v)
            end
        end,
        flag = 'follow_target_radius',
    })
    follow_target_popup:Slider({
        name = 'speed',
        value = 1,
        min = 0.1,
        max = 8,
        float = 0.1,
        suffix = '%s x',
        callback = function(v)
            lib.Flags.follow_target_speed = v

            if follow_target then
                follow_target:setSpeed(v)
            end
        end,
        flag = 'follow_target_speed',
    })
    follow_target_popup:Slider({
        name = 'random strength x',
        value = 30,
        min = 1,
        max = 100,
        float = 1,
        suffix = '%s',
        callback = function(v)
            lib.Flags.follow_target_random_strength_x = v

            if follow_target then
                follow_target:setRandomStrengthX(v)
            end
        end,
        flag = 'follow_target_random_strength_x',
    })
    follow_target_popup:Slider({
        name = 'random strength y',
        value = 30,
        min = 1,
        max = 100,
        float = 1,
        suffix = '%s',
        callback = function(v)
            lib.Flags.follow_target_random_strength_y = v

            if follow_target then
                follow_target:setRandomStrengthY(v)
            end
        end,
        flag = 'follow_target_random_strength_y',
    })
    follow_target_popup:Slider({
        name = 'random strength z',
        value = 30,
        min = 1,
        max = 100,
        float = 1,
        suffix = '%s',
        callback = function(v)
            lib.Flags.follow_target_random_strength_z = v

            if follow_target then
                follow_target:setRandomStrengthZ(v)
            end
        end,
        flag = 'follow_target_random_strength_z',
    })

    local follow_target_resolve_toggle = follow_target_popup:Toggle({
        name = 'resolve',
        value = false,
        callback = function(v)
            lib.Flags.follow_target_resolve_enabled = v

            if follow_target then
                follow_target:setResolveEnabled(v)
            end
        end,
        flag = 'follow_target_resolve_enabled',
    })
    local follow_target_resolve_popup = follow_target_resolve_toggle:Popup({size = 300})

    follow_target_resolve_popup:Dropdown({
        name = 'mode',
        values = {
            'predict',
            'exponential',
            'artifical',
        },
        value = 'predict',
        callback = function(v)
            lib.Flags.follow_target_resolve_mode = v

            if follow_target then
                follow_target:setResolveMode(v)
            end
        end,
        flag = 'follow_target_resolve_mode',
    })
    follow_target_resolve_popup:Dropdown({
        name = 'predict type',
        values = {
            'Custom',
            'Regular',
        },
        value = 'Custom',
        callback = function(v)
            lib.Flags.follow_target_predict_type = v

            if follow_target then
                follow_target:setPredictionType(v)
            end
        end,
        flag = 'follow_target_predict_type',
    })
    follow_target_resolve_popup:Label({
        name = 'predict strength',
        bold = false,
        dark = true,
    })
    follow_target_resolve_popup:Textbox({
        name = '',
        value = '2.0',
        callback = function(v)
            local num = tonumber(v)

            if num then
                lib.Flags.follow_target_predict_strength = num

                if follow_target then
                    follow_target:setPredictionMultiplier(num)
                end
            end
        end,
        flag = 'follow_target_predict_strength',
    })
    follow_target_resolve_popup:Label({
        name = 'expo min distance',
        bold = false,
        dark = true,
    })
    follow_target_resolve_popup:Textbox({
        name = '',
        value = '10',
        callback = function(v)
            if follow_target then
                follow_target:setExpMinDist(v)
            end
        end,
        flag = 'follow_target_exp_min',
    })
    follow_target_resolve_popup:Label({
        name = 'expo max distance',
        bold = false,
        dark = true,
    })
    follow_target_resolve_popup:Textbox({
        name = '',
        value = '100',
        callback = function(v)
            if follow_target then
                follow_target:setExpMaxDist(v)
            end
        end,
        flag = 'follow_target_exp_max',
    })
    follow_target_resolve_popup:Slider({
        name = 'art refresh time',
        min = 1,
        max = 10,
        value = 3,
        float = 0.1,
        suffix = '%s s',
        callback = function(v)
            if follow_target then
                follow_target:setArtRefreshTime(v)
            end
        end,
        flag = 'follow_target_art_refresh',
    })
    follow_target_resolve_popup:Slider({
        name = 'art forgiveness',
        min = 1,
        max = 50,
        value = 14.4,
        float = 0.1,
        callback = function(v)
            if follow_target then
                follow_target:setArtForgiveness(v)
            end
        end,
        flag = 'follow_target_art_forgiveness',
    })
    follow_target_resolve_popup:Slider({
        name = 'art void bonus',
        min = 0,
        max = 50,
        value = 13,
        float = 1,
        callback = function(v)
            if follow_target then
                follow_target:setArtOutOfVoidBonus(v)
            end
        end,
        flag = 'follow_target_art_void_bonus',
    })
    follow_target_resolve_popup:Slider({
        name = 'art dist penalty',
        min = 0,
        max = 10,
        value = 3.2,
        float = 0.1,
        suffix = '%sx',
        callback = function(v)
            if follow_target then
                follow_target:setArtDistancePenalty(v)
            end
        end,
        flag = 'follow_target_art_dist_penalty',
    })
    follow_target_resolve_popup:Slider({
        name = 'art min matches',
        min = 1,
        max = 20,
        value = 3,
        float = 1,
        callback = function(v)
            if follow_target then
                follow_target:setArtMinMatches(v)
            end
        end,
        flag = 'follow_target_art_min_matches',
    })

    local follow_target_checks_toggle = follow_target_popup:Toggle({
        name = 'checks',
        value = false,
        callback = function(v)
            lib.Flags.follow_target_checks_enabled = v
        end,
        flag = 'follow_target_checks_enabled',
    })
    local follow_target_checks_popup = follow_target_checks_toggle:Popup({size = 200})

    follow_target_checks_popup:Toggle({
        name = 'check forcefield',
        value = false,
        callback = function(v)
            lib.Flags.follow_target_check_ff = v
        end,
        flag = 'follow_target_check_ff',
    })
    follow_target_checks_popup:Toggle({
        name = 'check k.o',
        value = false,
        callback = function(v)
            lib.Flags.follow_target_check_ko = v
        end,
        flag = 'follow_target_check_ko',
    })
    follow_target_checks_popup:Toggle({
        name = 'check grabbed',
        value = false,
        callback = function(v)
            lib.Flags.follow_target_check_grabbed = v
        end,
        flag = 'follow_target_check_grabbed',
    })
    follow_target_checks_popup:Toggle({
        name = 'check dead',
        value = false,
        callback = function(v)
            lib.Flags.follow_target_check_dead = v
        end,
        flag = 'follow_target_check_dead',
    })

    local void_hide_toggle = desync_section:Toggle({
        name = 'void hide',
        value = false,
        callback = function(v)
            lib.Flags.void_hide_enabled = v

            if void_hide then
                void_hide:setEnabled(v)
            end
        end,
        flag = 'void_hide_enabled',
    })

    void_hide_toggle:Keybind({
        key = Enum.KeyCode.Unknown,
        mode = 'Toggle',
        callback = function(v)
            void_hide_toggle.Set(v)
        end,
        flag = 'void_hide_keybind',
    })

    local void_hide_popup = void_hide_toggle:Popup({size = 300})

    void_hide_popup:Dropdown({
        name = 'pattern',
        values = {
            'Deep Void',
            'Break Null',
            'World Random',
        },
        value = 'Deep Void',
        callback = function(v)
            lib.Flags.void_hide_pattern = v

            if void_hide then
                void_hide:setPattern(v)
            end
        end,
        flag = 'void_hide_pattern',
    })

    if lib.Flags.void_hide_pattern ~= 'World Random' then
        void_hide_popup:Dropdown({
            name = 'direction',
            values = {
                '+X',
                '-X',
                '+Y',
                '-Y',
                '+Z',
                '-Z',
            },
            value = '-Y',
            callback = function(v)
                lib.Flags.void_hide_direction = v

                if void_hide then
                    void_hide:setDirection(v)
                end
            end,
            flag = 'void_hide_direction',
        })
        void_hide_popup:Slider({
            name = 'switch speed',
            value = 0.05,
            min = 0.01,
            max = 0.5,
            float = 0.01,
            suffix = '%s s',
            callback = function(v)
                lib.Flags.void_hide_switch_speed = v

                if void_hide then
                    void_hide:setSwitchSpeed(v)
                end
            end,
            flag = 'void_hide_switch_speed',
        })
    end
    if lib.Flags.void_hide_pattern == 'Deep Void' then
        void_hide_popup:Slider({
            name = 'depth multiplier',
            value = 1,
            min = 0.5,
            max = 5,
            float = 0.1,
            callback = function(v)
                lib.Flags.void_hide_depth_multiplier = v

                if void_hide then
                    void_hide:setDepthMultiplier(v)
                end
            end,
            flag = 'void_hide_depth_multiplier',
        })
    end

    local void_reload_toggle = desync_section:Toggle({
        name = 'void reload',
        value = false,
        callback = function(v)
            lib.Flags.void_reload_enabled = v

            if void_reload then
                void_reload:setEnabled(v)
            end
        end,
        flag = 'void_reload_enabled',
    })

    void_reload_toggle:Keybind({
        key = Enum.KeyCode.Unknown,
        mode = 'Toggle',
        callback = function(v)
            void_reload_toggle.Set(v)
        end,
        flag = 'void_reload_keybind',
    })

    local void_reload_popup = void_reload_toggle:Popup({size = 300})

    void_reload_popup:Dropdown({
        name = 'direction',
        values = {
            '+X',
            '-X',
            '+Y',
            '-Y',
            '+Z',
            '-Z',
        },
        value = '-Y',
        callback = function(v)
            lib.Flags.void_reload_direction = v

            if void_reload then
                void_reload:setBreakDirection(v)
            end
        end,
        flag = 'void_reload_direction',
    })
    void_reload_popup:Slider({
        name = 'switch speed',
        value = 0.05,
        min = 0.01,
        max = 0.5,
        float = 0.01,
        suffix = '%s s',
        callback = function(v)
            lib.Flags.void_reload_switch_speed = v

            if void_reload then
                void_reload:setBreakSwitchSpeed(v)
            end
        end,
        flag = 'void_reload_switch_speed',
    })

    local auto_stomp_toggle = desync_section:Toggle({
        name = 'auto stomp',
        value = false,
        callback = function(v)
            lib.Flags.auto_stomp_enabled = v

            if auto_stomp then
                auto_stomp:setEnabled(v)
            end
        end,
        flag = 'auto_stomp_enabled',
    })

    auto_stomp_toggle:Keybind({
        key = Enum.KeyCode.Unknown,
        mode = 'Toggle',
        callback = function(v)
            auto_stomp_toggle.Set(v)
        end,
        flag = 'auto_stomp_keybind',
    })

    local auto_stomp_popup = auto_stomp_toggle:Popup({size = 250})

    auto_stomp_popup:Slider({
        name = 'stomp height',
        value = 2.7,
        min = 1,
        max = 5,
        float = 0.1,
        suffix = '%s studs',
        callback = function(v)
            lib.Flags.auto_stomp_height = v

            if auto_stomp then
                auto_stomp:setStompHeight(v)
            end
        end,
        flag = 'auto_stomp_height',
    })

    local autoLoadout_toggle = desync_section:Toggle({
        name = 'auto loadout',
        value = false,
        callback = function(v)
            lib.Flags.auto_loadout_enabled = v

            if autoLoadout then
                autoLoadout:setEnabled(v)
            end
        end,
        flag = 'auto_loadout_enabled',
    })

    autoLoadout_toggle:Keybind({
        key = Enum.KeyCode.Unknown,
        mode = 'Toggle',
        callback = function(v)
            autoLoadout_toggle.Set(v)
        end,
        flag = 'auto_loadout_keybind',
    })

    local autoLoadout_popup = autoLoadout_toggle:Popup({size = 350})
    local armor_toggle = autoLoadout_popup:Toggle({
        name = 'armor',
        value = false,
        callback = function(v)
            lib.Flags.auto_loadout_armor = v

            if autoLoadout then
                autoLoadout:setArmorEnabled(v)
            end
        end,
        flag = 'auto_loadout_armor',
    })
    local armor_popup = armor_toggle:Popup({size = 300})

    armor_popup:Slider({
        name = 'target armor',
        value = 130,
        min = 1,
        max = 130,
        float = 1,
        callback = function(v)
            lib.Flags.auto_loadout_armor_target = v

            if autoLoadout then
                autoLoadout:setArmorTarget(v)
            end
        end,
        flag = 'auto_loadout_armor_target',
    })

    local fire_armor_toggle = autoLoadout_popup:Toggle({
        name = 'fire armor',
        value = false,
        callback = function(v)
            lib.Flags.auto_loadout_fire_armor = v

            if autoLoadout then
                autoLoadout:setFireArmorEnabled(v)
            end
        end,
        flag = 'auto_loadout_fire_armor',
    })
    local fire_armor_popup = fire_armor_toggle:Popup({size = 300})

    fire_armor_popup:Slider({
        name = 'target fire armor',
        value = 200,
        min = 1,
        max = 200,
        float = 1,
        callback = function(v)
            lib.Flags.auto_loadout_fire_armor_target = v

            if autoLoadout then
                autoLoadout:setFireArmorTarget(v)
            end
        end,
        flag = 'auto_loadout_fire_armor_target',
    })

    local guns_toggle = autoLoadout_popup:Toggle({
        name = 'guns',
        value = false,
        callback = function(v)
            lib.Flags.auto_loadout_guns = v

            if autoLoadout then
                autoLoadout:setGunsEnabled(v)
            end
        end,
        flag = 'auto_loadout_guns',
    })
    local guns_popup = guns_toggle:Popup({size = 250})
    local weaponItems = {
        '[Rifle]',
        '[Flintlock]',
        '[LMG]',
        '[AUG]',
        '[AK47]',
    }

    guns_popup:Dropdown({
        name = 'weapons',
        values = weaponItems,
        value = {},
        multi = true,
        callback = function(selected)
            if autoLoadout then
                for _, w in ipairs(autoLoadout:getWeaponsConfig())do
                    autoLoadout:setWeaponEnabled(w.name, false)

                    for _, sel in ipairs(selected)do
                        if w.name == sel then
                            autoLoadout:setWeaponEnabled(w.name, true)

                            break
                        end
                    end
                end
            end
        end,
        flag = 'auto_loadout_weapons',
    })

    local ammo_toggle = autoLoadout_popup:Toggle({
        name = 'ammo',
        value = false,
        callback = function(v)
            lib.Flags.auto_loadout_ammo = v

            if autoLoadout then
                autoLoadout:setAmmoEnabled(v)
            end
        end,
        flag = 'auto_loadout_ammo',
    })
    local ammo_popup = ammo_toggle:Popup({size = 200})

    ammo_popup:Slider({
        name = 'purchase count',
        value = 1,
        min = 1,
        max = 5,
        float = 1,
        callback = function(v)
            lib.Flags.auto_loadout_ammo_count = v

            if autoLoadout then
                autoLoadout:setAmmoPurchaseCount(v)
            end
        end,
        flag = 'auto_loadout_ammo_count',
    })
    ammo_popup:Toggle({
        name = 'only selected weapons',
        value = false,
        callback = function(v)
            lib.Flags.auto_loadout_ammo_only_selected = v

            if autoLoadout then
                autoLoadout:setAmmoOnlySelected(v)
            end
        end,
        flag = 'auto_loadout_ammo_only_selected',
    })
    autoLoadout_popup:Dropdown({
        name = 'dont buy if',
        values = {
            'no target',
            'target not ko',
            'not safe',
        },
        value = {},
        multi = true,
        callback = function(selected)
            local cond = {
                noTarget = false,
                targetNotKO = false,
                notSafe = false,
            }

            for _, s in ipairs(selected)do
                if s == 'no target' then
                    cond.noTarget = true
                elseif s == 'target not ko' then
                    cond.targetNotKO = true
                elseif s == 'not safe' then
                    cond.notSafe = true
                end
            end

            lib.Flags.auto_loadout_conditions = selected

            if autoLoadout then
                autoLoadout:setConditions(cond)
            end
        end,
        flag = 'auto_loadout_conditions',
    })

    do
        local visualise_section = ragebot_tab:Section({
            name = 'visualise',
            description = 'show who you are targeting',
            side = 'left',
        })

        visualise_section:Toggle({
            name = 'view',
            value = false,
            callback = function(v)
                lib.Flags.visualise_view = v
            end,
            flag = 'visualise_view',
        })
        visualise_section:Toggle({
            name = 'look at',
            value = false,
            callback = function(v)
                lib.Flags.visualise_lookat = v
            end,
            flag = 'visualise_lookat',
        })

        local tracer_popup = visualise_section:Toggle({
            name = 'tracer',
            value = false,
            callback = function(v)
                lib.Flags.visualise_tracer = v
            end,
            flag = 'visualise_tracer',
        }):Popup({size = 200})

        tracer_popup:Colorpicker({
            name = 'outline color',
            value = Color3.fromRGB(0, 0, 0),
            alpha = 0,
            callback = function(d)
                lib.Flags.tracer_outline_color = d.c
                lib.Flags.tracer_outline_alpha = d.a

                ragebot:setTracerOutlineColor(d.c, d.a)
            end,
            flag = 'tracer_outline',
        })
        tracer_popup:Colorpicker({
            name = 'main color',
            value = Color3.fromRGB(255, 255, 255),
            alpha = 0,
            callback = function(d)
                lib.Flags.tracer_main_color = d.c
                lib.Flags.tracer_main_alpha = d.a

                ragebot:setTracerMainColor(d.c, d.a)
            end,
            flag = 'tracer_main',
        })
        tracer_popup:Slider({
            name = 'outline thickness',
            value = 3,
            min = 0.5,
            max = 5,
            float = 0.1,
            callback = function(v)
                lib.Flags.tracer_outline_thickness = v

                ragebot:setTracerOutlineThickness(v)
            end,
            flag = 'tracer_outline_thickness',
        })
        tracer_popup:Slider({
            name = 'main thickness',
            value = 1.5,
            min = 0.5,
            max = 5,
            float = 0.1,
            callback = function(v)
                lib.Flags.tracer_main_thickness = v

                ragebot:setTracerMainThickness(v)
            end,
            flag = 'tracer_main_thickness',
        })
        tracer_popup:Dropdown({
            name = 'origin',
            values = {
                'center',
                'mouse',
                'top',
                'bottom',
            },
            value = 'mouse',
            callback = function(v)
                lib.Flags.tracer_origin = v
            end,
            flag = 'tracer_origin',
        })
        tracer_popup:Dropdown({
            name = 'destination',
            values = {
                'HumanoidRootPart',
                'Head',
                'Torso',
                'LeftArm',
                'RightArm',
                'LeftLeg',
                'RightLeg',
                'LeftHand',
                'RightHand',
                'LeftFoot',
                'RightFoot',
                'Neck',
                'Waist',
                'LeftUpperArm',
                'RightUpperArm',
            },
            value = 'HumanoidRootPart',
            callback = function(v)
                lib.Flags.tracer_destination = v
            end,
            flag = 'tracer_destination',
        })

        local target_tracer_smooth_toggle = tracer_popup:Toggle({
            name = 'smooth',
            value = false,
            callback = function(v)
                ragebot:setTracerSmooth(v)
            end,
            flag = 'target_tracer_smooth',
        })
        local target_tracer_smooth_popup = target_tracer_smooth_toggle:Popup({size = 150})

        target_tracer_smooth_popup:Dropdown({
            name = 'type',
            values = {
                'ping',
                'custom',
            },
            value = 'ping',
            callback = function(v)
                ragebot:setTracerSmoothType(v)
            end,
            flag = 'target_tracer_smooth_type',
        })
        target_tracer_smooth_popup:Slider({
            name = 'delay',
            value = 200,
            min = 10,
            max = 500,
            float = 10,
            suffix = '%s ms',
            callback = function(v)
                ragebot:setTracerCustomDelay(v)
            end,
            flag = 'target_tracer_smooth_delay',
        })

        local highlight_popup = visualise_section:Toggle({
            name = 'highlight',
            value = false,
            callback = function(v)
                lib.Flags.visualise_highlight = v
            end,
            flag = 'visualise_highlight',
        }):Popup({size = 200})

        highlight_popup:Colorpicker({
            name = 'fill color',
            value = Color3.fromRGB(255, 255, 255),
            alpha = 0.5,
            callback = function(d)
                lib.Flags.highlight_fill_color = d.c
                lib.Flags.highlight_fill_alpha = d.a

                ragebot:setHighlightFillColor(d.c, d.a)
            end,
            flag = 'highlight_fill',
        })
        highlight_popup:Colorpicker({
            name = 'outline color',
            value = Color3.fromRGB(0, 0, 0),
            alpha = 0,
            callback = function(d)
                lib.Flags.highlight_outline_color = d.c
                lib.Flags.highlight_outline_alpha = d.a

                ragebot:setHighlightOutlineColor(d.c, d.a)
            end,
            flag = 'highlight_outline',
        })

        local circle_popup = visualise_section:Toggle({
            name = '3d circle',
            value = false,
            callback = function(v)
                lib.Flags.visualise_circle = v
            end,
            flag = 'visualise_circle',
        }):Popup({size = 200})

        circle_popup:Slider({
            name = 'thickness',
            value = 1.5,
            min = 0.1,
            max = 3,
            float = 0.1,
            callback = function(v)
                lib.Flags.circle_thickness = v
            end,
            flag = 'circle_thickness',
        })
        circle_popup:Slider({
            name = 'radius',
            value = 2,
            min = 1,
            max = 10,
            float = 0.5,
            callback = function(v)
                lib.Flags.circle_radius = v
            end,
            flag = 'circle_radius',
        })
        circle_popup:Slider({
            name = 'visible',
            value = 35,
            min = 1,
            max = 100,
            float = 1,
            callback = function(v)
                lib.Flags.circle_visible = v
            end,
            flag = 'circle_visible',
        })
        circle_popup:Slider({
            name = 'rotspeed',
            value = 3,
            min = 1,
            max = 10,
            float = 0.5,
            callback = function(v)
                lib.Flags.circle_rotspeed = v
            end,
            flag = 'circle_rotspeed',
        })
        circle_popup:Colorpicker({
            name = 'color 1',
            value = Color3.fromRGB(255, 255, 255),
            alpha = 0,
            callback = function(d)
                lib.Flags.circle_color = d.c

                ragebot:setCircleColor(d.c)
            end,
            flag = 'circle_color',
        })
        circle_popup:Colorpicker({
            name = 'color 2',
            value = Color3.fromRGB(255, 255, 255),
            alpha = 0,
            callback = function(d)
                lib.Flags.circle_color2 = d.c

                ragebot:setCircleColor2(d.c)
            end,
            flag = 'circle_color2',
        })
        circle_popup:Colorpicker({
            name = 'color 3',
            value = Color3.fromRGB(255, 255, 255),
            alpha = 0,
            callback = function(d)
                lib.Flags.circle_color3 = d.c

                ragebot:setCircleColor3(d.c)
            end,
            flag = 'circle_color3',
        })
        circle_popup:Colorpicker({
            name = 'color 4',
            value = Color3.fromRGB(255, 255, 255),
            alpha = 0,
            callback = function(d)
                lib.Flags.circle_color4 = d.c

                ragebot:setCircleColor4(d.c)
            end,
            flag = 'circle_color4',
        })
    end
end

win:Tab({
    name = 'misc',
    icon = v.icons.misc,
})

do
    local visuals_tab = win:Tab({
        name = 'visuals',
        icon = v.icons.visuals,
    })
    local general_section = visuals_tab:Section({
        name = 'general',
        description = 'esp settings',
        side = 'left',
    })
    local esp_toggle = general_section:Toggle({
        name = 'esp',
        value = false,
        callback = function(v)
            lib.Flags.esp_enabled = v
        end,
        flag = 'esp_enabled',
    })
    local esp_box_toggle = general_section:Toggle({
        name = 'box',
        value = false,
        callback = function(v)
            lib.Flags.esp_box_enabled = v

            esp:setSetting('boxEnabled', v)
        end,
        flag = 'esp_box_enabled',
    })
    local esp_box_popup = esp_box_toggle:Popup({size = 250})

    esp_box_popup:Colorpicker({
        name = 'color 1',
        value = esp:getSetting('boxGradientColor1'),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_box_gradient_color1 = d.c

            esp:setSetting('boxGradientColor1', d.c)
        end,
        flag = 'esp_box_gradient_color1',
    })
    esp_box_popup:Colorpicker({
        name = 'color 2',
        value = esp:getSetting('boxGradientColor2'),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_box_gradient_color2 = d.c

            esp:setSetting('boxGradientColor2', d.c)
        end,
        flag = 'esp_box_gradient_color2',
    })
    esp_box_popup:Colorpicker({
        name = 'color 3',
        value = esp:getSetting('boxGradientColor3'),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_box_gradient_color3 = d.c

            esp:setSetting('boxGradientColor3', d.c)
        end,
        flag = 'esp_box_gradient_color3',
    })
    esp_box_popup:Colorpicker({
        name = 'color 4',
        value = esp:getSetting('boxGradientColor4'),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_box_gradient_color4 = d.c

            esp:setSetting('boxGradientColor4', d.c)
        end,
        flag = 'esp_box_gradient_color4',
    })
    esp_box_popup:Colorpicker({
        name = 'outline color',
        value = Color3.fromRGB(0, 0, 0),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_box_outline_color = d.c
            lib.Flags.esp_box_outline_alpha = d.a

            esp:setSetting('boxOutlineColor', d.c)
            esp:setSetting('boxOutlineAlpha', d.a)
        end,
        flag = 'esp_box_outline_color',
    })
    esp_box_popup:Colorpicker({
        name = 'inline color',
        value = Color3.fromRGB(0, 0, 0),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_box_inline_color = d.c
            lib.Flags.esp_box_inline_alpha = d.a

            esp:setSetting('boxInlineColor', d.c)
            esp:setSetting('boxInlineAlpha', d.a)
        end,
        flag = 'esp_box_inline_color',
    })

    local esp_box_fill_toggle = esp_box_popup:Toggle({
        name = 'fill',
        value = false,
        callback = function(v)
            lib.Flags.esp_box_fill_enabled = v

            esp:setSetting('boxFillEnabled', v)
        end,
        flag = 'esp_box_fill_enabled',
    })
    local esp_box_fill_popup = esp_box_fill_toggle:Popup({size = 300})

    esp_box_fill_popup:Colorpicker({
        name = 'color 1',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0.3,
        callback = function(d)
            lib.Flags.esp_box_fill_gradient_color1 = d.c
            lib.Flags.esp_box_fill_gradient_alpha1 = d.a

            esp:setSetting('boxFillGradientColor1', d.c)
            esp:setSetting('boxFillGradientAlpha1', d.a)
        end,
        flag = 'esp_box_fill_gradient_color1',
    })
    esp_box_fill_popup:Colorpicker({
        name = 'color 2',
        value = Color3.fromRGB(200, 200, 200),
        alpha = 0.2,
        callback = function(d)
            lib.Flags.esp_box_fill_gradient_color2 = d.c
            lib.Flags.esp_box_fill_gradient_alpha2 = d.a

            esp:setSetting('boxFillGradientColor2', d.c)
            esp:setSetting('boxFillGradientAlpha2', d.a)
        end,
        flag = 'esp_box_fill_gradient_color2',
    })
    esp_box_fill_popup:Colorpicker({
        name = 'color 3',
        value = Color3.fromRGB(150, 150, 150),
        alpha = 0.1,
        callback = function(d)
            lib.Flags.esp_box_fill_gradient_color3 = d.c
            lib.Flags.esp_box_fill_gradient_alpha3 = d.a

            esp:setSetting('boxFillGradientColor3', d.c)
            esp:setSetting('boxFillGradientAlpha3', d.a)
        end,
        flag = 'esp_box_fill_gradient_color3',
    })

    local esp_box_fill_rotate_toggle = esp_box_fill_popup:Toggle({
        name = 'rotate animation',
        value = false,
        callback = function(v)
            lib.Flags.esp_box_fill_rotate_animation_enabled = v

            esp:setSetting('boxFillRotateAnimationEnabled', v)
        end,
        flag = 'esp_box_fill_rotate_animation_enabled',
    })
    local esp_box_fill_rotate_popup = esp_box_fill_rotate_toggle:Popup({size = 200})

    esp_box_fill_rotate_popup:Slider({
        name = 'speed',
        min = 0.5,
        max = 10,
        float = 0.1,
        value = 1.67,
        callback = function(v)
            lib.Flags.esp_box_fill_rotate_animation_speed = v

            esp:setSetting('boxFillRotateAnimationSpeed', v)
        end,
        flag = 'esp_box_fill_rotate_animation_speed',
    })

    local esp_box_fill_override_toggle = esp_box_fill_popup:Toggle({
        name = 'override image',
        value = false,
        callback = function(v)
            lib.Flags.esp_box_fill_override_enabled = v

            esp:setSetting('boxFillOverrideEnabled', v)
        end,
        flag = 'esp_box_fill_override_enabled',
    })
    local esp_box_fill_override_popup = esp_box_fill_override_toggle:Popup({size = 250})

    esp_box_fill_override_popup:Dropdown({
        name = 'image',
        values = getAssetsFileList(),
        value = 'peter.png',
        callback = function(v)
            lib.Flags.esp_box_fill_override_image = v

            esp:setSetting('boxFillOverrideImage', v)
        end,
        flag = 'esp_box_fill_override_image',
    })

    local esp_health_toggle = general_section:Toggle({
        name = 'health bar',
        value = false,
        callback = function(v)
            lib.Flags.esp_health_enabled = v

            esp:setSetting('healthEnabled', v)
        end,
        flag = 'esp_health_enabled',
    })
    local esp_health_popup = esp_health_toggle:Popup({size = 300})

    esp_health_popup:Colorpicker({
        name = 'color 1',
        value = Color3.fromRGB(0, 255, 0),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_health_gradient_color1 = d.c

            esp:setSetting('healthGradientColor1', d.c)
        end,
        flag = 'esp_health_gradient_color1',
    })
    esp_health_popup:Colorpicker({
        name = 'color 2',
        value = Color3.fromRGB(100, 255, 0),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_health_gradient_color2 = d.c

            esp:setSetting('healthGradientColor2', d.c)
        end,
        flag = 'esp_health_gradient_color2',
    })
    esp_health_popup:Colorpicker({
        name = 'color 3',
        value = Color3.fromRGB(255, 200, 0),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_health_gradient_color3 = d.c

            esp:setSetting('healthGradientColor3', d.c)
        end,
        flag = 'esp_health_gradient_color3',
    })
    esp_health_popup:Colorpicker({
        name = 'color 4',
        value = Color3.fromRGB(255, 0, 0),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_health_gradient_color4 = d.c

            esp:setSetting('healthGradientColor4', d.c)
        end,
        flag = 'esp_health_gradient_color4',
    })

    local esp_health_adaptive_toggle = esp_health_popup:Toggle({
        name = 'adaptive hue',
        value = false,
        callback = function(v)
            lib.Flags.esp_health_adaptive_hue_enabled = v

            esp:setSetting('healthAdaptiveHueEnabled', v)
        end,
        flag = 'esp_health_adaptive_hue_enabled',
    })
    local esp_health_adaptive_popup = esp_health_adaptive_toggle:Popup({size = 200})

    esp_health_adaptive_popup:Colorpicker({
        name = 'color when low',
        value = Color3.fromRGB(255, 0, 0),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_health_adaptive_hue_color = d.c

            esp:setSetting('healthAdaptiveHueColor', d.c)
        end,
        flag = 'esp_health_adaptive_hue_color',
    })

    local tweenStyles = {}
    local excludeStyles = {
        Back = true,
        Elastic = true,
        Bounce = true,
    }

    for _, style in pairs(Enum.EasingStyle:GetEnumItems())do
        if not excludeStyles[style.Name] then
            table.insert(tweenStyles, style.Name)
        end
    end

    esp_health_popup:Dropdown({
        name = 'tween type',
        values = tweenStyles,
        value = 'Linear',
        callback = function(v)
            lib.Flags.esp_health_tween_type = v

            healthbar:setTweenType(v)
        end,
        flag = 'esp_health_tween_type',
    })
    esp_health_popup:Slider({
        name = 'tween speed',
        value = 0.3,
        min = 0,
        max = 0.8,
        float = 0.01,
        suffix = '%s s',
        callback = function(v)
            lib.Flags.esp_health_tween_speed = v

            healthbar:setTweenDuration(v)
        end,
        flag = 'esp_health_tween_speed',
    })
    esp_health_popup:Dropdown({
        name = 'side',
        values = {
            'left',
            'right',
            'top',
            'bottom',
        },
        value = 'left',
        callback = function(v)
            lib.Flags.esp_health_bar_side = v

            esp:setSetting('healthBarSide', v)
        end,
        flag = 'esp_health_bar_side',
    })
    esp_health_popup:Dropdown({
        name = 'direction',
        values = {
            'regular',
            'inverted',
        },
        value = 'regular',
        callback = function(v)
            lib.Flags.esp_health_bar_direction = v

            esp:setSetting('healthBarDirection', v)
        end,
        flag = 'esp_health_bar_direction',
    })

    local esp_armor_toggle = general_section:Toggle({
        name = 'armor bar',
        value = false,
        callback = function(v)
            lib.Flags.esp_armor_enabled = v

            esp:setSetting('armorEnabled', v)
        end,
        flag = 'esp_armor_enabled',
    })
    local esp_armor_popup = esp_armor_toggle:Popup({size = 300})

    esp_armor_popup:Colorpicker({
        name = 'color 1',
        value = Color3.fromRGB(100, 150, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_armor_gradient_color1 = d.c

            esp:setSetting('armorGradientColor1', d.c)
        end,
        flag = 'esp_armor_gradient_color1',
    })
    esp_armor_popup:Colorpicker({
        name = 'color 2',
        value = Color3.fromRGB(100, 200, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_armor_gradient_color2 = d.c

            esp:setSetting('armorGradientColor2', d.c)
        end,
        flag = 'esp_armor_gradient_color2',
    })
    esp_armor_popup:Colorpicker({
        name = 'color 3',
        value = Color3.fromRGB(150, 200, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_armor_gradient_color3 = d.c

            esp:setSetting('armorGradientColor3', d.c)
        end,
        flag = 'esp_armor_gradient_color3',
    })
    esp_armor_popup:Colorpicker({
        name = 'color 4',
        value = Color3.fromRGB(200, 220, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_armor_gradient_color4 = d.c

            esp:setSetting('armorGradientColor4', d.c)
        end,
        flag = 'esp_armor_gradient_color4',
    })

    local esp_armor_adaptive_toggle = esp_armor_popup:Toggle({
        name = 'adaptive hue',
        value = false,
        callback = function(v)
            lib.Flags.esp_armor_adaptive_hue_enabled = v

            esp:setSetting('armorAdaptiveHueEnabled', v)
        end,
        flag = 'esp_armor_adaptive_hue_enabled',
    })
    local esp_armor_adaptive_popup = esp_armor_adaptive_toggle:Popup({size = 200})

    esp_armor_adaptive_popup:Colorpicker({
        name = 'color when low',
        value = Color3.fromRGB(100, 150, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_armor_adaptive_hue_color = d.c

            esp:setSetting('armorAdaptiveHueColor', d.c)
        end,
        flag = 'esp_armor_adaptive_hue_color',
    })
    esp_armor_popup:Dropdown({
        name = 'tween type',
        values = tweenStyles,
        value = 'Linear',
        callback = function(v)
            lib.Flags.esp_armor_tween_type = v

            armorbar:setTweenType(v)
        end,
        flag = 'esp_armor_tween_type',
    })
    esp_armor_popup:Slider({
        name = 'tween speed',
        value = 0.3,
        min = 0,
        max = 0.8,
        float = 0.01,
        suffix = '%s s',
        callback = function(v)
            lib.Flags.esp_armor_tween_speed = v

            armorbar:setTweenDuration(v)
        end,
        flag = 'esp_armor_tween_speed',
    })
    esp_armor_popup:Dropdown({
        name = 'side',
        values = {
            'left',
            'right',
            'top',
            'bottom',
        },
        value = 'right',
        callback = function(v)
            lib.Flags.esp_armor_bar_side = v

            esp:setSetting('armorBarSide', v)
        end,
        flag = 'esp_armor_bar_side',
    })
    esp_armor_popup:Dropdown({
        name = 'direction',
        values = {
            'regular',
            'inverted',
        },
        value = 'regular',
        callback = function(v)
            lib.Flags.esp_armor_bar_direction = v

            esp:setSetting('armorBarDirection', v)
        end,
        flag = 'esp_armor_bar_direction',
    })

    local esp_flags_toggle = general_section:Toggle({
        name = 'flags',
        value = false,
        callback = function(v)
            lib.Flags.esp_flags_enabled = v

            esp:setSetting('flagsEnabled', v)
        end,
        flag = 'esp_flags_enabled',
    })
    local esp_flags_popup = esp_flags_toggle:Popup({size = 300})

    local function getLoadedFonts()
        local fonts = {}
        local fontsFolder = 'Sakura\\FontsFolder'

        if isfolder(fontsFolder) then
            for _, f in pairs(listfiles(fontsFolder))do
                local name = f:match('([^\\/]+)%.json$')

                if name then
                    table.insert(fonts, name)
                end
            end
        end

        return #fonts > 0 and fonts or {
            'Proggy',
        }
    end

    local fontsList = getLoadedFonts()

    esp_flags_popup:Dropdown({
        name = 'font',
        values = fontsList,
        value = fontsList[1] or 'Proggy',
        callback = function(v)
            lib.Flags.esp_flags_font = v

            esp:setSetting('flagsFont', v)
            flags:setFont(v)
        end,
        flag = 'esp_flags_font',
    })
    esp_flags_popup:Slider({
        name = 'size',
        value = 13,
        min = 8,
        max = 24,
        float = 1,
        callback = function(v)
            lib.Flags.esp_flags_size = v

            esp:setSetting('flagsSize', v)
            flags:setSize(v)
        end,
        flag = 'esp_flags_size',
    })
    esp_flags_popup:Colorpicker({
        name = 'outline color',
        value = Color3.fromRGB(0, 0, 0),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_flags_outline_color = d.c
            lib.Flags.esp_flags_outline_alpha = d.a

            esp:setSetting('flagsOutlineColor', d.c)
            esp:setSetting('flagsOutlineAlpha', d.a)
        end,
        flag = 'esp_flags_outline_color',
    })

    local esp_flags_health_toggle = esp_flags_popup:Toggle({
        name = 'health',
        value = false,
        callback = function(v)
            lib.Flags.esp_flags_health_enabled = v

            esp:setSetting('flagsHealthEnabled', v)
        end,
        flag = 'esp_flags_health_enabled',
    })
    local esp_flags_health_popup = esp_flags_health_toggle:Popup({size = 200})

    esp_flags_health_popup:Dropdown({
        name = 'display',
        values = {
            'percent',
            'value',
        },
        value = 'percent',
        callback = function(v)
            lib.Flags.esp_flags_health_mode = v

            esp:setSetting('flagsHealthMode', v)
        end,
        flag = 'esp_flags_health_mode',
    })
    esp_flags_health_popup:Colorpicker({
        name = 'text color',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_flags_health_color = d.c

            esp:setSetting('flagsHealthColor', d.c)
        end,
        flag = 'esp_flags_health_color',
    })

    local esp_flags_armor_toggle = esp_flags_popup:Toggle({
        name = 'armor',
        value = false,
        callback = function(v)
            lib.Flags.esp_flags_armor_enabled = v

            esp:setSetting('flagsArmorEnabled', v)
        end,
        flag = 'esp_flags_armor_enabled',
    })
    local esp_flags_armor_popup = esp_flags_armor_toggle:Popup({size = 200})

    esp_flags_armor_popup:Dropdown({
        name = 'display',
        values = {
            'value',
            'percent',
        },
        value = 'value',
        callback = function(v)
            lib.Flags.esp_flags_armor_mode = v

            esp:setSetting('flagsArmorMode', v)
        end,
        flag = 'esp_flags_armor_mode',
    })
    esp_flags_armor_popup:Colorpicker({
        name = 'text color',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_flags_armor_color = d.c

            esp:setSetting('flagsArmorColor', d.c)
        end,
        flag = 'esp_flags_armor_color',
    })

    local esp_flags_username_toggle = esp_flags_popup:Toggle({
        name = 'username',
        value = false,
        callback = function(v)
            lib.Flags.esp_flags_username_enabled = v

            esp:setSetting('flagsUsernameEnabled', v)
        end,
        flag = 'esp_flags_username_enabled',
    })
    local esp_flags_username_popup = esp_flags_username_toggle:Popup({size = 200})

    esp_flags_username_popup:Colorpicker({
        name = 'text color',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_flags_username_color = d.c

            esp:setSetting('flagsUsernameColor', d.c)
        end,
        flag = 'esp_flags_username_color',
    })

    local esp_flags_displayname_toggle = esp_flags_popup:Toggle({
        name = 'displayname',
        value = false,
        callback = function(v)
            lib.Flags.esp_flags_displayname_enabled = v

            esp:setSetting('flagsDisplaynameEnabled', v)
        end,
        flag = 'esp_flags_displayname_enabled',
    })
    local esp_flags_displayname_popup = esp_flags_displayname_toggle:Popup({size = 200})

    esp_flags_displayname_popup:Colorpicker({
        name = 'text color',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_flags_displayname_color = d.c

            esp:setSetting('flagsDisplaynameColor', d.c)
        end,
        flag = 'esp_flags_displayname_color',
    })

    local esp_flags_tool_toggle = esp_flags_popup:Toggle({
        name = 'tool',
        value = false,
        callback = function(v)
            lib.Flags.esp_flags_tool_enabled = v

            esp:setSetting('flagsToolEnabled', v)
        end,
        flag = 'esp_flags_tool_enabled',
    })
    local esp_flags_tool_popup = esp_flags_tool_toggle:Popup({size = 200})

    esp_flags_tool_popup:Colorpicker({
        name = 'text color',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_flags_tool_color = d.c

            esp:setSetting('flagsToolColor', d.c)
        end,
        flag = 'esp_flags_tool_color',
    })

    local esp_flags_race_toggle = esp_flags_popup:Toggle({
        name = 'race',
        value = false,
        callback = function(v)
            lib.Flags.esp_flags_race_enabled = v

            esp:setSetting('flagsRaceEnabled', v)
        end,
        flag = 'esp_flags_race_enabled',
    })
    local esp_flags_race_popup = esp_flags_race_toggle:Popup({size = 200})

    esp_flags_race_popup:Colorpicker({
        name = 'text color',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_flags_race_color = d.c

            esp:setSetting('flagsRaceColor', d.c)
        end,
        flag = 'esp_flags_race_color',
    })

    local esp_tracers_toggle = general_section:Toggle({
        name = 'tracers',
        value = false,
        callback = function(v)
            lib.Flags.esp_tracers_enabled = v

            esp:setSetting('tracersEnabled', v)
        end,
        flag = 'esp_tracers_enabled',
    })
    local esp_tracers_popup = esp_tracers_toggle:Popup({size = 300})

    esp_tracers_popup:Colorpicker({
        name = 'outline color',
        value = Color3.fromRGB(0, 0, 0),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_tracers_outline_color = d.c
            lib.Flags.esp_tracers_outline_alpha = d.a

            esp:setSetting('tracersOutlineColor', d.c)
            esp:setSetting('tracersOutlineAlpha', d.a)
        end,
        flag = 'esp_tracers_outline_color',
    })
    esp_tracers_popup:Colorpicker({
        name = 'main color',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_tracers_main_color = d.c
            lib.Flags.esp_tracers_main_alpha = d.a

            esp:setSetting('tracersMainColor', d.c)
            esp:setSetting('tracersMainAlpha', d.a)
        end,
        flag = 'esp_tracers_main_color',
    })
    esp_tracers_popup:Slider({
        name = 'outline thickness',
        value = 3,
        min = 0.5,
        max = 5,
        float = 0.1,
        callback = function(v)
            lib.Flags.esp_tracers_outline_thickness = v

            esp:setSetting('tracersOutlineThickness', v)
        end,
        flag = 'esp_tracers_outline_thickness',
    })
    esp_tracers_popup:Slider({
        name = 'main thickness',
        value = 1.5,
        min = 0.5,
        max = 5,
        float = 0.1,
        callback = function(v)
            lib.Flags.esp_tracers_main_thickness = v

            esp:setSetting('tracersMainThickness', v)
        end,
        flag = 'esp_tracers_main_thickness',
    })
    esp_tracers_popup:Dropdown({
        name = 'origin',
        values = {
            'center',
            'mouse',
            'top',
            'bottom',
        },
        value = 'mouse',
        callback = function(v)
            lib.Flags.esp_tracers_origin = v

            esp:setSetting('tracersOrigin', v)
        end,
        flag = 'esp_tracers_origin',
    })
    esp_tracers_popup:Dropdown({
        name = 'destination',
        values = {
            'HumanoidRootPart',
            'Head',
            'Torso',
            'LeftArm',
            'RightArm',
            'LeftLeg',
            'RightLeg',
            'LeftHand',
            'RightHand',
            'LeftFoot',
            'RightFoot',
            'Neck',
            'Waist',
            'LeftUpperArm',
            'RightUpperArm',
        },
        value = 'HumanoidRootPart',
        callback = function(v)
            lib.Flags.esp_tracers_destination = v

            esp:setSetting('tracersDestination', v)
        end,
        flag = 'esp_tracers_destination',
    })

    local esp_skeletons_toggle = general_section:Toggle({
        name = 'skeletons',
        value = false,
        callback = function(v)
            lib.Flags.esp_skeletons_enabled = v

            esp:setSetting('skeletonsEnabled', v)
        end,
        flag = 'esp_skeletons_enabled',
    })
    local esp_skeletons_popup = esp_skeletons_toggle:Popup({size = 300})

    esp_skeletons_popup:Colorpicker({
        name = 'outline color',
        value = Color3.fromRGB(0, 0, 0),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_skeletons_outline_color = d.c
            lib.Flags.esp_skeletons_outline_alpha = d.a

            esp:setSetting('skeletonsOutlineColor', d.c)
            esp:setSetting('skeletonsOutlineAlpha', d.a)
        end,
        flag = 'esp_skeletons_outline_color',
    })
    esp_skeletons_popup:Colorpicker({
        name = 'main color',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_skeletons_main_color = d.c
            lib.Flags.esp_skeletons_main_alpha = d.a

            esp:setSetting('skeletonsMainColor', d.c)
            esp:setSetting('skeletonsMainAlpha', d.a)
        end,
        flag = 'esp_skeletons_main_color',
    })
    esp_skeletons_popup:Slider({
        name = 'outline thickness',
        value = 3,
        min = 0.5,
        max = 5,
        float = 0.1,
        callback = function(v)
            lib.Flags.esp_skeletons_outline_thickness = v

            esp:setSetting('skeletonsOutlineThickness', v)
        end,
        flag = 'esp_skeletons_outline_thickness',
    })
    esp_skeletons_popup:Slider({
        name = 'main thickness',
        value = 1.5,
        min = 0.5,
        max = 5,
        float = 0.1,
        callback = function(v)
            lib.Flags.esp_skeletons_main_thickness = v

            esp:setSetting('skeletonsMainThickness', v)
        end,
        flag = 'esp_skeletons_main_thickness',
    })

    local esp_highlight_toggle = general_section:Toggle({
        name = 'highlight',
        value = false,
        callback = function(v)
            lib.Flags.esp_highlight_enabled = v

            esp:setSetting('highlightEnabled', v)
        end,
        flag = 'esp_highlight_enabled',
    })
    local esp_highlight_popup = esp_highlight_toggle:Popup({size = 300})

    esp_highlight_popup:Colorpicker({
        name = 'fill color',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0.5,
        callback = function(d)
            lib.Flags.esp_highlight_fill_color = d.c
            lib.Flags.esp_highlight_fill_alpha = d.a

            esp:setSetting('highlightFillColor', d.c)
            esp:setSetting('highlightFillAlpha', d.a)
        end,
        flag = 'esp_highlight_fill_color',
    })
    esp_highlight_popup:Colorpicker({
        name = 'outline color',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0.5,
        callback = function(d)
            lib.Flags.esp_highlight_outline_color = d.c
            lib.Flags.esp_highlight_outline_alpha = d.a

            esp:setSetting('highlightOutlineColor', d.c)
            esp:setSetting('highlightOutlineAlpha', d.a)
        end,
        flag = 'esp_highlight_outline_color',
    })
    esp_highlight_popup:Toggle({
        name = 'show through walls',
        value = false,
        callback = function(v)
            lib.Flags.esp_highlight_through_walls = v

            esp:setSetting('highlightThroughWalls', v)
        end,
        flag = 'esp_highlight_through_walls',
    })

    local esp_chams_toggle = general_section:Toggle({
        name = 'chams',
        value = false,
        callback = function(v)
            lib.Flags.esp_chams_enabled = v

            esp:setSetting('chamsEnabled', v)
        end,
        flag = 'esp_chams_enabled',
    })
    local esp_chams_popup = esp_chams_toggle:Popup({size = 300})

    esp_chams_popup:Colorpicker({
        name = 'color',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0.5,
        callback = function(d)
            lib.Flags.esp_chams_color = d.c
            lib.Flags.esp_chams_alpha = d.a

            esp:setSetting('chamsColor', d.c)
            esp:setSetting('chamsAlpha', d.a)
        end,
        flag = 'esp_chams_color',
    })

    local esp_3dboxes_toggle = general_section:Toggle({
        name = '3d boxes',
        value = false,
        callback = function(v)
            lib.Flags.esp_3dboxes_enabled = v

            esp:setSetting('boxes3dEnabled', v)
        end,
        flag = 'esp_3dboxes_enabled',
    })
    local esp_3dboxes_popup = esp_3dboxes_toggle:Popup({size = 300})

    esp_3dboxes_popup:Colorpicker({
        name = 'outline color',
        value = Color3.fromRGB(0, 0, 0),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_3dboxes_outline_color = d.c
            lib.Flags.esp_3dboxes_outline_alpha = d.a

            esp:setSetting('boxes3dOutlineColor', d.c)
            esp:setSetting('boxes3dOutlineAlpha', d.a)
        end,
        flag = 'esp_3dboxes_outline_color',
    })
    esp_3dboxes_popup:Slider({
        name = 'outline thickness',
        value = 3,
        min = 0.5,
        max = 5,
        float = 0.1,
        callback = function(v)
            lib.Flags.esp_3dboxes_outline_thickness = v

            esp:setSetting('boxes3dOutlineThickness', v)
        end,
        flag = 'esp_3dboxes_outline_thickness',
    })
    esp_3dboxes_popup:Colorpicker({
        name = 'main color',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.esp_3dboxes_main_color = d.c
            lib.Flags.esp_3dboxes_main_alpha = d.a

            esp:setSetting('boxes3dMainColor', d.c)
            esp:setSetting('boxes3dMainAlpha', d.a)
        end,
        flag = 'esp_3dboxes_main_color',
    })
    esp_3dboxes_popup:Slider({
        name = 'main thickness',
        value = 1.5,
        min = 0.5,
        max = 5,
        float = 0.1,
        callback = function(v)
            lib.Flags.esp_3dboxes_main_thickness = v

            esp:setSetting('boxes3dMainThickness', v)
        end,
        flag = 'esp_3dboxes_main_thickness',
    })

    local hud_section = visuals_tab:Section({
        name = 'hud',
        description = 'hud settings',
        side = 'left',
    })
    local spoof_toggle = hud_section:Toggle({
        name = 'spoof server region',
        value = false,
        callback = function(v)
            lib.Flags.hudchanger_spoof_server = v

            if v then
                serverspoofer:enable()
            else
                serverspoofer:disable()
            end
        end,
        flag = 'hudchanger_spoof_server',
    })
    local spoof_popup = spoof_toggle:Popup({size = 200})

    spoof_popup:Textbox({
        name = 'server region',
        value = 'Symbol',
        placeholder = 'Enter server region...',
        callback = function(v)
            lib.Flags.hudchanger_server_name = v

            serverspoofer:setText(v)
        end,
        flag = 'hudchanger_server_name',
    })
    hud_section:Toggle({
        name = 'hide crosshair',
        value = false,
        callback = function(v)
            lib.Flags.hide_crosshair = v

            if v then
                hide_crosshair:enable()
            else
                hide_crosshair:disable()
            end
        end,
        flag = 'hide_crosshair',
    })

    local notif_enabled, notif_toggles, notif_rageset, notif_rageleft = false, false, false, false
    local notif_toggle = hud_section:Toggle({
        name = 'notifications',
        value = false,
        callback = function(v)
            notif_enabled = v
        end,
        flag = 'notif_enabled',
    })
    local notif_popup = notif_toggle:Popup({size = 250})

    notif_popup:Dropdown({
        name = 'conditions',
        values = {
            'toggles',
            'ragebot set',
            'ragebot left',
        },
        multi = true,
        value = {},
        callback = function(v)
            notif_toggles, notif_rageset, notif_rageleft = false, false, false

            for _, val in pairs(v)do
                if val == 'toggles' then
                    notif_toggles = true
                elseif val == 'ragebot set' then
                    notif_rageset = true
                elseif val == 'ragebot left' then
                    notif_rageleft = true
                end
            end
        end,
        flag = 'notif_conditions',
    })

    lib.OnToggleChange = function(name, value)
        if notif_enabled and notif_toggles then
            lib.Notification({
                name = name,
                description = 'set to ' .. tostring(value),
                type = 'Time',
                time = 2,
            })
        end
    end
    targeting.OnTargetSet = function(name)
        if notif_enabled and notif_rageset then
            lib.Notification({
                name = 'ragebot',
                description = 'target set to ' .. (name or 'None'),
                type = 'Time',
                time = 2,
            })
        end
    end
    targeting.OnTargetLeft = function()
        if notif_enabled and notif_rageleft then
            lib.Notification({
                name = 'ragebot',
                description = 'target left the game',
                type = 'Time',
                time = 2,
            })
        end
    end

    local gui_cross_toggle = hud_section:Toggle({
        name = 'screengui crosshair',
        value = false,
        callback = function(val)
            lib.Flags.gui_cross_enabled = val

            crosshair_gui:setEnabled(val)
        end,
        flag = 'gui_cross_enabled',
    })
    local gui_cross_popup = gui_cross_toggle:Popup({size = 350})

    gui_cross_popup:Toggle({
        name = 'chase cursor',
        value = false,
        callback = function(val)
            lib.Flags.gui_cross_chase = val

            crosshair_gui:setChaseCursor(val)
        end,
        flag = 'gui_cross_chase',
    })
    gui_cross_popup:Toggle({
        name = 'chase target',
        value = false,
        callback = function(val)
            lib.Flags.gui_cross_target = val

            crosshair_gui:setChaseTarget(val)
        end,
        flag = 'gui_cross_target',
    })
    gui_cross_popup:Slider({
        name = 'thickness',
        value = 2,
        min = 0.1,
        max = 10,
        float = 0.1,
        callback = function(val)
            lib.Flags.gui_cross_thick = val

            crosshair_gui:setThickness(val)
        end,
        flag = 'gui_cross_thick',
    })
    gui_cross_popup:Slider({
        name = 'length',
        value = 10,
        min = 1,
        max = 50,
        float = 0.1,
        callback = function(val)
            lib.Flags.gui_cross_len = val

            crosshair_gui:setLength(val)
        end,
        flag = 'gui_cross_len',
    })
    gui_cross_popup:Slider({
        name = 'gap',
        value = 5,
        min = 0,
        max = 20,
        float = 0.1,
        callback = function(val)
            lib.Flags.gui_cross_gap = val

            crosshair_gui:setGap(val)
        end,
        flag = 'gui_cross_gap',
    })
    gui_cross_popup:Slider({
        name = 'outline',
        value = 1,
        min = 0,
        max = 5,
        float = 0.1,
        callback = function(val)
            lib.Flags.gui_cross_outline = val

            crosshair_gui:setOutlineThickness(val)
        end,
        flag = 'gui_cross_outline',
    })
    gui_cross_popup:Colorpicker({
        name = 'side 1',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.gui_cross_c1 = d.c

            crosshair_gui:setSideColor(1, d.c)
        end,
        flag = 'gui_cross_c1',
    })
    gui_cross_popup:Colorpicker({
        name = 'side 2',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.gui_cross_c2 = d.c

            crosshair_gui:setSideColor(2, d.c)
        end,
        flag = 'gui_cross_c2',
    })
    gui_cross_popup:Colorpicker({
        name = 'side 3',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.gui_cross_c3 = d.c

            crosshair_gui:setSideColor(3, d.c)
        end,
        flag = 'gui_cross_c3',
    })
    gui_cross_popup:Colorpicker({
        name = 'side 4',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.gui_cross_c4 = d.c

            crosshair_gui:setSideColor(4, d.c)
        end,
        flag = 'gui_cross_c4',
    })
    gui_cross_popup:Colorpicker({
        name = 'outline color',
        value = Color3.fromRGB(0, 0, 0),
        alpha = 0,
        callback = function(d)
            lib.Flags.gui_cross_oc = d.c

            crosshair_gui:setOutlineColor(d.c)
        end,
        flag = 'gui_cross_oc',
    })

    local gui_cross_smooth = gui_cross_popup:Toggle({
        name = 'smooth',
        value = false,
        callback = function(val)
            lib.Flags.gui_cross_smooth = val

            crosshair_gui:setSmoothEnabled(val)
        end,
        flag = 'gui_cross_smooth',
    })
    local gui_cross_smooth_popup = gui_cross_smooth:Popup({size = 200})

    gui_cross_smooth_popup:Slider({
        name = 'speed',
        value = 10,
        min = 1,
        max = 50,
        float = 0.5,
        callback = function(val)
            lib.Flags.gui_cross_smooth_spd = val

            crosshair_gui:setSmoothSpeed(val)
        end,
        flag = 'gui_cross_smooth_spd',
    })

    local gui_cross_rotate = gui_cross_popup:Toggle({
        name = 'rotate',
        value = false,
        callback = function(val)
            lib.Flags.gui_cross_rotate = val

            crosshair_gui:setRotate(val)
        end,
        flag = 'gui_cross_rotate',
    })
    local gui_cross_rotate_popup = gui_cross_rotate:Popup({size = 250})

    gui_cross_rotate_popup:Dropdown({
        name = 'mode',
        values = {
            'one_side',
            'both_sides',
            'pulse',
            'bounce',
        },
        value = 'both_sides',
        callback = function(val)
            lib.Flags.gui_cross_rot_mode = val

            crosshair_gui:setRotateMode(val)
        end,
        flag = 'gui_cross_rot_mode',
    })
    gui_cross_rotate_popup:Slider({
        name = 'speed',
        value = 1,
        min = 0.1,
        max = 10,
        float = 0.1,
        callback = function(val)
            lib.Flags.gui_cross_rot_spd = val

            crosshair_gui:setRotateSpeed(val)
        end,
        flag = 'gui_cross_rot_spd',
    })

    local gui_cross_ind = gui_cross_popup:Toggle({
        name = 'indicator',
        value = false,
        callback = function(val)
            lib.Flags.gui_cross_ind = val

            crosshair_gui:setIndicatorEnabled(val)
        end,
        flag = 'gui_cross_ind',
    })
    local gui_cross_ind_popup = gui_cross_ind:Popup({size = 200})

    gui_cross_ind_popup:Colorpicker({
        name = 'color 1',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.gui_cross_ind_c1 = d.c

            crosshair_gui:setIndicatorColor1(d.c)
        end,
        flag = 'gui_cross_ind_c1',
    })
    gui_cross_ind_popup:Colorpicker({
        name = 'color 2',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.gui_cross_ind_c2 = d.c

            crosshair_gui:setIndicatorColor2(d.c)
        end,
        flag = 'gui_cross_ind_c2',
    })
    gui_cross_ind_popup:Toggle({
        name = 'glow',
        value = false,
        callback = function(val)
            lib.Flags.gui_cross_glow = val

            crosshair_gui:setIndicatorGlow(val)
        end,
        flag = 'gui_cross_glow',
    })

    local draw_cross_toggle = hud_section:Toggle({
        name = 'drawing crosshair',
        value = false,
        callback = function(val)
            lib.Flags.draw_cross_enabled = val

            crosshair_draw:setEnabled(val)
        end,
        flag = 'draw_cross_enabled',
    })
    local draw_cross_popup = draw_cross_toggle:Popup({size = 350})

    draw_cross_popup:Toggle({
        name = 'chase cursor',
        value = false,
        callback = function(val)
            lib.Flags.draw_cross_chase = val

            crosshair_draw:setChaseCursor(val)
        end,
        flag = 'draw_cross_chase',
    })
    draw_cross_popup:Toggle({
        name = 'chase target',
        value = false,
        callback = function(val)
            lib.Flags.draw_cross_target = val

            crosshair_draw:setChaseTarget(val)
        end,
        flag = 'draw_cross_target',
    })
    draw_cross_popup:Slider({
        name = 'thickness',
        value = 1.5,
        min = 0.1,
        max = 5,
        float = 0.1,
        callback = function(val)
            lib.Flags.draw_cross_thick = val

            crosshair_draw:setThickness(val)
        end,
        flag = 'draw_cross_thick',
    })
    draw_cross_popup:Slider({
        name = 'outline',
        value = 2.5,
        min = 0.1,
        max = 8,
        float = 0.1,
        callback = function(val)
            lib.Flags.draw_cross_outline = val

            crosshair_draw:setOutlineThickness(val)
        end,
        flag = 'draw_cross_outline',
    })
    draw_cross_popup:Slider({
        name = 'length',
        value = 12,
        min = 0,
        max = 30,
        float = 1,
        callback = function(val)
            lib.Flags.draw_cross_len = val

            crosshair_draw:setLength(val)
        end,
        flag = 'draw_cross_len',
    })
    draw_cross_popup:Slider({
        name = 'gap',
        value = 12,
        min = 0,
        max = 30,
        float = 1,
        callback = function(val)
            lib.Flags.draw_cross_gap = val

            crosshair_draw:setGap(val)
        end,
        flag = 'draw_cross_gap',
    })
    draw_cross_popup:Colorpicker({
        name = 'side 1',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.draw_cross_c1 = d.c

            crosshair_draw:setSideColor(1, d.c)
        end,
        flag = 'draw_cross_c1',
    })
    draw_cross_popup:Colorpicker({
        name = 'side 2',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.draw_cross_c2 = d.c

            crosshair_draw:setSideColor(2, d.c)
        end,
        flag = 'draw_cross_c2',
    })
    draw_cross_popup:Colorpicker({
        name = 'side 3',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.draw_cross_c3 = d.c

            crosshair_draw:setSideColor(3, d.c)
        end,
        flag = 'draw_cross_c3',
    })
    draw_cross_popup:Colorpicker({
        name = 'side 4',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.draw_cross_c4 = d.c

            crosshair_draw:setSideColor(4, d.c)
        end,
        flag = 'draw_cross_c4',
    })
    draw_cross_popup:Colorpicker({
        name = 'outline color',
        value = Color3.fromRGB(0, 0, 0),
        alpha = 0,
        callback = function(d)
            lib.Flags.draw_cross_oc = d.c

            crosshair_draw:setOutlineColor(d.c)
        end,
        flag = 'draw_cross_oc',
    })

    local draw_cross_smooth = draw_cross_popup:Toggle({
        name = 'smooth',
        value = false,
        callback = function(val)
            lib.Flags.draw_cross_smooth = val

            crosshair_draw:setSmoothEnabled(val)
        end,
        flag = 'draw_cross_smooth',
    })
    local draw_cross_smooth_popup = draw_cross_smooth:Popup({size = 200})

    draw_cross_smooth_popup:Slider({
        name = 'speed',
        value = 10,
        min = 1,
        max = 50,
        float = 0.5,
        callback = function(val)
            lib.Flags.draw_cross_smooth_spd = val

            crosshair_draw:setSmoothSpeed(val)
        end,
        flag = 'draw_cross_smooth_spd',
    })

    local draw_cross_rotate = draw_cross_popup:Toggle({
        name = 'rotate',
        value = false,
        callback = function(val)
            lib.Flags.draw_cross_rotate = val

            crosshair_draw:setRotate(val)
        end,
        flag = 'draw_cross_rotate',
    })
    local draw_cross_rotate_popup = draw_cross_rotate:Popup({size = 250})

    draw_cross_rotate_popup:Dropdown({
        name = 'mode',
        values = {
            'one_side',
            'both_sides',
            'pulse',
            'bounce',
        },
        value = 'both_sides',
        callback = function(val)
            lib.Flags.draw_cross_rot_mode = val

            crosshair_draw:setRotateMode(val)
        end,
        flag = 'draw_cross_rot_mode',
    })

    local aspect_ratio_toggle = hud_section:Toggle({
        name = 'aspect ratio',
        value = false,
        callback = function(val)
            lib.Flags.aspect_ratio_enabled = val

            aspect_ratio:setEnabled(val)
        end,
        flag = 'aspect_ratio_enabled',
    })
    local aspect_ratio_popup = aspect_ratio_toggle:Popup({size = 300})

    aspect_ratio_popup:Slider({
        name = 'horizontal stretch',
        value = 1,
        min = 0.5,
        max = 1.19,
        float = 0.01,
        callback = function(val)
            lib.Flags.aspect_ratio_horizontal = val

            aspect_ratio:setHorizontalStretch(val)
        end,
        flag = 'aspect_ratio_horizontal',
    })
    aspect_ratio_popup:Slider({
        name = 'vertical stretch',
        value = 1,
        min = 0.5,
        max = 1.19,
        float = 0.01,
        callback = function(val)
            lib.Flags.aspect_ratio_vertical = val

            aspect_ratio:setVerticalStretch(val)
        end,
        flag = 'aspect_ratio_vertical',
    })
    draw_cross_rotate_popup:Slider({
        name = 'speed',
        value = 12,
        min = 0,
        max = 24,
        float = 0.1,
        callback = function(val)
            lib.Flags.draw_cross_rot_spd = val

            crosshair_draw:setRotateSpeed(val)
        end,
        flag = 'draw_cross_rot_spd',
    })

    local world_section = visuals_tab:Section({
        name = 'world',
        description = 'world settings',
        side = 'right',
    })
    local color_correction_toggle = world_section:Toggle({
        name = 'color correction',
        value = false,
        callback = function(v)
            lib.Flags.world_colors_enabled = v
        end,
        flag = 'world_colors_enabled',
    })
    local color_correction_popup = color_correction_toggle:Popup({size = 400})

    color_correction_popup:Slider({
        name = 'brightness',
        value = 0,
        min = -1,
        max = 1,
        float = 0.01,
        callback = function(v)
            lib.Flags.world_cc_brightness = v
        end,
        flag = 'world_cc_brightness',
    })
    color_correction_popup:Slider({
        name = 'contrast',
        value = 0,
        min = -1,
        max = 1,
        float = 0.01,
        callback = function(v)
            lib.Flags.world_cc_contrast = v
        end,
        flag = 'world_cc_contrast',
    })
    color_correction_popup:Slider({
        name = 'saturation',
        value = 0,
        min = -1,
        max = 1,
        float = 0.01,
        callback = function(v)
            lib.Flags.world_cc_saturation = v
        end,
        flag = 'world_cc_saturation',
    })

    local sunrays_toggle = world_section:Toggle({
        name = 'sun rays',
        value = false,
        callback = function(v)
            lib.Flags.world_sunrays_enabled = v
        end,
        flag = 'world_sunrays_enabled',
    })
    local sunrays_popup = sunrays_toggle:Popup({size = 250})

    sunrays_popup:Slider({
        name = 'intensity',
        value = 0.1,
        min = 0,
        max = 1,
        float = 0.01,
        callback = function(v)
            lib.Flags.world_sunrays_intensity = v
        end,
        flag = 'world_sunrays_intensity',
    })
    sunrays_popup:Slider({
        name = 'spread',
        value = 1,
        min = 0,
        max = 2,
        float = 0.01,
        callback = function(v)
            lib.Flags.world_sunrays_spread = v
        end,
        flag = 'world_sunrays_spread',
    })

    local time_toggle = world_section:Toggle({
        name = 'time changer',
        value = false,
        callback = function(v)
            lib.Flags.world_time_enabled = v
        end,
        flag = 'world_time_enabled',
    })
    local time_popup = time_toggle:Popup({size = 250})

    time_popup:Slider({
        name = 'hour',
        value = 12,
        min = 0,
        max = 24,
        float = 1,
        callback = function(v)
            lib.Flags.world_time_hours = v
        end,
        flag = 'world_time_hours',
    })
    time_popup:Slider({
        name = 'minute',
        value = 0,
        min = 0,
        max = 59,
        float = 1,
        callback = function(v)
            lib.Flags.world_time_minutes = v
        end,
        flag = 'world_time_minutes',
    })

    local skybox_toggle = world_section:Toggle({
        name = 'skybox',
        value = false,
        callback = function(v)
            lib.Flags.world_skybox_enabled = v
        end,
        flag = 'world_skybox_enabled',
    })
    local skybox_popup = skybox_toggle:Popup({size = 250})

    skybox_popup:Dropdown({
        name = 'preset',
        values = world_skybox:getSkyboxList(),
        value = 'v1',
        callback = function(v)
            lib.Flags.world_skybox_preset = v
        end,
        flag = 'world_skybox_preset',
    })

    local fog_toggle = world_section:Toggle({
        name = 'fog',
        value = false,
        callback = function(v)
            lib.Flags.world_fog_enabled = v
        end,
        flag = 'world_fog_enabled',
    })
    local fog_popup = fog_toggle:Popup({size = 300})

    fog_popup:Colorpicker({
        name = 'color',
        value = Color3.fromRGB(191, 191, 191),
        callback = function(d)
            lib.Flags.world_fog_color_r = d.c.R
            lib.Flags.world_fog_color_g = d.c.G
            lib.Flags.world_fog_color_b = d.c.B
        end,
        flag = 'world_fog_color',
    })
    fog_popup:Slider({
        name = 'start',
        value = 0,
        min = 0,
        max = 1000,
        float = 1,
        callback = function(v)
            lib.Flags.world_fog_start = v
        end,
        flag = 'world_fog_start',
    })
    fog_popup:Slider({
        name = 'end',
        value = 100,
        min = 0,
        max = 1000,
        float = 1,
        callback = function(v)
            lib.Flags.world_fog_end = v
        end,
        flag = 'world_fog_end',
    })

    local ambient_toggle = world_section:Toggle({
        name = 'ambient',
        value = false,
        callback = function(v)
            lib.Flags.world_ambient_enabled = v
        end,
        flag = 'world_ambient_enabled',
    })
    local ambient_popup = ambient_toggle:Popup({size = 250})

    ambient_popup:Colorpicker({
        name = 'color',
        value = Color3.fromRGB(255, 255, 255),
        callback = function(d)
            lib.Flags.world_ambient_color = d.c
        end,
        flag = 'world_ambient_color',
    })

    local outdoor_ambient_toggle = world_section:Toggle({
        name = 'outdoor ambient',
        value = false,
        callback = function(v)
            lib.Flags.world_outdoor_ambient_enabled = v
        end,
        flag = 'world_outdoor_ambient_enabled',
    })
    local outdoor_ambient_popup = outdoor_ambient_toggle:Popup({size = 250})

    outdoor_ambient_popup:Colorpicker({
        name = 'color',
        value = Color3.fromRGB(255, 255, 255),
        callback = function(d)
            lib.Flags.world_outdoor_ambient_color = d.c
        end,
        flag = 'world_outdoor_ambient_color',
    })

    local bloom_toggle = world_section:Toggle({
        name = 'bloom',
        value = false,
        callback = function(v)
            lib.Flags.world_bloom_enabled = v
        end,
        flag = 'world_bloom_enabled',
    })
    local bloom_popup = bloom_toggle:Popup({size = 300})

    bloom_popup:Slider({
        name = 'intensity',
        value = 1,
        min = 0,
        max = 3,
        float = 0.01,
        callback = function(v)
            lib.Flags.world_bloom_intensity = v
        end,
        flag = 'world_bloom_intensity',
    })
    bloom_popup:Slider({
        name = 'size',
        value = 24,
        min = 0,
        max = 100,
        float = 1,
        callback = function(v)
            lib.Flags.world_bloom_size = v
        end,
        flag = 'world_bloom_size',
    })
    bloom_popup:Slider({
        name = 'threshold',
        value = 2,
        min = 0,
        max = 10,
        float = 0.1,
        callback = function(v)
            lib.Flags.world_bloom_threshold = v
        end,
        flag = 'world_bloom_threshold',
    })

    local character_section = visuals_tab:Section({
        name = 'character',
        description = 'changing your character bruh',
        side = 'right',
    })
    local self_chams_toggle = character_section:Toggle({
        name = 'self chams',
        value = false,
        callback = function(val)
            lib.Flags.self_chams_enabled = val

            self_chams:setEnabled(val)
        end,
        flag = 'self_chams_enabled',
    })
    local self_chams_popup = self_chams_toggle:Popup({size = 300})

    self_chams_popup:Colorpicker({
        name = 'color',
        value = Color3.fromRGB(155, 125, 175),
        alpha = 0,
        callback = function(d)
            lib.Flags.self_chams_color = d.c
            lib.Flags.self_chams_alpha = d.a

            self_chams:setColor(d.c)
            self_chams:setTransparency(d.a)
        end,
        flag = 'self_chams_color',
    })
    self_chams_popup:Slider({
        name = 'reflectance',
        value = 0,
        min = 0,
        max = 1,
        float = 0.01,
        callback = function(val)
            lib.Flags.self_chams_reflectance = val

            self_chams:setReflectance(val)
        end,
        flag = 'self_chams_reflectance',
    })
    self_chams_popup:Dropdown({
        name = 'material',
        values = {
            'Neon',
            'Glass',
            'ForceField',
        },
        value = 'ForceField',
        callback = function(val)
            lib.Flags.self_chams_material = val

            self_chams:setMaterial(val)
        end,
        flag = 'self_chams_material',
    })
    self_chams_popup:Dropdown({
        name = 'effect',
        values = {
            'none',
            'heat',
        },
        value = 'none',
        callback = function(val)
            lib.Flags.self_chams_effect = val

            self_chams:setEffect(val)
        end,
        flag = 'self_chams_effect',
    })

    local self_chams_add_toggle = self_chams_popup:Toggle({
        name = 'particles',
        value = false,
        callback = function(val)
            lib.Flags.self_chams_particles = val

            if val then
                self_chams:setAddEffect(lib.Flags.self_chams_add_type or 'stars')
            else
                self_chams:setAddEffect('none')
            end
        end,
        flag = 'self_chams_particles',
    })
    local self_chams_add_popup = self_chams_add_toggle:Popup({size = 250})

    self_chams_add_popup:Dropdown({
        name = 'type',
        values = {
            'stars',
            'particles',
        },
        value = 'stars',
        callback = function(val)
            lib.Flags.self_chams_add_type = val

            if lib.Flags.self_chams_particles then
                self_chams:setAddEffect(val)
            end
        end,
        flag = 'self_chams_add_type',
    })
    self_chams_add_popup:Colorpicker({
        name = 'color',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.self_chams_particle_color = d.c
            lib.Flags.self_chams_particle_alpha = d.a

            self_chams:setParticleColor(d.c)
            self_chams:setParticleTransparency(d.a)
        end,
        flag = 'self_chams_particle_color',
    })

    local tool_chams_toggle = character_section:Toggle({
        name = 'tool chams',
        value = false,
        callback = function(val)
            lib.Flags.tool_chams_enabled = val

            tool_chams:setEnabled(val)
        end,
        flag = 'tool_chams_enabled',
    })
    local tool_chams_popup = tool_chams_toggle:Popup({size = 300})

    tool_chams_popup:Colorpicker({
        name = 'color',
        value = Color3.fromRGB(155, 125, 175),
        alpha = 0,
        callback = function(d)
            lib.Flags.tool_chams_color = d.c
            lib.Flags.tool_chams_alpha = d.a

            tool_chams:setColor(d.c)
            tool_chams:setTransparency(d.a)
        end,
        flag = 'tool_chams_color',
    })
    tool_chams_popup:Slider({
        name = 'reflectance',
        value = 0,
        min = 0,
        max = 1,
        float = 0.01,
        callback = function(val)
            lib.Flags.tool_chams_reflectance = val

            tool_chams:setReflectance(val)
        end,
        flag = 'tool_chams_reflectance',
    })
    tool_chams_popup:Dropdown({
        name = 'material',
        values = {
            'Neon',
            'Glass',
            'ForceField',
        },
        value = 'ForceField',
        callback = function(val)
            lib.Flags.tool_chams_material = val

            tool_chams:setMaterial(val)
        end,
        flag = 'tool_chams_material',
    })

    local tool_chams_add_toggle = tool_chams_popup:Toggle({
        name = 'particles',
        value = false,
        callback = function(val)
            lib.Flags.tool_chams_particles = val

            if val then
                tool_chams:setAddEffect(lib.Flags.tool_chams_add_type or 'stars')
            else
                tool_chams:setAddEffect('none')
            end
        end,
        flag = 'tool_chams_particles',
    })
    local tool_chams_add_popup = tool_chams_add_toggle:Popup({size = 250})

    tool_chams_add_popup:Dropdown({
        name = 'type',
        values = {
            'stars',
            'particles',
        },
        value = 'stars',
        callback = function(val)
            lib.Flags.tool_chams_add_type = val

            if lib.Flags.tool_chams_particles then
                tool_chams:setAddEffect(val)
            end
        end,
        flag = 'tool_chams_add_type',
    })
    tool_chams_add_popup:Colorpicker({
        name = 'color',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.tool_chams_particle_color = d.c
            lib.Flags.tool_chams_particle_alpha = d.a

            tool_chams:setParticleColor(d.c)
            tool_chams:setParticleTransparency(d.a)
        end,
        flag = 'tool_chams_particle_color',
    })

    local self_highlight_toggle = character_section:Toggle({
        name = 'self highlight',
        value = false,
        callback = function(val)
            lib.Flags.self_highlight_enabled = val

            self_highlight:setEnabled(val)
        end,
        flag = 'self_highlight_enabled',
    })
    local self_highlight_popup = self_highlight_toggle:Popup({size = 250})

    self_highlight_popup:Colorpicker({
        name = 'fill color',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0.5,
        callback = function(d)
            lib.Flags.self_highlight_fill = d.c
            lib.Flags.self_highlight_fill_alpha = d.a

            self_highlight:setFillColor(d.c)
            self_highlight:setFillAlpha(d.a)
        end,
        flag = 'self_highlight_fill',
    })
    self_highlight_popup:Colorpicker({
        name = 'outline color',
        value = Color3.fromRGB(0, 0, 0),
        alpha = 0,
        callback = function(d)
            lib.Flags.self_highlight_outline = d.c
            lib.Flags.self_highlight_outline_alpha = d.a

            self_highlight:setOutlineColor(d.c)
            self_highlight:setOutlineAlpha(d.a)
        end,
        flag = 'self_highlight_outline',
    })

    local self_aura_toggle = character_section:Toggle({
        name = 'self aura',
        value = false,
        callback = function(val)
            lib.Flags.self_aura_enabled = val

            self_aura:setEnabled(val)
        end,
        flag = 'self_aura_enabled',
    })
    local self_aura_popup = self_aura_toggle:Popup({size = 300})

    self_aura_popup:Colorpicker({
        name = 'color',
        value = Color3.fromRGB(133, 220, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.self_aura_color = d.c

            self_aura:setAuraColor(d.c)
        end,
        flag = 'self_aura_color',
    })
    self_aura_popup:Dropdown({
        name = 'types',
        values = {
            'Angelic',
            'Ambient',
            'Nimb',
            'Tornado',
        },
        value = {},
        multi = true,
        callback = function(val)
            lib.Flags.self_aura_types = val

            self_aura:setAuraTypes(val)
        end,
        flag = 'self_aura_types',
    })

    local china_hat_toggle = character_section:Toggle({
        name = 'china hat',
        value = false,
        callback = function(val)
            lib.Flags.china_hat_enabled = val

            china_hat:setEnabled(val)
        end,
        flag = 'china_hat_enabled',
    })
    local china_hat_popup = china_hat_toggle:Popup({size = 350})

    china_hat_popup:Colorpicker({
        name = 'color 1',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.china_hat_c1 = d.c

            china_hat:setColor1(d.c)
        end,
        flag = 'china_hat_c1',
    })
    china_hat_popup:Colorpicker({
        name = 'color 2',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.china_hat_c2 = d.c

            china_hat:setColor2(d.c)
        end,
        flag = 'china_hat_c2',
    })
    china_hat_popup:Colorpicker({
        name = 'color 3',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.china_hat_c3 = d.c

            china_hat:setColor3(d.c)
        end,
        flag = 'china_hat_c3',
    })
    china_hat_popup:Colorpicker({
        name = 'color 4',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.china_hat_c4 = d.c

            china_hat:setColor4(d.c)
        end,
        flag = 'china_hat_c4',
    })
    china_hat_popup:Slider({
        name = 'height',
        value = 0.7,
        min = 0.1,
        max = 3,
        float = 0.1,
        callback = function(val)
            lib.Flags.china_hat_height = val

            china_hat:setHeight(val)
        end,
        flag = 'china_hat_height',
    })
    china_hat_popup:Slider({
        name = 'radius',
        value = 2,
        min = 0.5,
        max = 5,
        float = 0.1,
        callback = function(val)
            lib.Flags.china_hat_radius = val

            china_hat:setRadius(val)
        end,
        flag = 'china_hat_radius',
    })
    china_hat_popup:Slider({
        name = 'sides',
        value = 25,
        min = 3,
        max = 50,
        float = 1,
        callback = function(val)
            lib.Flags.china_hat_sides = val

            china_hat:setSides(val)
        end,
        flag = 'china_hat_sides',
    })
    china_hat_popup:Slider({
        name = 'hat transparency',
        value = 0.35,
        min = 0,
        max = 1,
        float = 0.01,
        callback = function(val)
            lib.Flags.china_hat_hat_trs = val

            china_hat:setHatTransparency(val)
        end,
        flag = 'china_hat_hat_trs',
    })
    china_hat_popup:Slider({
        name = 'line transparency',
        value = 1,
        min = 0,
        max = 1,
        float = 0.01,
        callback = function(val)
            lib.Flags.china_hat_line_trs = val

            china_hat:setLineTransparency(val)
        end,
        flag = 'china_hat_line_trs',
    })
    china_hat_popup:Slider({
        name = 'speed',
        value = 0.2,
        min = 0,
        max = 2,
        float = 0.01,
        callback = function(val)
            lib.Flags.china_hat_speed = val

            china_hat:setSpeed(val)
        end,
        flag = 'china_hat_speed',
    })
    china_hat_popup:Slider({
        name = 'offset y',
        value = 0.5,
        min = -2,
        max = 5,
        float = 0.1,
        callback = function(val)
            lib.Flags.china_hat_offset_y = val

            china_hat:setOffsetY(val)
        end,
        flag = 'china_hat_offset_y',
    })

    local other_section = visuals_tab:Section({
        name = 'other',
        description = 'misc visual stuff',
        side = 'left',
    })
    local grenade_esp_toggle = other_section:Toggle({
        name = 'grenade esp',
        value = false,
        callback = function(val)
            lib.Flags.grenade_esp_enabled = val

            grenade_esp:setEnabled(val)
        end,
        flag = 'grenade_esp_enabled',
    })
    local grenade_esp_popup = grenade_esp_toggle:Popup({size = 280})
    local grenade_circle_toggle = grenade_esp_popup:Toggle({
        name = 'circle',
        value = false,
        callback = function(val)
            lib.Flags.grenade_esp_circle = val

            grenade_esp:setCircle(val)
        end,
        flag = 'grenade_esp_circle',
    })
    local grenade_circle_popup = grenade_circle_toggle:Popup({size = 200})

    grenade_circle_popup:Slider({
        name = 'thickness',
        value = 1,
        min = 0.1,
        max = 5,
        float = 0.1,
        callback = function(val)
            lib.Flags.grenade_esp_circle_thickness = val

            grenade_esp:setCircleThickness(val)
        end,
        flag = 'grenade_esp_circle_thickness',
    })
    grenade_circle_popup:Colorpicker({
        name = 'color safe',
        value = Color3.fromRGB(0, 255, 0),
        alpha = 0,
        callback = function(d)
            lib.Flags.grenade_esp_color_safe = d.c

            grenade_esp:setColorSafe(d.c)
        end,
        flag = 'grenade_esp_color_safe',
    })
    grenade_circle_popup:Colorpicker({
        name = 'color danger',
        value = Color3.fromRGB(255, 0, 0),
        alpha = 0,
        callback = function(d)
            lib.Flags.grenade_esp_color_danger = d.c

            grenade_esp:setColorDanger(d.c)
        end,
        flag = 'grenade_esp_color_danger',
    })

    local grenade_indicator_toggle = grenade_esp_popup:Toggle({
        name = 'indicator',
        value = false,
        callback = function(val)
            lib.Flags.grenade_esp_indicator = val

            grenade_esp:setIndicator(val)
        end,
        flag = 'grenade_esp_indicator',
    })
    local grenade_indicator_popup = grenade_indicator_toggle:Popup({size = 200})

    grenade_indicator_popup:Slider({
        name = 'scale',
        value = 0.5,
        min = 0.1,
        max = 1,
        float = 0.1,
        callback = function(val)
            lib.Flags.grenade_esp_indicator_scale = val

            grenade_esp:setIndicatorScale(val)
        end,
        flag = 'grenade_esp_indicator_scale',
    })

    local rpg_esp_toggle = other_section:Toggle({
        name = 'rpg esp',
        value = false,
        callback = function(val)
            lib.Flags.rpg_esp_enabled = val

            rpg_esp:setEnabled(val)
        end,
        flag = 'rpg_esp_enabled',
    })
    local rpg_esp_popup = rpg_esp_toggle:Popup({size = 280})
    local rpg_circle_toggle = rpg_esp_popup:Toggle({
        name = 'circle',
        value = false,
        callback = function(val)
            lib.Flags.rpg_esp_circle = val

            rpg_esp:setCircle(val)
        end,
        flag = 'rpg_esp_circle',
    })
    local rpg_circle_popup = rpg_circle_toggle:Popup({size = 200})

    rpg_circle_popup:Slider({
        name = 'thickness',
        value = 1,
        min = 0.1,
        max = 5,
        float = 0.1,
        callback = function(val)
            lib.Flags.rpg_esp_circle_thickness = val

            rpg_esp:setCircleThickness(val)
        end,
        flag = 'rpg_esp_circle_thickness',
    })
    rpg_circle_popup:Colorpicker({
        name = 'color safe',
        value = Color3.fromRGB(0, 255, 0),
        alpha = 0,
        callback = function(d)
            lib.Flags.rpg_esp_color_safe = d.c

            rpg_esp:setColorSafe(d.c)
        end,
        flag = 'rpg_esp_color_safe',
    })
    rpg_circle_popup:Colorpicker({
        name = 'color danger',
        value = Color3.fromRGB(255, 0, 0),
        alpha = 0,
        callback = function(d)
            lib.Flags.rpg_esp_color_danger = d.c

            rpg_esp:setColorDanger(d.c)
        end,
        flag = 'rpg_esp_color_danger',
    })

    local rpg_indicator_toggle = rpg_esp_popup:Toggle({
        name = 'indicator',
        value = false,
        callback = function(val)
            lib.Flags.rpg_esp_indicator = val

            rpg_esp:setIndicator(val)
        end,
        flag = 'rpg_esp_indicator',
    })
    local rpg_indicator_popup = rpg_indicator_toggle:Popup({size = 200})

    rpg_indicator_popup:Slider({
        name = 'scale',
        value = 0.5,
        min = 0.1,
        max = 1,
        float = 0.1,
        callback = function(val)
            lib.Flags.rpg_esp_indicator_scale = val

            rpg_esp:setIndicatorScale(val)
        end,
        flag = 'rpg_esp_indicator_scale',
    })

    local image_changer_toggle = other_section:Toggle({
        name = 'image changer',
        value = false,
        callback = function(val)
            lib.Flags.image_changer_enabled = val

            image_changer:setEnabled(val)
        end,
        flag = 'image_changer_enabled',
    })
    local image_changer_popup = image_changer_toggle:Popup({size = 250})

    image_changer_popup:Dropdown({
        name = 'damage indicator',
        values = {
            'normal',
            'peter',
            'jumpscare',
        },
        value = 'normal',
        callback = function(val)
            lib.Flags.image_changer_damage = val

            image_changer:setDamageIndicator(val)
        end,
        flag = 'image_changer_damage',
    })
    image_changer_popup:Dropdown({
        name = 'ammo image',
        values = {
            'normal',
            'peter',
            'jumpscare',
            'bullet2',
        },
        value = 'normal',
        callback = function(val)
            lib.Flags.image_changer_ammo = val

            image_changer:setAmmoImage(val)
        end,
        flag = 'image_changer_ammo',
    })
    image_changer_popup:Dropdown({
        name = 'shoot indicator',
        values = {
            'normal',
            'peter',
            'jumpscare',
        },
        value = 'normal',
        callback = function(val)
            lib.Flags.image_changer_shoot = val

            image_changer:setShootIndicator(val)
        end,
        flag = 'image_changer_shoot',
    })
    other_section:Toggle({
        name = 'minecraft texture',
        value = false,
        callback = function(val)
            lib.Flags.texture_changer_enabled = val

            texture_changer:setEnabled(val)
        end,
        flag = 'texture_changer_enabled',
    })
    hit_detection:setEnabled(true)
    hit_detection:onHit(function(target, part)
        hit_effects:onHit(target)
    end)

    local bullet_tracers_toggle = other_section:Toggle({
        name = 'bullet tracers',
        value = false,
        callback = function(val)
            lib.Flags.bullet_tracers_enabled = val

            bullet_tracers:setEnabled(val)
        end,
        flag = 'bullet_tracers_enabled',
    })
    local bullet_tracers_popup = bullet_tracers_toggle:Popup({size = 300})

    bullet_tracers_popup:Dropdown({
        name = 'mode',
        values = {
            'beam',
            'drawing',
        },
        value = 'beam',
        callback = function(val)
            lib.Flags.bullet_tracers_mode = val

            bullet_tracers:setMode(val)
        end,
        flag = 'bullet_tracers_mode',
    })
    bullet_tracers_popup:Dropdown({
        name = 'texture',
        values = {
            'beam',
            'lightning',
            'heartrate',
            'chain',
            'glitch',
            'swirl',
        },
        value = 'beam',
        callback = function(val)
            lib.Flags.bullet_tracers_texture = val

            bullet_tracers:setTexture(val)
        end,
        flag = 'bullet_tracers_texture',
    })
    bullet_tracers_popup:Colorpicker({
        name = 'color',
        value = Color3.fromRGB(255, 255, 255),
        alpha = 0,
        callback = function(d)
            lib.Flags.bullet_tracers_color = d.c

            bullet_tracers:setColor(d.c)
        end,
        flag = 'bullet_tracers_color',
    })
    bullet_tracers_popup:Slider({
        name = 'size',
        value = 1,
        min = 0.1,
        max = 5,
        float = 0.1,
        suffix = '%.1f',
        callback = function(val)
            lib.Flags.bullet_tracers_size = val

            bullet_tracers:setSize(val)
        end,
        flag = 'bullet_tracers_size',
    })
    bullet_tracers_popup:Slider({
        name = 'lifetime',
        value = 1,
        min = 0.1,
        max = 5,
        float = 0.1,
        suffix = '%.1fs',
        callback = function(val)
            lib.Flags.bullet_tracers_lifetime = val

            bullet_tracers:setLifetime(val)
        end,
        flag = 'bullet_tracers_lifetime',
    })
    bullet_tracers_popup:Toggle({
        name = 'outline',
        value = false,
        callback = function(val)
            lib.Flags.bullet_tracers_outline = val

            bullet_tracers:setOutline(val)
        end,
        flag = 'bullet_tracers_outline',
    })
    hit_detection:onShot(function(startPos, endPos)
        bullet_tracers:create(startPos, endPos)
    end)

    local hit_chams_toggle = other_section:Toggle({
        name = 'hit chams',
        value = false,
        callback = function(val)
            lib.Flags.hit_chams_enabled = val

            hit_effects:setChamsEnabled(val)
        end,
        flag = 'hit_chams_enabled',
    })
    local hit_chams_popup = hit_chams_toggle:Popup({size = 250})

    hit_chams_popup:Colorpicker({
        name = 'color',
        value = Color3.fromRGB(255, 0, 0),
        alpha = 0.5,
        callback = function(d)
            lib.Flags.hit_chams_color = d.c
            lib.Flags.hit_chams_alpha = d.a

            hit_effects:setChamsColor(d.c)
            hit_effects:setChamsTransparency(d.a)
        end,
        flag = 'hit_chams_color',
    })
    hit_chams_popup:Dropdown({
        name = 'material',
        values = {
            'Neon',
            'ForceField',
            'Glass',
            'Plastic',
            'Metal',
            'Concrete',
        },
        value = 'Neon',
        callback = function(val)
            lib.Flags.hit_chams_material = val

            hit_effects:setChamsMaterial(val)
        end,
        flag = 'hit_chams_material',
    })
    hit_chams_popup:Slider({
        name = 'duration',
        value = 2,
        min = 1,
        max = 10,
        float = 0.1,
        suffix = 's',
        callback = function(val)
            lib.Flags.hit_chams_duration = val

            hit_effects:setChamsDuration(val)
        end,
        flag = 'hit_chams_duration',
    })

    local hit_sounds_toggle = other_section:Toggle({
        name = 'hit sounds',
        value = false,
        callback = function(val)
            lib.Flags.hit_sounds_enabled = val

            hit_effects:setSoundsEnabled(val)
        end,
        flag = 'hit_sounds_enabled',
    })
    local hit_sounds_popup = hit_sounds_toggle:Popup({size = 250})
    local soundsPath = lib.Folders.GetPath('Sounds')

    local function getSoundList()
        local sounds = {}

        if isfolder(soundsPath) and listfiles then
            for _, f in pairs(listfiles(soundsPath))do
                if f:match('%.wav$') or f:match('%.mp3$') or f:match('%.ogg$') then
                    local n = f:match('([^\\/]+)%.%w+$')

                    if n then
                        table.insert(sounds, n)
                    end
                end
            end
        end

        return #sounds > 0 and sounds or {
            '1',
        }
    end

    local hit_sounds_dd = hit_sounds_popup:Dropdown({
        name = 'sound',
        values = getSoundList(),
        value = getSoundList()[1] or '1',
        callback = function(val)
            lib.Flags.hit_sounds_selection = val

            hit_effects:setSoundSelection(val)
        end,
        flag = 'hit_sounds_selection',
    })

    hit_sounds_popup:Button({
        name = 'refresh list',
        callback = function()
            if hit_sounds_dd and hit_sounds_dd.Refresh then
                hit_sounds_dd.Refresh(getSoundList())
            end
        end,
    })
    hit_sounds_popup:Slider({
        name = 'volume',
        value = 5,
        min = 1,
        max = 10,
        float = 0.1,
        suffix = '%.1f',
        callback = function(val)
            lib.Flags.hit_sounds_volume = val

            hit_effects:setSoundVolume(val)
        end,
        flag = 'hit_sounds_volume',
    })
    hit_sounds_popup:Slider({
        name = 'pitch',
        value = 1,
        min = 0,
        max = 3,
        float = 0.1,
        suffix = '%.1fx',
        callback = function(val)
            lib.Flags.hit_sounds_pitch = val

            hit_effects:setSoundPitch(val)
        end,
        flag = 'hit_sounds_pitch',
    })

    local hit_effects_toggle = other_section:Toggle({
        name = 'hit effects',
        value = false,
        callback = function(val)
            lib.Flags.hit_particles_enabled = val

            hit_effects:setEffectsEnabled(val)
        end,
        flag = 'hit_particles_enabled',
    })
    local hit_particles_popup = hit_effects_toggle:Popup({size = 250})

    hit_particles_popup:Dropdown({
        name = 'effect type',
        values = {
            'Particle',
            'Blood',
            'Light',
            'Lightning',
            'BlackFlash',
            'Gravity',
            'Meteor',
        },
        value = 'Particle',
        callback = function(val)
            lib.Flags.hit_particles_type = val

            hit_effects:setEffectsType(val)
        end,
        flag = 'hit_particles_type',
    })
    hit_particles_popup:Colorpicker({
        name = 'color',
        value = Color3.fromRGB(255, 255, 255),
        callback = function(d)
            lib.Flags.hit_particles_color = d.c

            hit_effects:setEffectsColor(d.c)
        end,
        flag = 'hit_particles_color',
    })

    local hit_screen_toggle = other_section:Toggle({
        name = 'hit screen',
        value = false,
        callback = function(val)
            lib.Flags.hit_screen_enabled = val

            hit_effects:setScreenEnabled(val)
        end,
        flag = 'hit_screen_enabled',
    })
    local hit_screen_popup = hit_screen_toggle:Popup({size = 250})

    hit_screen_popup:Colorpicker({
        name = 'color',
        value = Color3.fromRGB(255, 0, 0),
        alpha = 0,
        callback = function(d)
            lib.Flags.hit_screen_color = d.c
            lib.Flags.hit_screen_alpha = d.a

            hit_effects:setScreenColor(d.c)
            hit_effects:setScreenTransparency(d.a)
        end,
        flag = 'hit_screen_color',
    })
    hit_screen_popup:Slider({
        name = 'duration',
        value = 0.5,
        min = 0.1,
        max = 3,
        float = 0.1,
        suffix = '%.1fs',
        callback = function(val)
            lib.Flags.hit_screen_duration = val

            hit_effects:setScreenDuration(val)
        end,
        flag = 'hit_screen_duration',
    })

    local hit_notify_toggle = other_section:Toggle({
        name = 'hit notify',
        value = false,
        callback = function(val)
            lib.Flags.hit_notify_enabled = val
        end,
        flag = 'hit_notify_enabled',
    })
    local hit_notify_popup = hit_notify_toggle:Popup({size = 300})

    hit_notify_popup:Toggle({
        name = 'custom text',
        value = false,
        callback = function(val)
            lib.Flags.hit_notify_custom = val
        end,
        flag = 'hit_notify_custom',
    })
    hit_notify_popup:Label({
        name = 
[[syntax: {hitdmg} {localgun} {targetlasthp} {hitpart} {targetname} {targetdisplayname}]],
    })
    hit_notify_popup:Textbox({
        name = 'message',
        value = 'Hit {targetname} for {hitdmg} damage',
        placeholder = 'custom message...',
        callback = function(val)
            lib.Flags.hit_notify_message = val
        end,
        flag = 'hit_notify_message',
    })

    local hitBatch = {
        queue = {},
        lastNotify = 0,
        batchTime = 0.1,
    }

    hit_detection:onHitNotify(function(hitData)
        if not lib.Flags.hit_notify_enabled then
            return
        end

        table.insert(hitBatch.queue, hitData)

        local now = tick()

        if now - hitBatch.lastNotify >= hitBatch.batchTime then
            hitBatch.lastNotify = now

            local totalDmg = 0
            local targets = {}

            for _, data in ipairs(hitBatch.queue)do
                totalDmg = totalDmg + data.hitdmg

                if not table.find(targets, data.targetname) then
                    table.insert(targets, data.targetname)
                end
            end

            local lastHit = hitBatch.queue[#hitBatch.queue]
            local msg = 'Hit ' .. lastHit.targetname .. ' for ' .. totalDmg .. ' damage'

            if lib.Flags.hit_notify_custom and lib.Flags.hit_notify_message then
                msg = lib.Flags.hit_notify_message
                msg = msg:gsub('{hitdmg}', tostring(totalDmg))
                msg = msg:gsub('{localgun}', lastHit.localgun)
                msg = msg:gsub('{targetlasthp}', tostring(lastHit.targetlasthp))
                msg = msg:gsub('{hitpart}', lastHit.hitpart)
                msg = msg:gsub('{targetname}', lastHit.targetname)
                msg = msg:gsub('{targetdisplayname}', lastHit.targetdisplayname)
            end

            lib.Notification({
                name = 'Hit',
                description = msg,
                type = 'Time',
                time = 3,
            })

            hitBatch.queue = {}
        end
    end)
end

pcall(function()
    setfflag('S2PhysicsSenderRate', '1')
end)
pcall(function()
    setfflag('PhysicsSenderMaxBandwidthBps', '999999')
end)
loopManager:AddHeartbeat('world_visuals', function()
    world_colors:update()
    world_sunrays:update()
    world_time:update()
    world_skybox:update()
    world_fog:update()
    world_lighting_colors:update()
    world_bloom:update()
end)

local watermarkObj = lib.Watermark({
    text = 'symbol | {fps}',
    visible = false,
    rate = 0.2,
})

watermarkObj.SetRate(0.2)

lib.Flags.watermark_enabled = false
lib.Flags.watermark_types = {
    'fps',
}
lib.Flags.watermark_rate = 200

do
    local st = win:Tab({
        name = 'settings',
        icon = v.icons.settings,
    })
    local cs = st:Section({
        name = 'configs',
        description = 'save / load / delete',
        side = 'left',
    })
    local ts = st:Section({
        name = 'theme',
        description = 'customize colors',
        side = 'right',
    })

    cs:Textbox({
        name = 'config name',
        value = '',
        placeholder = 'config name...',
        flag = 'config_name',
    })

    local cfgPath = 'Sakura\\Configs'

    local function getCfgList()
        local cfg = {}

        if isfolder(cfgPath) then
            for _, f in pairs(listfiles(cfgPath))do
                if f:match('%.json$') then
                    local n = f:match('([^\\/]+)%.json$')

                    if n then
                        table.insert(cfg, n)
                    end
                end
            end
        end

        return #cfg > 0 and cfg or {
            'no configs',
        }
    end

    local dd = cs:Dropdown({
        name = 'configs',
        values = getCfgList(),
        value = getCfgList()[1] or 'no configs',
        callback = function(value) end,
        flag = 'selected_config',
    })

    local function cfgOp(op)
        local flag = (op == 'load' or op == 'del' or op == 'ovr') and 'selected_config' or 'config_name'
        local nm = lib.Flags[flag]

        if not nm or nm == '' or nm == 'no configs' then
            return
        end
        if not isfolder(cfgPath) then
            makefolder(cfgPath)
        end

        local p = cfgPath .. '\\' .. nm .. '.json'

        if op == 'save' or op == 'ovr' then
            local s, d = pcall(function()
                return lib.GetConfig()
            end)

            if s and d then
                writefile(p, d)

                if dd and dd.Refresh then
                    dd.Refresh(getCfgList())
                end
            end
        elseif op == 'load' then
            if isfile(p) then
                local s, d = pcall(function()
                    return readfile(p)
                end)

                if s and d then
                    pcall(function()
                        lib.LoadConfig(d)
                    end)
                end
            end
        elseif op == 'del' then
            if isfile(p) then
                pcall(function()
                    delfile(p)
                end)

                if dd and dd.Refresh then
                    dd.Refresh(getCfgList())
                end
            end
        end
    end

    cs:Button({
        name = 'save',
        callback = function()
            cfgOp('save')
        end,
    })
    cs:Button({
        name = 'load',
        callback = function()
            cfgOp('load')
        end,
    })
    cs:Button({
        name = 'overwrite',
        callback = function()
            cfgOp('ovr')
        end,
    })
    cs:Button({
        name = 'delete',
        callback = function()
            cfgOp('del')
        end,
    })
    cs:Button({
        name = 'refresh list',
        callback = function()
            if dd and dd.Refresh then
                dd.Refresh(getCfgList())
            end
        end,
    })

    local watermarkToggle = ts:Toggle({
        name = 'watermark',
        value = lib.Flags.watermark_enabled,
        callback = function(v)
            watermarkObj.SetVisible(v)
        end,
        flag = 'watermark_enabled',
    })
    local watermarkPopup = watermarkToggle:Popup({size = 200})

    local function updateWatermark()
        local text = 'symbol'
        local types = lib.Flags.watermark_types

        if types and #types > 0 then
            for _, v in ipairs(types)do
                text = text .. ' | {' .. v .. '}'
            end
        end

        watermarkObj.SetText(text)
    end

    watermarkPopup:Slider({
        name = 'update rate',
        value = 200,
        min = 0,
        max = 1000,
        float = 1,
        suffix = '%s ms',
        callback = function(v)
            lib.Flags.watermark_rate = v

            watermarkObj.SetRate(v / 1000)
        end,
        flag = 'watermark_rate',
    })
    watermarkPopup:Dropdown({
        name = 'info types',
        values = {
            'fps',
            'ping',
            'time',
            'date',
            'hour',
            'minute',
            'second',
            'ap',
            'month',
            'day',
            'year',
            'game',
            'n',
        },
        value = {
            'fps',
        },
        multi = true,
        callback = function(v)
            lib.Flags.watermark_types = v

            updateWatermark()
        end,
        flag = 'watermark_types',
    })
    ts:Keybind({
        name = 'menu toggle',
        key = Enum.KeyCode.RightControl,
        mode = 'Toggle',
        callback = function(v)
            if win and win.Open then
                win:Open()
            end
        end,
        flag = 'menu_keybind',
    })

    do
        for theme, color in pairs(lib.Theme)do
            ts:Colorpicker({
                name = theme:lower(),
                value = color,
                alpha = 0,
                callback = function(d)
                    lib.UpdateTheme(theme, d.c)
                end,
                flag = 'theme_' .. theme:lower():gsub(' ', '_'),
            })
        end
    end

    local gs = st:Section({
        name = 'game panel',
        description = 'usefull utilities',
        side = 'right',
    })

    gs:Button({
        name = 'copy jobid',
        callback = function()
            setclipboard(game.JobId)
        end,
    })
    gs:Button({
        name = 'copy gameid',
        callback = function()
            setclipboard(tostring(game.GameId))
        end,
    })
    gs:Button({
        name = 'copy join script',
        callback = function()
            setclipboard('game:GetService("TeleportService"):TeleportToPlaceInstance(' .. game.PlaceId .. ',"' .. game.JobId .. '",game.Players.LocalPlayer)')
        end,
    })
    gs:Button({
        name = 'rejoin',
        callback = function()
            tps:TeleportToPlaceInstance(game.PlaceId, game.JobId, lp)
        end,
    })
    gs:Button({
        name = 'join new server',
        callback = function()
            local min, max = lib.Flags['srv_min'], lib.Flags['srv_max']
            local s, d = pcall(function()
                return http:JSONDecode(game:HttpGetAsync('https://games.roblox.com/v1/games/' .. game.PlaceId .. '/servers/Public?sortOrder=Asc&limit=100'))
            end)

            if not s then
                return
            end

            local valid = {}

            for _, srv in pairs(d.data)do
                if srv.playing >= min and srv.playing <= max then
                    table.insert(valid, srv)
                end
            end

            if #valid > 0 then
                tps:TeleportToPlaceInstance(game.PlaceId, valid[math.random(1, #valid)].id, lp)
            end
        end,
    })
    gs:Slider({
        name = 'min players',
        value = 1,
        min = 1,
        max = 30,
        float = 1,
        callback = function() end,
        flag = 'srv_min',
    })
    gs:Slider({
        name = 'max players',
        value = 15,
        min = 1,
        max = 30,
        float = 1,
        callback = function() end,
        flag = 'srv_max',
    })
end

pcall(function()
    setfflag('S2PhysicsSenderRate', '1')
end)
pcall(function()
    setfflag('PhysicsSenderMaxBandwidthBps', '999999')
end)
lib.Notification({
    name = 'alex541',
    description = 'hello, Sakura is loaded',
    type = 'Time',
    time = 5,
})
