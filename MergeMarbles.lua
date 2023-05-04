local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
    Name = "PapHaxx",
    LoadingTitle = "Loading...",
    LoadingSubtitle = "by papi",
    ConfigurationSaving = {
       Enabled = true,
       FolderName = nil, -- Create a custom folder for your hub/game
       FileName = "PappHaxxs"
    },
    Discord = {
       Enabled = false,
       Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
       RememberJoins = true -- Set this to false to make them join the discord every time they load it up
    },
    KeySystem = false, -- Set this to true to use our key system
    KeySettings = {
       Title = "Untitled",
       Subtitle = "Key System",
       Note = "No method of obtaining the key is provided",
       FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
       SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
       GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
       Key = {"Hello"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
    }
 })

 local bb = game:service "VirtualUser"
local plr = game.Players.LocalPlayer
local char = plr.Character
local cframe = char.HumanoidRootPart.CFrame

 local Tab = Window:CreateTab("Main", 4483362458) -- Title, Image

 local Section = Tab:CreateSection("Main")

 local Tabgay = Window:CreateTab("Teleports", 4483362458) -- Title, Image

 local Sectiongay = Tabgay:CreateSection("Teleports")

 local Tab1 = Window:CreateTab("Player", 4483362458) -- Title, Image

 local Section1 = Tab1:CreateSection("Player")

 local Tab2 = Window:CreateTab("Settings", 4483362458) -- Title, Image

 local Section2 = Tab2:CreateSection("Settings")

 local Button = Tab2:CreateButton({
    Name = "Destroy UI",
    Callback = function()
        Rayfield:Destroy()
    end,
 })

 local Player = game:GetService("Players").LocalPlayer
 local Plr = game:GetService("Players").LocalPlayer
 local Mouse = Player:GetMouse()
 local acmtogel = false
 local adm = false
 local guy = true
 local sex = false
 local inf = false
 local Clippon = false
 local antadk = false
 local usedbefore = false
 local speedbypass = false
 local gays = game:GetService("Workspace").Tycoons[plr.Name.. "_tycoon"]:FindFirstChild("SellButton")["2"].CFrame


 local Button = Tab:CreateButton({
    Name = "Collect marbles",
    Callback = function()
        for i,v in pairs(game:GetService("Workspace").Tycoons[plr.Name.. "_tycoon"].Marbles:GetChildren()) do
            v.CanCollide = false
            v.CFrame = char.HumanoidRootPart.CFrame
        end
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Deposit marbles",
    Callback = function()
        local cframe = char.HumanoidRootPart.CFrame
                if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Frame.MarblesFrame.TextLabel.Text > "0" then
                    print("oldi")
                    char.HumanoidRootPart.CFrame = gays
                    wait(0.5)
                    char.HumanoidRootPart.CFrame = cframe
                    guy = false
                    wait(1)
                    guy = true
                else

                end
    end,
 })

 local Button = Tab:CreateButton({
    Name = "Merge",
    Callback = function()
        local cframe = char.HumanoidRootPart.CFrame
        char.HumanoidRootPart.CFrame = game:GetService("Workspace").Tycoons[plr.Name.. "_tycoon"].MergeButton["2"].CFrame
        wait(0.5)
        char.HumanoidRootPart.CFrame = cframe
    end,
 })

 local Togglegay = Tab1:CreateToggle({
    Name = "Bypass Speed",
    CurrentValue = false,
    Flag = "acm", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        speedbypass = Value
    end,
 })

 local Button = Tab1:CreateButton({
    Name = "Reset WS",
    Callback = function()
        Togglegay:Set(false)
        speedbypass = false
    end,
 })

 local Toggle = Tab:CreateToggle({
    Name = "Auto collect marbles",
    CurrentValue = false,
    Flag = "acm", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        acmtogel = Value
        while wait() do
            if acmtogel then
                char.HumanoidRootPart.CanCollide = false
                for i,v in pairs(game:GetService("Workspace").Tycoons[plr.Name.. "_tycoon"].Marbles:GetChildren()) do
                    v.CanCollide = false
                    v.CFrame = char.HumanoidRootPart.CFrame
                end
            else
                char.HumanoidRootPart.CanCollide = true
                break
            end
        end
    end,
 })
 local Toggle = Tab:CreateToggle({
    Name = "Auto deposit marbles",
    CurrentValue = false,
    Flag = "acm", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        adm = Value
        if usedbefore == false then
            Rayfield:Notify({
                Title = "Auto deposit marbles",
                Content = "Use noclip.",
                Duration = 6.5,
                Image = 4483362458,
                Actions = { -- Notification Buttons
                   Ignore = {
                      Name = "Okay!",
                      Callback = function()
                      print("The user tapped Okay!")
                   end
                },
             },
             })
        end
        usedbefore = true
        while wait() do
            if adm and guy then
                local cframe = char.HumanoidRootPart.CFrame
                if game:GetService("Players").LocalPlayer.PlayerGui.ScreenGui.Frame.MarblesFrame.TextLabel.Text > "0" then
                    print("oldi")
                    char.HumanoidRootPart.CFrame = gays
                    wait(0.5)
                    char.HumanoidRootPart.CFrame = cframe
                    guy = false
                    wait(1)
                    guy = true
                else

                end
            else
                break
            end
        end
    end,
 })

 local Slider = Tab1:CreateSlider({
    Name = "Walkspeed",
    Range = {16, 500},
    Increment = 1,
    Suffix = "",
    CurrentValue = 16,
    Flag = "WS", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        char.Humanoid.WalkSpeed = Value
        while wait() do
            if speedbypass then
                char.Humanoid.WalkSpeed = Value
            else
                break
            end
        end
    end,
 })

 local Slider = Tab1:CreateSlider({
    Name = "JumpPower",
    Range = {16, 500},
    Increment = 1,
    Suffix = "",
    CurrentValue = 16,
    Flag = "WS", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        char.Humanoid.JumpPower = Value
    end,
 })

 local Toggle = Tab1:CreateToggle({
    Name = "Inf jump",
    CurrentValue = false,
    Flag = "acmalik", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        inf = Value
    end,
 })

 local Toggle = Tab1:CreateToggle({
    Name = "Noclip",
    CurrentValue = false,
    Flag = "acmalikc", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        Clippon = Value
        Stepped = game:GetService("RunService").Stepped:Connect(function()
            if Clippon then
                for a, b in pairs(Workspace:GetChildren()) do
                if b.Name == Plr.Name then
                for i, v in pairs(Workspace[Plr.Name]:GetChildren()) do
                if v:IsA("BasePart") then
                v.CanCollide = false
                end end end end
            else
                Stepped:Disconnect()
            end
        end)
    end,
 })

 local Toggle = Tab1:CreateToggle({
    Name = "Anti Afk",
    CurrentValue = false,
    Flag = "aa", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
    Callback = function(Value)
        antadk = Value
    end,
 })

 local Button = Tabgay:CreateButton({
    Name = "Base",
    Callback = function()
        char.HumanoidRootPart.CFrame = game:GetService("Workspace").Tycoons[plr.Name.. "_tycoon"].Main.CFrame
    end,
 })

 local Button = Tabgay:CreateButton({
    Name = "Obbys",
    Callback = function()
        char.HumanoidRootPart.CFrame = game:GetService("Workspace").Obby.Obbys.Hard.Portl.CFrame
    end,
 })

 local Button = Tabgay:CreateButton({
    Name = "Easy obby end",
    Callback = function()
        char.HumanoidRootPart.CFrame = game:GetService("Workspace").Obby.Obbys.Easy.Collect.Touch.CFrame
    end,
 })

 local Button = Tabgay:CreateButton({
    Name = "Hard obby end",
    Callback = function()
        char.HumanoidRootPart.CFrame = game:GetService("Workspace").Obby.Obbys.Hard.Collect.Touch.CFrame
    end,
 })

 local Button = Tabgay:CreateButton({
    Name = "Insane obby end",
    Callback = function()
        char.HumanoidRootPart.CFrame = game:GetService("Workspace").Obby.Obbys.Insane.Collect.Touch.CFrame
    end,
 })

 game:GetService("Players").LocalPlayer.Idled:Connect(function()
    if antadk then
        bb:CaptureController()
        bb:ClickButton2(Vector2.new())
    end
 end)

 Mouse.KeyDown:connect(function(k)
    if inf then
        if k:byte() == 32 then
            Humanoid = game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid")
            Humanoid:ChangeState("Jumping")
            wait(0.1)
            Humanoid:ChangeState("Seated")
        end
    end
end)
