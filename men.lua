local Rayfield = loadstring(game:HttpGet('https://raw.githubusercontent.com/UI-Interface/CustomFIeld/main/RayField.lua'))()
local Notification = loadstring(game:HttpGet("https://raw.githubusercontent.com/BocusLuke/UI/main/STX/Client.Lua"))()
local Window = Rayfield:CreateWindow({
   Name = "Gi squad HUB",
   LoadingTitle = "GI squad.ink Interface Suite",
   LoadingSubtitle = "by pricill_franken and Jeka",
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
   Notification:Notify(
    {Title = "AntiCheat ByPass", Description = "Pressed"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)
   loadstring(game:HttpGet("https://raw.githubusercontent.com/RelkzzRebranded/Bypassed---OBFUSCATED..../main/Adonis%20BYPASS.lua"))()
   end,
})
local Button2 = Tab:CreateButton({
   Name = "Mutation [ONLY XEN TEAM]",
   Info = "Enable animation. Give inf health for a while, but you are frozen", -- Speaks for itself, Remove if none.
   Interact = 'Click',
   Callback = function()
   print('Pressed')
   Notification:Notify(
    {Title = "Mutation Animation", Description = "Pressed"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)
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
   Notification:Notify(
    {Title = "AmmoGiver", Description = "Pressed"},
    {OutlineColor = Color3.fromRGB(80, 80, 80),Time = 5, Type = "default"}
)
loadstring(game:HttpGet("https://raw.githubusercontent.com/PricillFranken/rer/main/ammogiver.lua"))()
})
