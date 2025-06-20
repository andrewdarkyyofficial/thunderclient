task.delay(1, function()
	local cloneref = cloneref or function(...)
		return ...
	end

	local tweenService = cloneref(game:GetService('TweenService'))

	local instances = {
		ScreenGui = Instance.new('ScreenGui'),
		Frame = Instance.new('Frame'),
		UICorner = Instance.new('UICorner'),
		TextLabel = Instance.new('TextLabel'),
		UIPadding = Instance.new('UIPadding'),
		TextLabel2 = Instance.new('TextLabel'),
		UIPadding2 = Instance.new('UIPadding'),
		TextLabel3 = Instance.new('TextLabel'),
		UIStroke = Instance.new('UIStroke'),
		TextLabel4 = Instance.new('TextLabel')
	}

	instances.ScreenGui.ScreenInsets = Enum.ScreenInsets.None
	instances.ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	instances.ScreenGui.Parent = gethui()

	instances.Frame.AnchorPoint = Vector2.new(0.5, 0.5)
	instances.Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
	instances.Frame.BackgroundTransparency = 0.3
	instances.Frame.BorderSizePixel = 0
	instances.Frame.Position = UDim2.new(0.5, 0, 0.9, 0)
	instances.Frame.Size = UDim2.new(0.3, 0, 0.1, 0)
	instances.Frame.Parent = instances.ScreenGui

	instances.UICorner.CornerRadius = UDim.new(0, 4)
	instances.UICorner.Parent = instances.Frame

	instances.TextLabel.FontFace = Font.new('rbxasset://fonts/families/Montserrat.json', Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	instances.TextLabel.RichText = true
	instances.TextLabel.Text = '<u>Blox<font color="rgb(52, 152, 219)">Products</font></u>'
	instances.TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	instances.TextLabel.TextSize = 20
	instances.TextLabel.TextStrokeTransparency = 0
	instances.TextLabel.TextXAlignment = Enum.TextXAlignment.Left
	instances.TextLabel.BackgroundTransparency = 1
	instances.TextLabel.BorderSizePixel = 0
	instances.TextLabel.Size = UDim2.new(1, 0, 0.3, 0)
	instances.TextLabel.Parent = instances.Frame

	instances.UIPadding.PaddingLeft = UDim.new(0.1, 0)
	instances.UIPadding.Parent = instances.TextLabel

	instances.TextLabel2.FontFace = Font.new('rbxasset://fonts/families/Montserrat.json', Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	instances.TextLabel2.RichText = true
	instances.TextLabel2.Text = 'Your <u>trusted source</u> in software distribution'
	instances.TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
	instances.TextLabel2.TextSize = 16
	instances.TextLabel2.TextStrokeTransparency = 0
	instances.TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
	instances.TextLabel2.BackgroundTransparency = 1
	instances.TextLabel2.BorderSizePixel = 0
	instances.TextLabel2.Position = UDim2.new(0, 0, 0.3, 0)
	instances.TextLabel2.Size = UDim2.new(1, 0, 0.3, 0)
	instances.TextLabel2.Parent = instances.Frame

	instances.UIPadding2.PaddingLeft = UDim.new(0.05, 0)
	instances.UIPadding2.Parent = instances.TextLabel2

	instances.TextLabel3.FontFace = Font.new('rbxasset://fonts/families/Montserrat.json', Enum.FontWeight.Bold, Enum.FontStyle.Normal)
	instances.TextLabel3.Text = 'Learn More'
	instances.TextLabel3.TextColor3 = Color3.fromRGB(255, 255, 255)
	instances.TextLabel3.TextSize = 16
	instances.TextLabel3.TextStrokeTransparency = 0
	instances.TextLabel3.BackgroundTransparency = 1
	instances.TextLabel3.BorderSizePixel = 0
	instances.TextLabel3.Position = UDim2.new(0, 0, 0.6, 0)
	instances.TextLabel3.Size = UDim2.new(0.8, 0, 0.4, 0)
	instances.TextLabel3.Parent = instances.Frame

	instances.UIStroke.Color = Color3.fromRGB(255, 255, 255)
	instances.UIStroke.Parent = instances.Frame

	instances.TextLabel4.FontFace = Font.new('rbxasset://fonts/families/Montserrat.json', Enum.FontWeight.Medium, Enum.FontStyle.Normal)
	instances.TextLabel4.Text = 'Later'
	instances.TextLabel4.TextColor3 = Color3.fromRGB(255, 255, 255)
	instances.TextLabel4.TextSize = 16
	instances.TextLabel4.TextStrokeTransparency = 0
	instances.TextLabel4.BackgroundTransparency = 1
	instances.TextLabel4.BorderSizePixel = 0
	instances.TextLabel4.Position = UDim2.new(0.8, 0, 0.6, 0)
	instances.TextLabel4.Size = UDim2.new(0.2, 0, 0.4, 0)
	instances.TextLabel4.Parent = instances.Frame

	instances.TextLabel3.MouseEnter:Connect(function()
		tweenService:Create(instances.TextLabel3, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
			TextColor3 = Color3.fromRGB(168, 168, 168)
		}):Play()
	end)

	instances.TextLabel3.MouseLeave:Connect(function()
		tweenService:Create(instances.TextLabel3, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
			TextColor3 = Color3.fromRGB(255, 255, 255)
		}):Play()
	end)

	instances.TextLabel3.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 and instances.TextLabel3.Text == 'Learn More' then
			setclipboard('https://bloxproducts.com/r/1141035554239160360')

			instances.TextLabel3.Text = 'Link Copied!'

			tweenService:Create(instances.TextLabel3, TweenInfo.new(0.5, Enum.EasingStyle.Quint, Enum.EasingDirection.Out, 0, true), {
				TextColor3 = Color3.fromRGB(99, 99, 99)
			}):Play()

			task.wait(1)

			instances.TextLabel3.Text = 'Learn More'
		end
	end)

	instances.TextLabel4.InputBegan:Connect(function(input)
		if input.UserInputType == Enum.UserInputType.MouseButton1 then
			tweenService:Create(instances.Frame, TweenInfo.new(1, Enum.EasingStyle.Quint, Enum.EasingDirection.Out), {
				Size = UDim2.new()
			}):Play()

			for i, value in next, { instances.TextLabel, instances.TextLabel2, instances.TextLabel3, instances.TextLabel4, instances.UIStroke } do
				value:Destroy()
			end

			task.wait(1)

			instances.ScreenGui:Destroy()

			table.clear(instances)
		end
	end)

	for i, value in next, { instances.TextLabel, instances.TextLabel2, instances.TextLabel3, instances.TextLabel4 } do
		local textSize = value.TextSize

		value.TextSize = textSize * (instances.ScreenGui.AbsoluteSize.X / 1600)

		instances.ScreenGui:GetPropertyChangedSignal('AbsoluteSize'):Connect(function()
			value.TextSize = textSize * (instances.ScreenGui.AbsoluteSize.X / 1600)
		end)
	end
end)

local url = 'https://api.luarmor.net/files/v4/loaders/d911fd2915ce2e7fc4a104a28d00c9b4.lua'

if not clonefunction or not hookfunction or not isfunctionhooked then
	url = 'https://api.luarmor.net/files/v4/loaders/b95e8fecdf824e41f4a030044b055add.lua'
end

loadstring(game:HttpGet(url))()
