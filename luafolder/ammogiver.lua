local _2B = Instance.new("ScreenGui")
_2B.ResetOnSpawn = false
_2B.IgnoreGuiInset = true
local Bool_InfiniteStamina = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")

--Properties:

_2B.Name = "2B"
_2B.Parent = game:GetService("CoreGui")
_2B.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Bool_InfiniteStamina.Name = "Bool_InfiniteStamina"
Bool_InfiniteStamina.Parent = _2B
Bool_InfiniteStamina.BackgroundColor3 = Color3.fromRGB(194, 194, 194)
Bool_InfiniteStamina.BorderColor3 = Color3.fromRGB(0, 0, 0)
Bool_InfiniteStamina.BorderSizePixel = 0
Bool_InfiniteStamina.Position = UDim2.new(0.696067154, 0, 0.0310936272, 0)
Bool_InfiniteStamina.Size = UDim2.new(0.148999989, 0, 0.0603282601, 0)
Bool_InfiniteStamina.Font = Enum.Font.SourceSans
Bool_InfiniteStamina.Text = "get ammo"
Bool_InfiniteStamina.TextColor3 = Color3.fromRGB(0, 0, 0)
Bool_InfiniteStamina.TextScaled = true
Bool_InfiniteStamina.TextSize = 14.000
Bool_InfiniteStamina.TextWrapped = true

UICorner.Parent = Bool_InfiniteStamina

-- Scripts:

local function KMHIKOA_fake_script() -- Bool_InfiniteStamina.LocalScript 
	local script = Instance.new('LocalScript', Bool_InfiniteStamina)

	local deb = false
	script.Parent.MouseButton1Click:Connect(function()
		if deb == false then deb = true
			local sep = false
			for i,v in pairs(game.Workspace:GetDescendants()) do
				if sep == false and v:IsA("ProximityPrompt") and v.ObjectText == "Ammo box"  then
					sep = true
				
					local prevCFRAME = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
					local prevCamera = game.Workspace.Camera.CameraSubject
					local prevHold = v.HoldDuration
					v.HoldDuration = .07
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(v.Parent.Parent.Position.X,v.Parent.Parent.Position.Y,v.Parent.Parent.Position.Z+4)
					game.Workspace.Camera.CameraSubject = v.Parent.Parent
					wait(.035)
					fireproximityprompt(v)
					wait(.1)
					game.Workspace.Camera.CameraSubject = prevCamera
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = prevCFRAME
					v.HoldDuration = prevHold
				end
			end
			task.wait(3.5)
			deb = false
		end
	end)
	local ge = false
	script.Parent.MouseButton2Click:Connect(function()
		if ge == false then ge = true wait(.3) ge = false elseif ge == true then script.Parent:Destroy() end
	end)
end
coroutine.wrap(KMHIKOA_fake_script)()
