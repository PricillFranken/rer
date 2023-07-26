local GI squad = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/CustomFIeld/main/RayField.lua'))()
local Window = GI squad:CreateWindow({
   Name = "GI squad HUB",
   LoadingTitle = "GI squad.ink Interface Suite",
   LoadingSubtitle = "by pricill_franken and Jeka",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = nil, -- Create a custom folder for your hub/game
      FileName = "GI squad"
   },
   Discord = {
      Enabled = false,
      Invite = "MbN2DXPg34", -- The Discord invite code, do not include discord.gg/
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = false, -- Set this to true to use our key system
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
local Tab = Window:CreateTab("Headcrab Infection") -- Title, Image
local Tab2 = Window:CreateTab("Plate of Fate:R") -- Title, Image
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
local Button3 = Tab:CreateButton({
   Name = "AmmoGiver Button",
   Info = "A button will appear that will take you ammo", -- Speaks for itself, Remove if none.
   Interact = 'Click',
   Callback = function()
   print('Pressed')
   wait(0.5)
loadstring(game:HttpGet("https://raw.githubusercontent.com/PricillFranken/rer/main/ammogiver.lua"))()
      end,
})
