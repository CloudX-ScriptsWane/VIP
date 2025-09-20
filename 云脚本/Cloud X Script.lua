local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local PlayerGui = LocalPlayer:WaitForChild("PlayerGui")
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local UICorner = Instance.new("UICorner")
local TitleBar = Instance.new("Frame")
local TitleCorner = Instance.new("UICorner")
local Title = Instance.new("TextLabel")
local CloseButton = Instance.new("TextButton")
local CloseCorner = Instance.new("UICorner")
local FreeScriptButton = Instance.new("TextButton")
local PaidScriptButton = Instance.new("TextButton")
local StatusLabel = Instance.new("TextLabel")
local ButtonCorner = Instance.new("UICorner")
local ButtonCorner2 = Instance.new("UICorner")
ScreenGui.Name = "CloudXHub"
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = PlayerGui
MainFrame.Size = UDim2.new(0, 200, 0, 150)
MainFrame.Position = UDim2.new(0.5, -200, 0.5, -175)
MainFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
MainFrame.BorderSizePixel = 0
MainFrame.Parent = ScreenGui
UICorner.CornerRadius = UDim.new(0, 10)
UICorner.Parent = MainFrame
TitleBar.Size = UDim2.new(1, 0, 0, 40)
TitleBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
TitleBar.BorderSizePixel = 0
TitleBar.Parent = MainFrame
TitleCorner.CornerRadius = UDim.new(0, 10)
TitleCorner.Parent = TitleBar
Title.Size = UDim2.new(1, -40, 1, 0)
Title.BackgroundTransparency = 1
Title.Font = Enum.Font.GothamBold
Title.Text = "CloudX Hub Script"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextSize = 18
Title.Parent = TitleBar
CloseButton.Size = UDim2.new(0, 40, 1, 0)
CloseButton.Position = UDim2.new(1, -40, 0, 0)
CloseButton.BackgroundColor3 = Color3.fromRGB(200, 60, 60)
CloseButton.Font = Enum.Font.Gotham
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.TextSize = 16
CloseButton.Parent = TitleBar
CloseCorner.CornerRadius = UDim.new(0, 10)
CloseCorner.Parent = CloseButton
CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
end)
FreeScriptButton.Size = UDim2.new(0.85, 0, 0, 40)
FreeScriptButton.Position = UDim2.new(0.075, 0, 0.25, 0)
FreeScriptButton.BackgroundColor3 = Color3.fromRGB(70, 150, 70)
FreeScriptButton.Font = Enum.Font.Gotham
FreeScriptButton.Text = "免费脚本[源码已泛滥]"
FreeScriptButton.TextColor3 = Color3.fromRGB(255, 255, 255)
FreeScriptButton.TextSize = 18
FreeScriptButton.Parent = MainFrame
FreeScriptButton.MouseButton1Click:Connect(function()
    StatusLabel.Text = "正在加载中...[免费脚本]"
    loadstring(game:HttpGet("https://github.com/CloudX-ScriptsWane/White-ash-script/raw/main/qwq", true))()
    StatusLabel.Text = "加载完成！"
end)
PaidScriptButton.Size = UDim2.new(0.85, 0, 0, 40)
PaidScriptButton.Position = UDim2.new(0.075, 0, 0.5, 0)
PaidScriptButton.BackgroundColor3 = Color3.fromRGB(180, 100, 50)
PaidScriptButton.Font = Enum.Font.Gotham
PaidScriptButton.Text = "现限免脚本"
PaidScriptButton.TextColor3 = Color3.fromRGB(255, 255, 255)
PaidScriptButton.TextSize = 18
PaidScriptButton.Parent = MainFrame
PaidScriptButton.MouseButton1Click:Connect(function()
    StatusLabel.Text = "正在加载中...[限制脚本]"
    loadstring(game:HttpGet("https://github.com/CloudX-ScriptsWane/White-ash-script/raw/main/Paid.luau", true))()
    StatusLabel.Text = "加载完成！"
end) --我得去搞个卡密系统🤔
StatusLabel.Size = UDim2.new(0.85, 0, 0, 40)
StatusLabel.Position = UDim2.new(0.075, 0, 0.75, 0)
StatusLabel.BackgroundTransparency = 1
StatusLabel.Font = Enum.Font.Gotham
StatusLabel.Text = "请选择脚本类型"
StatusLabel.TextColor3 = Color3.fromRGB(220, 220, 220)
StatusLabel.TextSize = 16
StatusLabel.Parent = MainFrame
ButtonCorner.CornerRadius = UDim.new(0, 8)
ButtonCorner.Parent = FreeScriptButton
ButtonCorner2.CornerRadius = UDim.new(0, 8)
ButtonCorner2.Parent = PaidScriptButton