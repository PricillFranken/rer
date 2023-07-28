local PublicScriptName = "MainTable" --[[the PublicScriptName used for terminating script. Add CFrame value to folder to game.DestroyAbleScripts and name it like PublicScriptName|| debug:; name and pairs: game.DestroyAbleScripts ; name = DestroyAbleScripts; i'll add most of stuff soon as possible]] 
if not game:FindFirstChild("DestroyAbleScripts") then
     local setp = Instance.new("Folder",game)
      setp.Name = "DestroyAbleScripts" 
      end 
      local DestroyAbleFolder = game:FindFirstChild("DestroyAbleScripts")
       DestroyAbleFolder.ChildAdded:Connect(function(ch)
        if ch:IsA("CFrameValue") and ch.Value == PublicScriptName then
        ch:Destroy()
        wait(.1)
        script:Destroy() 
        end
     end)
-- script after this line: --
local me = game.Players.LocalPlayer.Character.HumanoidRootPart

while wait() do
   me.CFrame = game:GetService("Workspace").Outside.Tunnel.ExitDoor.Door.Keypad.CFrame
   wait(5)
   fireproximityprompt(game:GetService("Workspace").Outside.Tunnel.ExitDoor.Door.Keypad.Attachment.ProximityPrompt, 1, true)
   wait(30)
end
