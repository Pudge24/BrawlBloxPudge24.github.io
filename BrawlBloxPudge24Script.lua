local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()

local Window = Rayfield:CreateWindow({
   Name = "🔥 Brawl Blox Ultra Script Pudge24 🔫",
   LoadingTitle = "Denis Tennis Skibidi Penis",
   LoadingSubtitle = "by pudgo24",
   ConfigurationSaving = {
      Enabled = false,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Example Hub"
   },
   Discord = {
      Enabled = true,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
   KeySettings = {
      Title = "Key |  Brawlo Starso",
      Subtitle = "Key System",
      Note = "dc183y8t6W (Password in pastebin)",
      FileName = "YoutubeHubKey1", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"123456tururthursthserazwszerseasazassaaaaaaaaaaaaaaaHHHHHHHsd"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local MainTab = Window:CreateTab("🏠 Home", nil) -- Title, Image
local MainSection = MainTab:CreateSection("Main")

Rayfield:Notify({
   Title = "You executed the script",
   Content = "Very cool gui",
   Duration = 5,
   Image = nil,
   Actions = { -- Notification Buttons
      Ignore = {
         Name = "Okay!",
         Callback = function()
         print("Executed")
      end
   },
},
})

local Button = MainTab:CreateButton({
   Name = "Infinite Jump Toggle",
   Callback = function()
       --Toggles the infinite jump between on or off on every script run
_G.infinjump = not _G.infinjump

if _G.infinJumpStarted == nil then
	--Ensures this only runs once to save resources
	_G.infinJumpStarted = true
	
	--Notifies readiness
	game.StarterGui:SetCore("SendNotification", {Title="Youtube Hub"; Text="Infinite Jump Activated!"; Duration=5;})

	--The actual infinite jump
	local plr = game:GetService('Players').LocalPlayer
	local m = plr:GetMouse()
	m.KeyDown:connect(function(k)
		if _G.infinjump then
			if k:byte() == 32 then
			humanoid = game:GetService'Players'.LocalPlayer.Character:FindFirstChildOfClass('Humanoid')
			humanoid:ChangeState('Jumping')
			wait()
			humanoid:ChangeState('Seated')
			end
		end
	end)
end
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "WalkSpeed Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderws", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Value)
   end,
})

local Slider = MainTab:CreateSlider({
   Name = "JumpPower Slider",
   Range = {1, 350},
   Increment = 1,
   Suffix = "Speed",
   CurrentValue = 16,
   Flag = "sliderjp", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = (Value)
   end,
})


local Input = MainTab:CreateInput({
   Name = "Walkspeed",
   PlaceholderText = "1-500",
   RemoveTextAfterFocusLost = true,
   Callback = function(Text)
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (Text)
   end,
})

local Button = MainTab:CreateButton({
   Name = "Reset Speed",
   Callback = function()
   game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = (32)
   end,
})

local Button = MainTab:CreateButton({
   Name = "Reset Jump Power",
   Callback = function()
   game.Players.LocalPlayer.Character.Humanoid.JumpPower = (50)
   end,
})

local Toggle = MainTab:CreateToggle({
   Name = "Loop WalkSpeed",
   CurrentValue = false,
   Flag = "toggle4",
   Callback = function(CurrentValue)
      if CurrentValue then
         -- Start the loop
         _G.loop4 = true
         while _G.loop4 do
            game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 350
            wait(0.1) -- Adjust the wait time as needed
         end
      else
         -- Stop the loop
         _G.loop4 = false
      end
   end,
})

local Toggle = MainTab:CreateToggle({
   Name = "Loop JumpPower",
   CurrentValue = false,
   Flag = "Toggle2",
   Callback = function(CurrentValue)
      if CurrentValue then
         -- Start the loop
         _G.loop3 = true
         while _G.loop do
            game.Players.LocalPlayer.Character.Humanoid.JumpPower = 125
            wait(0.1) -- Adjust the wait time as needed
         end
      else
         -- Stop the loop
         _G.loop3 = false
      end
   end,
})

    

local OtherSection = MainTab:CreateSection("Other")




local Button = MainTab:CreateButton({
   Name = "Infinite Yield",
   Callback = function()
   loadstring(game:HttpGet('https://raw.githubusercontent.com/EdgeIY/infiniteyield/master/source'))()
   end,
})

local TPTab = Window:CreateTab("ESP 😮", nil) -- Title, Image

local Button = TPTab:CreateButton({
   Name = "ESP (You cant off this)",
   Callback = function()
--[[
	WARNING: Heads up! This script has not been verified by ScriptBlox. Use at your own risk!
]]
local ESP = loadstring(game:HttpGet("https://raw.githubusercontent.com/linemaster2/esp-library/main/library.lua"))();

--// Master switch
ESP.Enabled = true;

--// Enable boxes
ESP.ShowBox = true;

--// Set the box type to corner
ESP.BoxType = "Corner Box Esp";

--// Enable names
ESP.ShowName = true;

--// Enable Healhbar
ESP.ShowHealth = true;

--// Enable tracers
ESP.ShowTracer = false;

--// Enable Distance
ESP.ShowDistance = true;
end,
})


local RageTab = Window:CreateTab("Rage🔞🔞", nil) -- Title, Image

local Toggle = RageTab:CreateToggle({
   Name = "Infinite Attack",
   CurrentValue = false,
   Flag = "Toggle1",
   Callback = function(CurrentValue)
      if CurrentValue then
         _G.loop2 = true
         while _G.loop2 do
            local positions = {
               Vector3.new(0, 20, 0),
               Vector3.new(90, 20, 90),
               Vector3.new(180, 20, 180),
               Vector3.new(270, 20, 270),
               Vector3.new(360, 20, 360),
               Vector3.new(-550, 20, -550),
               Vector3.new(-650, 20, -650),
               Vector3.new(1300, 20, 1300),
               Vector3.new(-360, 20, -360),
               Vector3.new(128, -20, 360),
               Vector3.new(-416, 20, 295),
               Vector3.new(-566.011474609375, 40, 376.7962951660156),
               Vector3.new(-218.24745178222656, 20, 415.0586242675781),
               Vector3.new(-214.39273071289062, 20, 423.881591796875),
               Vector3.new(-194.30386352539062, 20, 421.8452453613281),
               Vector3.new(48.345054626464844, 20, -26.658878326416016)
            }

            for _, position in ipairs(positions) do
               local args = {position, false}
               game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("AttackFunction"):InvokeServer(unpack(args))
            end

            wait(0.1) -- Adding a small delay to prevent potential performance issues
         end
      else
         _G.loop2 = false
      end
   end,
})

  

local Toggle = RageTab:CreateToggle({
   Name = "Infinite Gadgets",
   CurrentValue = false,
   Flag = "Toggle3",
   Callback = function(CurrentValue)
      if CurrentValue then
         _G.loop1 = true
         while _G.loop1 do
            local args = {
               Vector3.new(248.3356170654297, 30.63412857055664, -72.32396697998047),
               true
            }

            game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("GadgetFunction"):InvokeServer(unpack(args))
            wait(0.1) -- Adding a small delay to prevent potential performance issues
         end
      else
         _G.loop1 = false
      end
   end
})


local Button = RageTab:CreateButton({
    Name = "Grab Energy Drink",
    Callback = function()
        local player = game.Players.LocalPlayer
        local character = player.Character or player.CharacterAdded:Wait()
        local target = workspace.Map.Perishables.BulletStorage.PowerCubeFolder["Energy Drink"]

        if character and target then
            local originalPosition = character:GetPrimaryPartCFrame()
            character:SetPrimaryPartCFrame(target.CFrame)
            wait(0.2) -- Задержка перед возвратом, можно изменить время
            character:SetPrimaryPartCFrame(originalPosition)
        end
    end
})

local FunTab = Window:CreateTab("Fun🤣", nil)

local Toggle = FunTab:CreateToggle({
    Name = "Spam Emodzi",
    CurrentValue = false,
    Flag = "Toggle5",
    Callback = function(CurrentValue)
        if CurrentValue then
            _G.loop10 = true
            local pins = {
                {PinType = "PlayerPin", PinNumber = "1"},
                {PinType = "PlayerPin", PinNumber = "2"},
                {PinType = "BrawlerPin", PinNumber = "1"},
                {PinType = "BrawlerPin", PinNumber = "2"},
                {PinType = "BrawlerPin", PinNumber = "3"}
            }
            while _G.loop10 do
                for _, pin in ipairs(pins) do
                    local args = {"DisplayPin", pin}
                    game:GetService("ReplicatedStorage"):WaitForChild("RemoteEvents"):WaitForChild("MainFunction"):InvokeServer(unpack(args))
                    wait(0.3)  -- Задержка 0.5 секунды
                end
            end
        else
            _G.loop10 = false
        end
    end
})
