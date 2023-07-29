function gsoo() 
if Value==true then 
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map2.E_End3.EDoor2.E.Call.CFrame
   wait(2)
   fireproximityprompt(game:GetService("Workspace").Map2.E_End3.EDoor2.E.Call.ProximityPrompt, 1, true)
   wait(10)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map2.E_End3.EDoor2.E.ActivationPart.CFrame
   wait(1)
   fireproximityprompt(game:GetService("Workspace").Map2.E_End3.EDoor2.E.ActivationPart.ProximityPrompt, 1, true)
   wait(7)
   game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Outside.Tunnel.ExitDoor.Door.Keypad.CFrame
   wait(5)
   fireproximityprompt(game:GetService("Workspace").Outside.Tunnel.ExitDoor.Door.Keypad.Attachment.ProximityPrompt, 1, true)
   wait(25)
gsoo()
end
end
