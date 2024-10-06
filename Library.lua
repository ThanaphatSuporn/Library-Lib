local library = {}

library.Main = {}

function library.Main:New(Title)
	-- Instances:

	local ScreenGui = Instance.new("ScreenGui")
	local Frame = Instance.new("Frame")
	local TextLabel = Instance.new("TextLabel")
	local Frame_2 = Instance.new("Frame")
	local UIListLayout = Instance.new("UIListLayout")
	local TextButton_2 = Instance.new("TextButton")

	--Properties:

	ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
	ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

	Frame.Parent = ScreenGui
	Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame.BorderSizePixel = 0
	Frame.Position = UDim2.new(0.33612752, 0, 0.341880351, 0)
	Frame.Size = UDim2.new(0.328468055, 0, 0.297649592, 0)

	TextLabel.Parent = Frame
	TextLabel.BackgroundColor3 = Color3.fromRGB(161, 255, 205)
	TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.BorderSizePixel = 0
	TextLabel.Position = UDim2.new(1.52710086e-07, 0, 0, 0)
	TextLabel.Size = UDim2.new(0.998299718, 0, 0.100000009, 0)
	TextLabel.Font = Enum.Font.SourceSansBold
	TextLabel.Text = Title
	TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextLabel.TextScaled = true
	TextLabel.TextSize = 14.000
	TextLabel.TextWrapped = true
	TextLabel.TextXAlignment = Enum.TextXAlignment.Left

	Frame_2.Parent = Frame
	Frame_2.BackgroundColor3 = Color3.fromRGB(178, 255, 204)
	Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	Frame_2.BorderSizePixel = 0
	Frame_2.Position = UDim2.new(-0.00250131474, 0, 0.105022199, 0)
	Frame_2.Size = UDim2.new(1.003, 0,0.9, 0)

	UIListLayout.Parent = Frame_2
	UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder

	

	TextButton_2.Parent = ScreenGui
	TextButton_2.BackgroundColor3 = Color3.fromRGB(112, 255, 226)
	TextButton_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_2.BorderSizePixel = 0
	TextButton_2.Position = UDim2.new(0.89990133, 0, 0.567574799, 0)
	TextButton_2.Size = UDim2.new(0.100000001, 0, 0.0452457294, 0)
	TextButton_2.Font = Enum.Font.SourceSansBold
	TextButton_2.Text = "Open/Close"
	TextButton_2.TextColor3 = Color3.fromRGB(0, 0, 0)
	TextButton_2.TextScaled = true
	TextButton_2.TextSize = 14.000
	TextButton_2.TextWrapped = true

	-- Scripts:

	local function KKXORDS_fake_script() -- TextButton_2.LocalScript 
		local script = Instance.new('LocalScript', TextButton_2)

		script.Parent.MouseButton1Click:Connect(function()
			if Frame.Visible == true then
				Frame.Visible = false
			else
				Frame.Visible = true
			end
		end)
	end
	coroutine.wrap(KKXORDS_fake_script)()
	
	library.Frame = {}
	
	function library.Frame:NewButton(Text,Callback)
		local TextButton = Instance.new("TextButton")
		
		TextButton.Parent = Frame_2
		TextButton.BackgroundColor3 = Color3.fromRGB(124, 242, 255)
		TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.BorderSizePixel = 0
		TextButton.Position = UDim2.new(3.80822684e-07, 0, 0, 0)
		TextButton.Size = UDim2.new(1.00000024, 0, 0.099999994, 0)
		TextButton.Font = Enum.Font.SourceSansBold
		TextButton.Text = Text
		TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
		TextButton.TextScaled = true
		TextButton.TextSize = 14.000
		TextButton.TextWrapped = true
		
		TextButton.MouseButton1Click:Connect(function()
			
			pcall(Callback)
			
		end)
	end
	
	
	
	return library.Frame
	
end

return library.Main
