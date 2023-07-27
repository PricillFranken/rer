local _GFGSC = Instance.new("ScreenGui")
local TXT32 = Instance.new("TextBox")
local TextButton = Instance.new("TextButton")
local TextButton_2 = Instance.new("TextButton")
local HoldingTargets = Instance.new("Folder")
local TNAME46 = Instance.new("StringValue",_GFGSC) TNAME46.Name = "TargetName"

--Properties:

_GFGSC.Name = "_G>FGSC"
_GFGSC.Parent = game:GetService("CoreGui")
_GFGSC.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

TXT32.Name = "TXT32"
TXT32.Parent = _GFGSC
TXT32.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TXT32.BorderColor3 = Color3.fromRGB(0, 0, 0)
TXT32.BorderSizePixel = 3
TXT32.Position = UDim2.new(0.642156839, 0, 0.029629631, 0)
TXT32.Size = UDim2.new(0.163398698, 0, 0.0864197537, 0)
TXT32.Font = Enum.Font.SourceSans
TXT32.PlaceholderText = "playername"
TXT32.Text = ""
TXT32.TextColor3 = Color3.fromRGB(0, 0, 0)
TXT32.TextScaled = true
TXT32.TextSize = 14.000
TXT32.TextWrapped = true

TextButton.Parent = _GFGSC
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 3
TextButton.Position = UDim2.new(0.642156839, 0, 0.116049379, 0)
TextButton.Size = UDim2.new(0.0792483687, 0, 0.0617283955, 0)
TextButton.Font = Enum.Font.SourceSans
TextButton.Text = "hold"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextWrapped = true

TextButton_2.Parent = _GFGSC
TextButton_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.BorderSizePixel = 3
TextButton_2.Position = UDim2.new(0.721405208, 0, 0.116049379, 0)
TextButton_2.Size = UDim2.new(0.0841503292, 0, 0.0617283955, 0)
TextButton_2.Font = Enum.Font.SourceSans
TextButton_2.Text = "release"
TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton_2.TextScaled = true
TextButton_2.TextSize = 14.000
TextButton_2.TextWrapped = true

HoldingTargets.Name = "HoldingTargets"
HoldingTargets.Parent = _GFGSC

-- Scripts:

local function LDZCN_fake_script() -- TXT32.LocalScript 
	local script = Instance.new('LocalScript', TXT32)

	local tname3 = script.Parent.Parent.TargetName
	script.Parent.FocusLost:Connect(function()
	
		local message = script.Parent.Text
	
		for i, v in pairs(game.Players:GetChildren()) do
			if string.find(string.lower(v.Name), string.lower(message)) then 
				tname3.Value = v.Name
				if v.Name == v.DisplayName then
					script.Parent.Text = (v.Name)	
				else
					script.Parent.Text = (v.Name.."("..v.DisplayName..")")
				end
			end
		end
	end)
end
coroutine.wrap(LDZCN_fake_script)()
local function GRXLFZE_fake_script() -- TextButton.LocalScript 
	local script = Instance.new('LocalScript', TextButton)

	local tname = script.Parent.Parent.TargetName
	local holdingtargetsfolder = script.Parent.Parent.HoldingTargets
	local deb = false
	script.Parent.MouseButton1Click:Connect(function()
		
	if not holdingtargetsfolder:FindFirstChild(tname.Value) then
				local setB = Instance.new("CFrameValue",holdingtargetsfolder)
				setB.Name = tname.Value
				end
			local plr = game.Players:FindFirstChild(tname.Value)
			plr.Character.HumanoidRootPart.Anchored = true
			wait()
				plr.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
			
		
	end)
end
coroutine.wrap(GRXLFZE_fake_script)()
local function CSKOMCR_fake_script() -- TextButton_2.LocalScript 
	local script = Instance.new('LocalScript', TextButton_2)

	local tname1 = script.Parent.Parent.TargetName
	local holdingtargetsfolder1 = script.Parent.Parent.HoldingTargets
	local deb44 = false
	script.Parent.MouseButton1Click:Connect(function()
	
		if holdingtargetsfolder1:FindFirstChild(tname1.Value) then
			holdingtargetsfolder1:FindFirstChild(tname1.Value):Destroy()
			game.Players:FindFirstChild(tname1.Value).Character.HumanoidRootPart.Anchored = false
		end
	end)
end
coroutine.wrap(CSKOMCR_fake_script)()
