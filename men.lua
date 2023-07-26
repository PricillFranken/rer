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
local Button = Tab:CreateButton({
   Name = "Anticheat ByPass",
   Info = "Off anticheat.", -- Speaks for itself, Remove if none.
   Interact = 'Click',
   Callback = function()
   print('Pressed')
wait(0.5)
   loadstring(game:HttpGet("https://raw.githubusercontent.com/RelkzzRebranded/Bypassed---OBFUSCATED..../main/Adonis%20BYPASS.lua"))()
   end,
})
local Button2 = Tab:CreateButton({
   Name = "Mutation [ONLY XEN TEAM]",
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
local Button4 = Tab:CreateButton({
   Name = "Transformation into a headcrab",
   Info = "You can become a headcrab in the same position as you are now.", -- Speaks for itself, Remove if none.
   Interact = 'Click',
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
local Toggle = Tab:CreateToggle({
   Name = "AmmoGiver",
   Info = "Enabled button.", -- Speaks for itself, Remove if none.
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      if Value == true then
loadstring(game:HttpGet("https://raw.githubusercontent.com/PricillFranken/rer/main/ammogiver.lua"))()
         else
game.CoreGui["2B"]:Destroy()
         end
   end,
})
local Toggle = Tab:CreateToggle({
   Name = "Targeting",
   Info = "Loop bring/Loop goto.", -- Speaks for itself, Remove if none.
   CurrentValue = false,
   Flag = "Toggle1", -- A flag is the identifier for the configuration file, make sure every element has a different flag if you're using configuration saving to ensure no overlaps
   Callback = function(Value)
      if Value == true then
loadstring(game:HttpGet("https://raw.githubusercontent.com/PricillFranken/rer/main/ammogiver.lua"))()
         else
game.CoreGui["2B"]:Destroy()
         end
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
