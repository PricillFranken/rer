-- Gui to Lua
-- Version: 3.2

-- Instances:

local ScreenGui = Instance.new("ScreenGui")
local GlobalCall = Instance.new("TextButton")
local setprox = Instance.new("TextButton")

--Properties:

ScreenGui.Parent = game:GetService("CoreGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.ResetOnSpawn = false

GlobalCall.Name = "GlobalCall"
GlobalCall.Parent = ScreenGui
GlobalCall.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
GlobalCall.BorderColor3 = Color3.fromRGB(0, 0, 0)
GlobalCall.BorderSizePixel = 0
GlobalCall.Position = UDim2.new(0.696326554, 0, 0, 0)
GlobalCall.Size = UDim2.new(0.0710204095, 0, 0.0617283955, 0)
GlobalCall.Font = Enum.Font.SourceSans
GlobalCall.Text = "true"
GlobalCall.TextColor3 = Color3.fromRGB(0, 0, 0)
GlobalCall.TextScaled = true
GlobalCall.TextSize = 14.000
GlobalCall.TextWrapped = true

setprox.Name = "setprox"
setprox.Parent = ScreenGui
setprox.BackgroundColor3 = Color3.fromRGB(255, 0, 0)
setprox.BorderColor3 = Color3.fromRGB(0, 0, 0)
setprox.BorderSizePixel = 0
setprox.Position = UDim2.new(0.817142844, 0, 0.0111111114, 0)
setprox.Size = UDim2.new(0.0293877553, 0, 0.0395061746, 0)
setprox.Font = Enum.Font.SourceSans
setprox.Text = "X"
setprox.TextColor3 = Color3.fromRGB(0, 0, 0)
setprox.TextScaled = true
setprox.TextSize = 14.000
setprox.TextWrapped = true

-- Scripts:

local function BPQBDE_fake_script() -- GlobalCall.LocalScript 
	local script = Instance.new('LocalScript', GlobalCall)

	if game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored == true then
		script.Parent.Text = "true"
	else
		script.Parent.Text = "false"
	end
	script.Parent.MouseButton1Click:Connect(function()
		if script.Parent.Text == "true" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = false
			script.Parent.Text = "false"
		elseif script.Parent.Text == "false" then
			game.Players.LocalPlayer.Character.HumanoidRootPart.Anchored = true
			script.Parent.Text = "true"
		end
	end)
end
coroutine.wrap(BPQBDE_fake_script)()
local function OVZE_fake_script() -- setprox.LocalScript 
	local script = Instance.new('LocalScript', setprox)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(OVZE_fake_script)()
