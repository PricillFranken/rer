local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/CustomFIeld/main/RayField.lua'))()
local Window = Rayfield:CreateWindow({
   Name = "GI Squad.ink",
   LoadingTitle = "Gi Squad presents",
   LoadingSubtitle = "by pricill and Jeka",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "Arrayfield"
   },
   Discord = {
      Enabled = true,
      Invite = "MbN2DXPg34", -- The Discord invite code, do not include discord.gg/
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "GI Squad.ink",
      Subtitle = "Key System",
      Note = "Join the discord (discord.gg/MbN2DXPg34)",
      FileName = "SiriusKey",
      SaveKey = false,
      GrabKeyFromSite = false, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = "GIS"
   }
})
local Tab = Window:CreateTab("HI") -- Title, Image
local Tab2 = Window:CreateTab("PofF:R") -- Title, Image
local Tab3 = Window:CreateTab("ER:LC")
local Section = Tab:CreateSection("Main",true) -- The 2nd argument is to tell if its only a Title and doesnt contain element
local ACButton = Tab:CreateButton({
   Name = "Anticheat ByPass",
   Info = "Off anticheat.", -- Speaks for itself, Remove if none.
   Interact = 'Click',
   Callback = function()
   print('Pressed')
wait(0.5)
   loadstring(game:HttpGet("https://raw.githubusercontent.com/RelkzzRebranded/Bypassed---OBFUSCATED..../main/Adonis%20BYPASS.lua"))()
   end,
})
local MButton = Tab:CreateButton({
   Name = "Mutation [ONLY Headcrab]",
   Info = "Enable animation. Give inf health for a while, but you are frozen", -- Speaks for itself, Remove if none.
   Interact = 'Click',
   Callback = function()
   print('Pressed')
wait(0.5)
   local args = {
    [1] = "Zombie"
}
game:GetService("ReplicatedStorage").Remotes.Zombie.StartZombieAnim:FireServer(unpack(args))
   end,
})

