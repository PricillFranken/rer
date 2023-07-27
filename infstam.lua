local runSpeed = 23
local walkSpeed = 16
local isRunning = false

local isscriptrunning = true
local scripten = Instance.new("BoolValue",game)
scripten.Name = "Scripten"
scripten:GetPropertyChangedSignal("Value"):Connect(function()
    if scripten.Value == true then
        scripten:Destroy()
        isscriptrunning = false
        wait()
        script.Parent = game.Workspace
        wait()
        script:Destroy()
    end
end)

local SPC = game.Players.LocalPlayer.PlayerGui.GameGui.MainHUD["Stamina LS"]
SPC:GetPropertyChangedSignal("Enabled"):Connect(function()
    if SPC.Enabled == true then
        SPC.Enabled = false
    end
end)
SPC.Enabled = false


local UserInputService = game:GetService("UserInputService")

UserInputService.InputBegan:Connect(function(inputObject, gameProcessed)
    if isscriptrunning == true then
    if gameProcessed then return end

    if inputObject.KeyCode == Enum.KeyCode.LeftShift then
        isRunning = true
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = runSpeed
        end
        end
end)

UserInputService.InputEnded:Connect(function(inputObject, gameProcessed)
    if isscriptrunning == true then
    if gameProcessed then return end

    if inputObject.KeyCode == Enum.KeyCode.LeftShift then
        isRunning = false
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = walkSpeed
    end end
end)
