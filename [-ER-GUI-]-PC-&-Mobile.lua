-- ===================================================
local CoreGui = game:GetService("CoreGui")

local UserInputService = game:GetService("UserInputService")
local uis = game:GetService("UserInputService")

local Players = game:GetService("Players")
local players = game:GetService("Players")

local Player = game.Players.LocalPlayer
local player = game.Players.LocalPlayer

local Player = Players.LocalPlayer
local player = Players.LocalPlayer

local RunService = game:GetService("RunService")
local runService = game:GetService("RunService")

local Camera = workspace.CurrentCamera
local camera = workspace.CurrentCamera

-- ===================================================

-- ==========================
-- ฟังก์ชันสร้าง UICorner สำหรับมุมโค้ง
-- ==========================
local function createUICorner(parent, radius)
    local corner = Instance.new("UICorner")
    corner.CornerRadius = radius or UDim.new(0, 10) -- default 10
    corner.Parent = parent
    return corner
end

--[[
• ตัวอย่างการใช้งาน
createUICorner(ใส่ชื่อ object ที่ต้องการ) 

• แบบนี้
createUICorner(MainFrame)
]]

-- ===================================================
-- สร้าง ScreenERGui
local ScreenERGui = Instance.new("ScreenGui")
ScreenERGui.Name = "ERGUI"
ScreenERGui.DisplayOrder = 2147483647
ScreenERGui.ResetOnSpawn = false

-- ทำให้แสดงผลอยู่เหนือ Executor บางตัว
if gethui then
	ScreenERGui.Parent = gethui()
elseif syn and syn.protect_gui then
	syn.protect_gui(ScreenERGui)
	ScreenERGui.Parent = CoreGui
elseif CoreGui:FindFirstChild("RobloxGui") then
	ScreenERGui.Parent = CoreGui:FindFirstChild("RobloxGui")
else
	ScreenERGui.Parent = CoreGui
end

-- สร้าง MainFrame
local MainFrame = Instance.new("Frame")
MainFrame.Size = UDim2.new(0, 290, 0, 200)
MainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
MainFrame.BackgroundTransparency = 0
MainFrame.Parent = ScreenERGui
MainFrame.Active = true
MainFrame.ZIndex = 500
createUICorner(MainFrame)

-- Center MainFrame
local function centerMainFrame()
local viewportSize = camera and camera.ViewportSize or Vector2.new(1280, 720)
MainFrame.Position = UDim2.new(
0, (viewportSize.X - MainFrame.AbsoluteSize.X) / 2,
0, (viewportSize.Y - MainFrame.AbsoluteSize.Y) / 3.5
)
end

centerMainFrame()

-- ===================================================
-- เส้นขอบ
local MainStroke = Instance.new("UIStroke")
MainStroke.Thickness = 1.5
MainStroke.Color = Color3.fromRGB(60, 60, 60)
MainStroke.Parent = MainFrame

-- ===================================================
-- Title GUI
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -70, 0, 25)
titleLabel.Position = UDim2.new(0, 10, 0, 5)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "ER GUI | Service stopped"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.TextSize = 18
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.ZIndex = 10000
titleLabel.Parent = MainFrame

-- Separator
local separator = Instance.new("Frame")
separator.Size = UDim2.new(1, 0, 0, 2)
separator.Position = UDim2.new(0, 0, 0, 35)
separator.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
separator.BorderSizePixel = 0
separator.ZIndex = 10000
separator.Parent = MainFrame

-- Close Button
local closeButton = Instance.new("TextButton")
closeButton.Size = UDim2.new(0, 25, 0, 25)
closeButton.Position = UDim2.new(1, -30, 0, 5)
closeButton.BackgroundTransparency = 1
closeButton.Text = "X"
closeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
closeButton.Font = Enum.Font.SourceSansBold
closeButton.TextSize = 18
closeButton.ZIndex = 10000
closeButton.Parent = MainFrame
closeButton.MouseButton1Click:Connect(function()
ScreenERGui:Destroy()
end)

-- ===================================================
-- ข้อความแจ้งเตือนกลาง GUI
local messageLabel = Instance.new("TextLabel")
messageLabel.Size = UDim2.new(1, -20, 0, 40)
messageLabel.Position = UDim2.new(0, 10, 0, 50)
messageLabel.BackgroundTransparency = 1
messageLabel.Text = "ER GUI | หยุดให้บริการแล้วขอภัยในความไม่สะดวก"
messageLabel.TextColor3 = Color3.fromRGB(255, 75, 75) -- แดงอ่อนแจ้งเตือน
messageLabel.Font = Enum.Font.SourceSansSemibold
messageLabel.TextSize = 20
messageLabel.TextWrapped = true
messageLabel.TextXAlignment = Enum.TextXAlignment.Center
messageLabel.TextYAlignment = Enum.TextYAlignment.Center
messageLabel.ZIndex = 10000
messageLabel.Parent = MainFrame

-- ===================================================
-- ฟังก์ชันสร้าง Drag function สำหรับการลาก object
local function enableDragA(frame)
local dragging = false
local dragInput, dragStart, startPos

local function update(input)  
	local delta = input.Position - dragStart  
	frame.Position = UDim2.new(  
		startPos.X.Scale, startPos.X.Offset + delta.X,  
		startPos.Y.Scale, startPos.Y.Offset + delta.Y  
	)  
	if frame == iconButton then  
		iconPosition = frame.Position  
	end  
end  

frame.InputBegan:Connect(function(input)  
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then  
		dragging = true  
		dragStart = input.Position  
		startPos = frame.Position  
		dragInput = input  
		input.Changed:Connect(function()  
			if input.UserInputState == Enum.UserInputState.End then  
				dragging = false  
				dragInput = nil  
			end  
		end)  
	end  
end)  

UserInputService.InputChanged:Connect(function(input)  
	if dragging and input == dragInput then  
		update(input)  
	end  
end)

end

--[[
• ตัวอย่างการใช้งาน
enableDragA(ใส่ชื่อ object ที่ต้องการ)

• แบบนี้
enableDragA(MainFrame)
]]

enableDragA(MainFrame) -- เรียกใช้งาน Drag function

-- ===================================================
-- เริ่มต้น
MainFrame.Visible = true

-- ===================================================
-- Center ทั้งคู่เมื่อขนาดจอเปลี่ยน
workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
centerMainFrame()
end)

-- ===================================================