local Toggle1 = Tab:CreateToggle({
   Name = "AmmoGiver",
   Info = "Enabled button.", -- Speaks for itself, Remove if none.
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      if Value == true then
wait(0.5)
loadstring(game:HttpGet("https://raw.githubusercontent.com/PricillFranken/rer/main/ammogiver.lua"))()
         else
wait(0.5)
game.CoreGui["2B"]:Destroy()
         end
   end,
})
local Toggle2 = Tab:CreateToggle({
   Name = "Targeting GUI",
   Info = "Loop bring/Loop goto.", -- Speaks for itself, Remove if none.
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)

      if Value == true then
wait(0.5)
loadstring(game:HttpGet("https://raw.githubusercontent.com/PricillFranken/rer/main/targeting.lua"))()
         else
wait(0.5)
game.CoreGui["_G>FGSC"]:Destroy()
         end
   end,
})
local TSect = Tab:CreateSection("Transformation",false)
local Button1 = Tab:CreateButton({
   Name = "Headcrab",
   Info = "You can become a headcrab in the same position as you are now.", -- Speaks for itself, Remove if none.
   Interact = 'Click',
   SectionParent = TSect,
   Callback = function()
   print('Pressed')
   wait(0.5)
local prevpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait()
local args = {
    [1] = "Headcrab",
    [2] = "Headcrab",
    [3] = false,
    [4] = {}
}
game:GetService("ReplicatedStorage").Remotes.Teams.TeamChanger:InvokeServer(unpack(args))
      wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = prevpos
end,
})
local Button2 = Tab:CreateButton({
   Name = "Baby Headcrab (need gonarch)",
   Info = "You can become a baby headcrab in the same position as you are now.", -- Speaks for itself, Remove if none.
   Interact = 'Click',
   SectionParent = TSect,
   Callback = function()
   print('Pressed')
   wait(0.5)
local prevpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait()
local args = {
    [1] = "Baby_Headcrab"
}
game:GetService("ReplicatedStorage").Remotes.Teams.TeamChanger:InvokeServer(unpack(args))
      wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = prevpos
end,
})
local Button3 = Tab:CreateButton({
   Name = "Survivor",
   Info = "You can become a survivor in the same position as you are now.", -- Speaks for itself, Remove if none.
   Interact = 'Click',
   SectionParent = TSect,
   Callback = function()
   print('Pressed')
   wait(0.5)
local prevpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait()
local args = {
    [1] = "Survivor",
    [3] = false,
    [4] = {}
}
game:GetService("ReplicatedStorage").Remotes.Teams.TeamChanger:InvokeServer(unpack(args))
      wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = prevpos
end,
})
local Button4 = Tab:CreateButton({
   Name = "Vortignaut (not return)",
   Info = "You can become a vortignaut in the same position as you are now.", -- Speaks for itself, Remove if none.
   Interact = 'Click',
   SectionParent = TSect,
   Callback = function()
   print('Pressed')
   wait(0.5)
local prevpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait()
local args = {
    [1] = "Vortignaut",
    [3] = false,
    [4] = {}
}
game:GetService("ReplicatedStorage").Remotes.Teams.TeamChanger:InvokeServer(unpack(args))
      wait(0.4)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = prevpos
end,
})
local Button5 = Tab:CreateButton({
   Name = "Bullsquid (not return)",
   Info = "You can become a Bullsquid in the same position as you are now.", -- Speaks for itself, Remove if none.
   Interact = 'Click',
   SectionParent = TSect,
   Callback = function()
   print('Pressed')
   wait(0.5)
local prevpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait()
local args = {
    [1] = "Bullsquid",
    [2] = "Bullsquid",
    [3] = false,
    [4] = {}
}
game:GetService("ReplicatedStorage").Remotes.Teams.TeamChanger:InvokeServer(unpack(args))
      wait(0.4)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = prevpos
end,
})
local Button6 = Tab:CreateButton({
   Name = "Pit Drone",
   Info = "You can become a Pit Drone in the same position as you are now.", -- Speaks for itself, Remove if none.
   Interact = 'Click',
   SectionParent = TSect,
   Callback = function()
   print('Pressed')
   wait(0.5)
local prevpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait()
local args = {
    [1] = "Pit Drone",
    [3] = false,
    [4] = {}
}
game:GetService("ReplicatedStorage").Remotes.Teams.TeamChanger:InvokeServer(unpack(args))
      wait(0.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = prevpos
end,
})
local Section = Tab2:CreateSection("Main",true) -- The 2nd argument is to tell if its only a Title and doesnt contain element
local Button = Tab2:CreateButton({
   Name = "AutoFarm",
   Info = "Enable autofarm.", -- Speaks for itself, Remove if none.
   Interact = 'Click',
   Callback = function()
   print('Pressed')
wait(0.5)
   local AllowedObjectNames = {"Bronze","Silver","Gold","Crate"}
game.Workspace.DescendantAdded:Connect(function(desc)
    if table.find(AllowedObjectNames,desc.Name) then
local prevpos = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait()
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = desc.CFrame
wait()
desc.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
wait(.1)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = prevpos
    end
end)
end,
})
local Section = Tab3:CreateSection("Main",true)
local Toggle = Tab3:CreateToggle({
   Name = "CallHack GUI",
   Info = "Enable call hack gui.", -- Speaks for itself, Remove if none.
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
if Value == true then
      wait(0.5)
loadstring(game:HttpGet("https://raw.githubusercontent.com/PricillFranken/rer/main/callgui.lua"))()
         else
wait(0.5)
game.CoreGui["GlobalCall"]:Destroy()
         end
   end,
})
local Button = Tab3:CreateButton({
  Name = "Inf Stamin",
  Info = "Enable inf stamin",
  Interact = 'Click',
  Callback = function()
  wait(0.5)
  loadstring(game:HttpGet("https://raw.githubusercontent.com/PricillFranken/rer/main/infstam.lua"))()
      end,
   })
