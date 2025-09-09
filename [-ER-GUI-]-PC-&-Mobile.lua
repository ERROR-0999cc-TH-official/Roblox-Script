-- ===================================================
-- Loading GUI


-- ===================================================
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local camera = workspace.CurrentCamera

-- ===================================================
-- ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "StatusBubblePanel"
screenGui.DisplayOrder = 2147483647
screenGui.Parent = CoreGui

-- Main Frame
local mainAFrame = Instance.new("Frame")
mainAFrame.Size = UDim2.new(0, 350, 0, 150)
mainAFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainAFrame.Parent = screenGui
mainAFrame.Active = true
mainAFrame.ZIndex = 500

-- Center Frame
local function centerFrame()
local viewportSize = camera and camera.ViewportSize or Vector2.new(1280, 720)
mainAFrame.Position = UDim2.new(
0, (viewportSize.X - mainAFrame.AbsoluteSize.X) / 2,
0, (viewportSize.Y - mainAFrame.AbsoluteSize.Y) / 3.5
)
end

centerFrame()
RunService.Heartbeat:Wait()

-- Corner & Stroke
local mainACorner = Instance.new("UICorner")
mainACorner.CornerRadius = UDim.new(0, 10)
mainACorner.Parent = mainAFrame

local mainAStroke = Instance.new("UIStroke")
mainAStroke.Thickness = 2
mainAStroke.Color = Color3.fromRGB(60, 60, 60)
mainAStroke.Parent = mainAFrame

-- ===================================================
-- อัปเดตตำแหน่งเมื่อจอเปลี่ยน
workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
centerFrame()
end)

-- ===================================================
-- Label ข้อความ
local loadingLabel = Instance.new("TextLabel")
loadingLabel.Size = UDim2.new(1, 0, 0, 30)
loadingLabel.Position = UDim2.new(0, 0, 0, 25)
loadingLabel.BackgroundTransparency = 1
loadingLabel.Text = "[ ER GUI Script Loading... ]"
loadingLabel.TextSize = 20
loadingLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
loadingLabel.TextScaled = true
loadingLabel.Font = Enum.Font.SourceSansBold
loadingLabel.ZIndex = 1000
loadingLabel.Parent = mainAFrame

-- Frame แถบโหลด (พื้นหลัง)
local progressBg = Instance.new("Frame")
progressBg.Size = UDim2.new(0.8, 0, 0, 25)
progressBg.Position = UDim2.new(0.1, 0, 0.6, 15)
progressBg.BackgroundColor3 = Color3.fromRGB(20, 40, 120)
progressBg.BorderSizePixel = 0
progressBg.ZIndex = 1000
progressBg.Parent = mainAFrame
Instance.new("UICorner", progressBg)

-- แถบโหลด (จริง)
local progressBar = Instance.new("Frame")
progressBar.Size = UDim2.new(0, 0, 1, 0)
progressBar.BackgroundColor3 = Color3.fromRGB(150, 220, 255)
progressBar.BorderSizePixel = 0
progressBar.ZIndex = 1001
progressBar.Parent = progressBg
Instance.new("UICorner", progressBar)

-- ===================================================
-- คุมความเร็วโหลด (เวลาทั้งหมด วินาที)
local loadingTime = 1.5

-- โหลดแบบ Progress (ไหลลื่น)
task.spawn(function()
    progressBar:TweenSize(UDim2.new(1, 0, 1, 0), "Out", "Quad", loadingTime, true)

    -- รอจนกว่าจะโหลดเสร็จ
    task.wait(loadingTime + 0.1)

    -- ปิดหน้าต่างโหลด
    mainAFrame:Destroy()
    screenGui:Destroy()

-- ===================================================
-- ER GUI


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

-- ===================================================

local camera = workspace.CurrentCamera

-- สร้าง ScreenGui
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ERGUI"
screenGui.DisplayOrder = 2147483647
screenGui.Parent = CoreGui

-- สร้าง mainFrame
local mainFrame = Instance.new("Frame")
mainFrame.Size = UDim2.new(0, 600, 0, 325)
mainFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainFrame.BackgroundTransparency = 0
mainFrame.Parent = screenGui
mainFrame.Active = true
mainFrame.ZIndex = 500

-- Center Frame
local function centerFrame()
local viewportSize = camera and camera.ViewportSize or Vector2.new(1280, 720)
mainFrame.Position = UDim2.new(
0, (viewportSize.X - mainFrame.AbsoluteSize.X) / 2,
0, (viewportSize.Y - mainFrame.AbsoluteSize.Y) / 10
)
end

centerFrame()
RunService.Heartbeat:Wait()

-- มุมโค้งและเส้นขอบ
local mainCorner = Instance.new("UICorner")
mainCorner.CornerRadius = UDim.new(0, 10)
mainCorner.Parent = mainFrame

local mainStroke = Instance.new("UIStroke")
mainStroke.Thickness = 1.5
mainStroke.Color = Color3.fromRGB(60, 60, 60)
mainStroke.Parent = mainFrame

-- ===================================================
-- Title
local titleLabel = Instance.new("TextLabel")
titleLabel.Size = UDim2.new(1, -70, 0, 25)
titleLabel.Position = UDim2.new(0, 10, 0, 5)
titleLabel.BackgroundTransparency = 1
titleLabel.Text = "[ ER GUI ] | V.0.4.6 | By ERC-Technology (ERC)"
titleLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
titleLabel.Font = Enum.Font.SourceSansBold
titleLabel.TextSize = 18
titleLabel.TextXAlignment = Enum.TextXAlignment.Left
titleLabel.ZIndex = 10000
titleLabel.Parent = mainFrame

-- Separator
local separator = Instance.new("Frame")
separator.Size = UDim2.new(1, 0, 0, 2)
separator.Position = UDim2.new(0, 0, 0, 35)
separator.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
separator.BorderSizePixel = 0
separator.ZIndex = 10000
separator.Parent = mainFrame

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
closeButton.Parent = mainFrame
closeButton.MouseButton1Click:Connect(function()
screenGui:Destroy()
end)

-- Minimize Button
local minimizeButton = Instance.new("TextButton")
minimizeButton.Size = UDim2.new(0, 25, 0, 25)
minimizeButton.Position = UDim2.new(1, -60, 0, 5)
minimizeButton.BackgroundTransparency = 1
minimizeButton.Text = "—"
minimizeButton.TextColor3 = Color3.fromRGB(255, 255, 255)
minimizeButton.Font = Enum.Font.SourceSansBold
minimizeButton.TextSize = 18
minimizeButton.ZIndex = 10000
minimizeButton.Parent = mainFrame

-- Icon Button [ER]
local iconButton = Instance.new("TextButton")
iconButton.Size = UDim2.new(0, 45, 0, 45)
iconButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
iconButton.Text = "[ER]"
iconButton.TextColor3 = Color3.fromRGB(255, 255, 255)
iconButton.Font = Enum.Font.SourceSansBold
iconButton.TextSize = 20
iconButton.ZIndex = 500
iconButton.Parent = screenGui
iconButton.Active = true

local iconCorner = Instance.new("UICorner")
iconCorner.CornerRadius = UDim.new(0, 10)
iconCorner.Parent = iconButton

-- ===================================================
-- ตัวแปรเก็บตำแหน่ง iconButton
local iconPosition = nil

-- จัดตำแหน่ง iconButton
local function centerIcon()
if not iconPosition then
local viewportSize = camera and camera.ViewportSize or Vector2.new(1280, 720)
iconButton.Position = UDim2.new(
0, (viewportSize.X - iconButton.AbsoluteSize.X) / 2,
0, (viewportSize.Y - iconButton.AbsoluteSize.Y) / 100
)
            iconPosition = iconButton.Position
          else
          
        iconButton.Position = iconPosition
      end
      
    end

-- ===================================================
-- Drag function
local function enableDrag(frame)
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

enableDrag(mainFrame)
enableDrag(iconButton)

-- ===================================================
-- Restore / Minimize
iconButton.MouseButton1Click:Connect(function()
mainFrame.Visible = true
iconButton.Visible = false
end)

minimizeButton.MouseButton1Click:Connect(function()
mainFrame.Visible = false
iconButton.Visible = true
centerIcon()
end)

-- ===================================================
-- เริ่มต้น
mainFrame.Visible = true
iconButton.Visible = false

-- ===================================================
-- Center ทั้งคู่เมื่อขนาดจอเปลี่ยน
workspace.CurrentCamera:GetPropertyChangedSignal("ViewportSize"):Connect(function()
centerFrame()
centerIcon()
end)

-- ===================================================  
-- Sidebar (เมนูด้านซ้าย)  
local sidebar = Instance.new("Frame")  
sidebar.Size = UDim2.new(0, 180, 1, -35)  
sidebar.Position = UDim2.new(0, 0, 0, 35)  
sidebar.BackgroundColor3 = Color3.fromRGB(25, 25, 25)  
sidebar.BorderSizePixel = 0  
sidebar.BackgroundTransparency = 1  
sidebar.ZIndex = 20000
sidebar.Active = true
sidebar.Parent = mainFrame  
  
-- เส้นขั้น Sidebar | Content  
local sidebarDivider = Instance.new("Frame")  
sidebarDivider.Size = UDim2.new(0, 2, 1, 0)  
sidebarDivider.Position = UDim2.new(1, -2, 0, 0)  
sidebarDivider.BackgroundColor3 = Color3.fromRGB(60, 60, 60)  
sidebarDivider.BorderSizePixel = 0  
sidebarDivider.BackgroundTransparency = 0  
sidebarDivider.ZIndex = 20000
sidebarDivider.Parent = sidebar  
  
-- Content Frame (ScrollingFrame)
local contentFrame = Instance.new("ScrollingFrame")
contentFrame.Size = UDim2.new(1, -180, 1, -35)
contentFrame.Position = UDim2.new(0, 180, 0, 35)
contentFrame.BackgroundTransparency = 1
contentFrame.ScrollBarThickness = 10 -- ความหนาของ Scrollbar
contentFrame.ScrollBarImageColor3 = Color3.fromRGB(120,120,120) -- สี Scrollbar
contentFrame.CanvasSize = UDim2.new(0, 0, 0, 350) -- ตั้งค่าเอง (ตัวอย่าง ###px)
contentFrame.ScrollBarImageTransparency = 0
contentFrame.ZIndex = 10000
contentFrame.Active = true
contentFrame.Parent = mainFrame

-- Layout
local listLayout = Instance.new("UIListLayout")
listLayout.SortOrder = Enum.SortOrder.LayoutOrder
listLayout.Padding = UDim.new(0, 60)
listLayout.Parent = contentFrame

-- ===================================================  
-- สร้าง Pages (ฟังก์ชัน)  
local pages = {}  
  
local function switchPage(pageName)  
for name, page in pairs(pages) do  
page.Visible = (name == pageName)  
end  
end  

-- ===================================================  
-- Page: WalkSpeed & JumpPower (Horizontal Slider)
local wsjpPage = Instance.new("Frame")
wsjpPage.Size = UDim2.new(1, 0, 1, 0)
wsjpPage.BackgroundTransparency = 1
wsjpPage.Visible = false
wsjpPage.Active = true
wsjpPage.Parent = contentFrame
pages["• Player"] = wsjpPage

-- ปรับค่าเดิน/กระโดด
-- Default & Max
local defaultWalkSpeed = 16
local defaultJumpPower = 50
local maxValue = 300

local player = game.Players.LocalPlayer
local currentWalkSpeed = defaultWalkSpeed
local currentJumpPower = defaultJumpPower

-- Function: Apply WalkSpeed & JumpPower to Character
local function applyStats()
    local character = player.Character
    if character then
        local humanoid = character:FindFirstChildWhichIsA("Humanoid")
        if humanoid then
            -- ใช้ pcall กัน error
            pcall(function()
                humanoid.WalkSpeed = currentWalkSpeed
                humanoid.JumpPower = currentJumpPower
            end)
        end
    end
end

-- Event: CharacterAdded
player.CharacterAdded:Connect(function(char)
    -- รอ Humanoid โผล่มา
    local humanoid = char:WaitForChild("Humanoid", 5)
    task.wait(0.2)
    applyStats()
end)

-- Anti-Override Loop
local RunService = game:GetService("RunService")
RunService.Heartbeat:Connect(function()
    local character = player.Character
    if character then
        local humanoid = character:FindFirstChildWhichIsA("Humanoid")
        if humanoid then
            -- ตรวจสอบค่าก่อนเซ็ต
            if humanoid.WalkSpeed ~= currentWalkSpeed then
                pcall(function()
                    humanoid.WalkSpeed = currentWalkSpeed
                end)
            end
            if humanoid.JumpPower ~= currentJumpPower then
                pcall(function()
                    humanoid.JumpPower = currentJumpPower
                end)
            end
        end
    end
end)

-- ===================================================
-- Function: Create Horizontal Slider
-- (เหมือนโค้ดเดิมของคุณ)
-- ===================================================
local function createHorizontalSlider(parent, name, default, yPos, callback)
    local container = Instance.new("Frame")
    container.Size = UDim2.new(1, -50, 0, 50)
    container.Position = UDim2.new(0, 20, 0, yPos)
    container.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    container.Active = true
    container.ZIndex = 20000
    container.Parent = parent
    Instance.new("UICorner", container)

    local nameLabel = Instance.new("TextLabel")
    nameLabel.Size = UDim2.new(0, 70, 0, 15)
    nameLabel.Position = UDim2.new(0, 8, 0, 5)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = name
    nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    nameLabel.Font = Enum.Font.SourceSansBold
    nameLabel.TextSize = 16
    nameLabel.TextXAlignment = Enum.TextXAlignment.Left
    nameLabel.ZIndex = 50000
    nameLabel.Parent = container

    local sliderBar = Instance.new("Frame")
    sliderBar.Size = UDim2.new(1, -16, 0, 18)
    sliderBar.Position = UDim2.new(0, 8, 0, 25)
    sliderBar.BackgroundColor3 = Color3.fromRGB(20, 40, 120)
    sliderBar.BorderSizePixel = 0
    sliderBar.ZIndex = 30000
    sliderBar.Parent = container
    Instance.new("UICorner", sliderBar)

    local fill = Instance.new("Frame")
    fill.Size = UDim2.new((default / maxValue), 0, 1, 0)
    fill.Position = UDim2.new(0, 0, 0, 0)
    fill.BackgroundColor3 = Color3.fromRGB(150, 220, 255)
    fill.BorderSizePixel = 0
    fill.ZIndex = 40000
    fill.Parent = sliderBar
    Instance.new("UICorner", fill)

    local valueLabel = Instance.new("TextLabel")
    valueLabel.Size = UDim2.new(0, 40, 1, 0)
    valueLabel.Position = UDim2.new(0, -14, 0, 0)
    valueLabel.BackgroundTransparency = 1
    valueLabel.Text = tostring(default)
    valueLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    valueLabel.Font = Enum.Font.SourceSansBold
    valueLabel.TextSize = 16
    valueLabel.TextXAlignment = Enum.TextXAlignment.Right
    valueLabel.ZIndex = 50000
    valueLabel.Parent = sliderBar

    -- Dragging Logic
    local UIS = game:GetService("UserInputService")
    local dragging = false

    local function updateValue(inputPosX)
        local barPosX = sliderBar.AbsolutePosition.X
        local barWidth = sliderBar.AbsoluteSize.X
        local relPos = math.clamp((inputPosX - barPosX) / barWidth, 0, 1)
        local value = math.floor(default + relPos * (maxValue - default))
        fill.Size = UDim2.new((value - default) / (maxValue - default), 0, 1, 0)
        valueLabel.Text = tostring(value)
        callback(value)
    end

    sliderBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            updateValue(input.Position.X)
        end
    end)

    sliderBar.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            updateValue(input.Position.X)
        end
    end)

    sliderBar.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
        end
    end)

    UIS.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            updateValue(input.Position.X)
        end
    end)
    UIS.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
        end
    end)
end

-- ===================================================
-- Create Sliders
-- ===================================================
createHorizontalSlider(wsjpPage, "Walk Speed", defaultWalkSpeed, 10, function(value)
    currentWalkSpeed = value
    applyStats()
end)

createHorizontalSlider(wsjpPage, "Jump Power", defaultJumpPower, 70, function(value)
    currentJumpPower = value
    applyStats()
end)

applyStats()

-- ==========================
-- Page: A
-- ==========================
-- เว้นระยะ y ตามสไลเดอร์ก่อนหน้า
local cheatStartY = 140

-- Function: Create Toggle
local function createToggle(parent, name, yPos)
    local container = Instance.new("Frame")
    container.Size = UDim2.new(1, -50, 0, 35)
    container.Position = UDim2.new(0, 20, 0, yPos)
    container.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    container.ZIndex = 20000
    container.Parent = parent
    local corner = Instance.new("UICorner", container)

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0.6, 0, 1, 0)
    label.Position = UDim2.new(0, 5, 0, 0)
    label.BackgroundTransparency = 1
    label.Text = name
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.Font = Enum.Font.SourceSansBold
    label.TextSize = 16
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.ZIndex = 20001
    label.Parent = container

    local toggleBtn = Instance.new("TextButton")
    toggleBtn.Size = UDim2.new(0.5, -5, 1, 0)
    toggleBtn.Position = UDim2.new(0.5, 5, 0, 0)
    toggleBtn.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    toggleBtn.Text = ""
    toggleBtn.BackgroundTransparency = 1
    toggleBtn.ZIndex = 20001
    toggleBtn.Parent = container
    local toggleCorner = Instance.new("UICorner", toggleBtn)

    local statusLight = Instance.new("Frame")
    statusLight.Size = UDim2.new(0, 20, 0, 20)
    statusLight.Position = UDim2.new(1, -35, 0.5, -10)
    statusLight.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    statusLight.BorderSizePixel = 0
    statusLight.ZIndex = 20002
    statusLight.Parent = container
    local lightCorner = Instance.new("UICorner", statusLight)

    local state = false
    toggleBtn.MouseButton1Click:Connect(function()
        state = not state
        statusLight.BackgroundColor3 = state and Color3.fromRGB(255,255,255) or Color3.fromRGB(100, 100, 100)
    end)

    return function() return state end
end

-- สร้าง Toggle
local getInfiniteJump = createToggle(wsjpPage, "Infinite Jump", cheatStartY)

local getFly = createToggle(wsjpPage, "Fly", cheatStartY + 40)

local getNoClip = createToggle(wsjpPage, "NoClip", cheatStartY + 80)

local getShiftLock = createToggle(wsjpPage, "Shift Lock", cheatStartY + 120)

-- ==========================
-- Infinite Jump Logic
-- ==========================

local uis = game:GetService("UserInputService")
local runService = game:GetService("RunService")
local player = game.Players.LocalPlayer

local jumpPressed = false
local humanoid

-- ฟังก์ชันเชื่อม humanoid กับตัวละครปัจจุบัน
local function updateHumanoid()
    local character = player.Character
    if character then
        humanoid = character:WaitForChild("Humanoid")
    end
end

-- เริ่มต้นกับตัวละครแรก
updateHumanoid()

-- อัปเดตทุกครั้งที่รีเซ็ตตัวละคร
player.CharacterAdded:Connect(updateHumanoid)

-- กดปุ่ม Space (PC)
uis.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.Space then
        jumpPressed = true
    end
end)

uis.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Keyboard and input.KeyCode == Enum.KeyCode.Space then
        jumpPressed = false
    end
end)

-- มือถือ (JumpRequest)
uis.JumpRequest:Connect(function()
    jumpPressed = true
end)

uis.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.Touch then
        jumpPressed = false
    end
end)

-- ตรวจทุกเฟรม
runService.RenderStepped:Connect(function()
    if getInfiniteJump() and jumpPressed and humanoid then
        humanoid:ChangeState(Enum.HumanoidStateType.Jumping)
    end
end)

-- ==========================
-- Fly Logic
-- ==========================

local flyEnabled = false
local flySpeedMultiplier = 2 -- คูณความเร็วปัจจุบันของตัวละคร
local humanoid, root

-- ฟังก์ชันอัปเดต humanoid และ root
local function updateCharacter()
local character = player.Character
if character then
humanoid = character:WaitForChild("Humanoid")
root = character:WaitForChild("HumanoidRootPart")
end
end

updateCharacter()
player.CharacterAdded:Connect(updateCharacter)

-- ใช้ RenderStepped เพื่อเคลื่อนตัวละคร
runService.RenderStepped:Connect(function(delta)
if humanoid and root and getFly() then
-- ใช้ MoveDirection ของ Humanoid (PC/มือถือ)
local moveDir = humanoid.MoveDirection

-- ความเร็วตาม Humanoid.MoveSpeed  
    local speed = humanoid.WalkSpeed * flySpeedMultiplier  

    -- ความเร็วแนวดิ่ง  
    local yVel = 0  
    if uis:IsKeyDown(Enum.KeyCode.Space) then yVel = speed end  
    if uis:IsKeyDown(Enum.KeyCode.LeftControl) then yVel = -speed end  

    -- กำหนด Velocity  
    root.Velocity = moveDir * speed + Vector3.new(0, yVel, 0)  
end

end)

-- ==========================
-- NoClip Logic
-- ==========================

runService.Stepped:Connect(function()
    local character = player.Character
    if character and getNoClip() then
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                part.CanCollide = false
            end
        end
    end
end)

-- ==========================
-- ShiftLock Logic
-- ==========================

local RunService = game:GetService("RunService")
local UserInputService = game:GetService("UserInputService")
local player = game.Players.LocalPlayer
local camera = workspace.CurrentCamera

local shiftLockEnabled = false
local humanoid, root

-- ฟังก์ชันอัปเดต humanoid/root
local function updateCharacter()
    local character = player.Character
    if character then
        humanoid = character:WaitForChild("Humanoid")
        root = character:WaitForChild("HumanoidRootPart")
    end
end

updateCharacter()
player.CharacterAdded:Connect(updateCharacter)

-- ฟังก์ชันเปิด/ปิด ShiftLock
local function setShiftLock(state)
    shiftLockEnabled = state
    if shiftLockEnabled then
        if humanoid then
            camera.CameraSubject = humanoid
            camera.CameraType = Enum.CameraType.Custom
        end
        UserInputService.MouseBehavior = Enum.MouseBehavior.LockCenter
    else
        UserInputService.MouseBehavior = Enum.MouseBehavior.Default
    end
end

-- RenderStepped: ตรวจสอบ GUI toggle
RunService.RenderStepped:Connect(function()
    if humanoid and root then
        if getShiftLock() then
            if not shiftLockEnabled then
                setShiftLock(true)
            end
            -- หมุนตัวละครตามกล้อง
            local lookVector = camera.CFrame.LookVector
            local flatLook = Vector3.new(lookVector.X, 0, lookVector.Z)
            if flatLook.Magnitude > 0 then
                root.CFrame = CFrame.new(root.Position, root.Position + flatLook)
            end
        else
            if shiftLockEnabled then
                setShiftLock(false)
            end
        end
    end
end)

-- ===================================================  
-- Page: Visual
local VisualPage = Instance.new("Frame")
VisualPage.Size = UDim2.new(1, 0, 1, 0)
VisualPage.BackgroundTransparency = 1
VisualPage.Visible = false
VisualPage.Active = true
VisualPage.Parent = contentFrame
pages["• Visual"] = VisualPage

-- Function: Create Horizontal Slider (ใช้ layout เดิม)
local function createHorizontalSlider(parent, name, minValue, maxValue, default, yPos, callback)
    local container = Instance.new("Frame")
    container.Size = UDim2.new(1, -50, 0, 50)
    container.Position = UDim2.new(0, 20, 0, yPos)
    container.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    container.Active = true
    container.ZIndex = 20000
    container.Parent = parent
    Instance.new("UICorner", container)

    -- Label (เหมือนต้นแบบ)
    local nameLabel = Instance.new("TextLabel")
    nameLabel.Size = UDim2.new(0, 70, 0, 15)
    nameLabel.Position = UDim2.new(0, 8, 0, 5)
    nameLabel.BackgroundTransparency = 1
    nameLabel.Text = name
    nameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    nameLabel.Font = Enum.Font.SourceSansBold
    nameLabel.TextSize = 16
    nameLabel.TextXAlignment = Enum.TextXAlignment.Left
    nameLabel.ZIndex = 50000
    nameLabel.Parent = container

    -- Slider Bar (เหมือนต้นแบบ)
    local sliderBar = Instance.new("Frame")
    sliderBar.Size = UDim2.new(1, -16, 0, 18)
    sliderBar.Position = UDim2.new(0, 8, 0, 25)
    sliderBar.BackgroundColor3 = Color3.fromRGB(20, 40, 120)
    sliderBar.BorderSizePixel = 0
    sliderBar.ZIndex = 30000
    sliderBar.Parent = container
    Instance.new("UICorner", sliderBar)

    -- Fill (เหมือนต้นแบบ)
    local fill = Instance.new("Frame")
    local relDefault = (default - minValue) / (maxValue - minValue)
    fill.Size = UDim2.new(relDefault, 0, 1, 0)
    fill.BackgroundColor3 = Color3.fromRGB(150, 220, 255)
    fill.BorderSizePixel = 0
    fill.ZIndex = 40000
    fill.Parent = sliderBar
    Instance.new("UICorner", fill)

    -- Value Label (เหมือนต้นแบบ: อยู่ด้านซ้ายใน Bar)
    local valueLabel = Instance.new("TextLabel")
    valueLabel.Size = UDim2.new(0, 40, 1, 0)
    valueLabel.Position = UDim2.new(0, -14, 0, 0)
    valueLabel.BackgroundTransparency = 1
    valueLabel.Text = tostring(default)
    valueLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    valueLabel.Font = Enum.Font.SourceSansBold
    valueLabel.TextSize = 16
    valueLabel.TextXAlignment = Enum.TextXAlignment.Right
    valueLabel.ZIndex = 50000
    valueLabel.Parent = sliderBar

    -- Dragging Logic
    local UIS = game:GetService("UserInputService")
    local dragging = false

    local function updateValue(inputPosX)
        local barPosX = sliderBar.AbsolutePosition.X
        local barWidth = sliderBar.AbsoluteSize.X
        local relPos = math.clamp((inputPosX - barPosX) / barWidth, 0, 1)
        local value = math.floor(minValue + relPos * (maxValue - minValue))

        fill.Size = UDim2.new(relPos, 0, 1, 0)
        valueLabel.Text = tostring(value)
        callback(value)
    end

    sliderBar.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            updateValue(input.Position.X)
        end
    end)

    UIS.InputChanged:Connect(function(input)
        if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
            updateValue(input.Position.X)
        end
    end)

    UIS.InputEnded:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = false
        end
    end)
end

-- Brightness Slider (-10 ถึง 10) + Auto-Reapply
local targetExposure = 0

local function applyExposure()
    if game.Lighting.ExposureCompensation ~= targetExposure then
        game.Lighting.ExposureCompensation = targetExposure
    end
end

createHorizontalSlider(VisualPage, "Fullbright", -10, 10, 0, 10, function(value)
    targetExposure = value
    applyExposure()
end)

-- เฝ้าดูทุกเฟรม กันรีเซ็ต
game:GetService("RunService").RenderStepped:Connect(applyExposure)

-- เฝ้าตอนตัวละครเปลี่ยนใหม่
game.Players.LocalPlayer.CharacterAdded:Connect(function()
    task.wait(0.5)
    applyExposure()
end)

-- ==========================
-- Page: B
-- ==========================
-- เว้นระยะ y ตามสไลเดอร์ก่อนหน้า
local cheatStartY = 80

-- Function: Create Toggle
local function createToggle(parent, name, yPos)
    local container = Instance.new("Frame")
    container.Size = UDim2.new(1, -50, 0, 35)
    container.Position = UDim2.new(0, 20, 0, yPos)
    container.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    container.ZIndex = 20000
    container.Parent = VisualPage
    local corner = Instance.new("UICorner", container)

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(0.6, 0, 1, 0)
    label.Position = UDim2.new(0, 5, 0, 0)
    label.BackgroundTransparency = 1
    label.Text = name
    label.TextColor3 = Color3.fromRGB(255, 255, 255)
    label.Font = Enum.Font.SourceSansBold
    label.TextSize = 16
    label.TextXAlignment = Enum.TextXAlignment.Left
    label.ZIndex = 20001
    label.Parent = container

    local toggleBtn = Instance.new("TextButton")
    toggleBtn.Size = UDim2.new(0.5, -5, 1, 0)
    toggleBtn.Position = UDim2.new(0.5, 5, 0, 0)
    toggleBtn.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
    toggleBtn.Text = ""
    toggleBtn.BackgroundTransparency = 1
    toggleBtn.ZIndex = 20001
    toggleBtn.Parent = container
    local toggleCorner = Instance.new("UICorner", toggleBtn)

    local statusLight = Instance.new("Frame")
    statusLight.Size = UDim2.new(0, 20, 0, 20)
    statusLight.Position = UDim2.new(1, -35, 0.5, -10)
    statusLight.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
    statusLight.BorderSizePixel = 0
    statusLight.ZIndex = 20002
    statusLight.Parent = container
    local lightCorner = Instance.new("UICorner", statusLight)

    local state = false
    toggleBtn.MouseButton1Click:Connect(function()
        state = not state
        statusLight.BackgroundColor3 = state and Color3.fromRGB(255,255,255) or Color3.fromRGB(100, 100, 100)
    end)

    return function() return state end
end

-- สร้าง Toggle
local getRemovefog = createToggle(wsjpPage, "Remove fog", cheatStartY)

local getESPPlayer = createToggle(wsjpPage, "ESP Player", cheatStartY + 40)

local getblackscreen = createToggle(wsjpPage, "black screen", cheatStartY + 80)

local getWhitescreen = createToggle(wsjpPage, "white screen", cheatStartY + 120)

-- ==========================
-- Remove fog Logic
-- ==========================

local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

RunService.RenderStepped:Connect(function()
    if getRemovefog() then
        local lighting = game:GetService("Lighting")
        lighting.FogEnd = 0
        lighting.FogStart = 0
    end
end)

-- ==========================
-- ESP Player Logic
-- ==========================
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

local ESPs = {}

-- ฟังก์ชันสร้าง ESP
local function createESP(targetPlayer)
    if not targetPlayer.Character then return end
    local hrp = targetPlayer.Character:FindFirstChild("HumanoidRootPart") or targetPlayer.Character:FindFirstChild("Torso")
    if not hrp then return end

    -- ถ้ามีแล้วและยังอยู่กับ Character เดิม → ไม่ต้องสร้างใหม่
    if ESPs[targetPlayer] and ESPs[targetPlayer].Parent and ESPs[targetPlayer].Parent.Parent == targetPlayer.Character then
        return
    end

    local billboard = Instance.new("BillboardGui")
    billboard.Name = "ESP"
    billboard.Adornee = hrp
    billboard.Size = UDim2.new(0, 100, 0, 50)
    billboard.StudsOffset = Vector3.new(0, 3, 0)
    billboard.AlwaysOnTop = true
    billboard.Parent = targetPlayer.Character

    local label = Instance.new("TextLabel")
    label.Size = UDim2.new(1,0,1,0)
    label.BackgroundTransparency = 1
    label.TextColor3 = Color3.fromRGB(255,255,255)
    label.Font = Enum.Font.SourceSansBold
    label.TextScaled = false
    label.TextSize = 15 -- ขนาดเริ่มต้น
    label.Parent = billboard

    ESPs[targetPlayer] = label
end

-- ฟังก์ชันอัพเดท ESP
local function updateESP()
    local localChar = LocalPlayer.Character
    if not localChar then return end

    local localHRP = localChar:FindFirstChild("HumanoidRootPart") or localChar:FindFirstChild("Torso")
    if not localHRP then return end

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            createESP(player)

            if ESPs[player] and player.Character then
                local hrp = player.Character:FindFirstChild("HumanoidRootPart") or player.Character:FindFirstChild("Torso")
                if hrp then
                    local distance = (hrp.Position - localHRP.Position).Magnitude
                    ESPs[player].Text = string.format("[ %s | %.1f m ]", player.Name, distance)

                    -- รับขนาดตัวอักษรตามระยะทาง
                    -- ใกล้สุด = 15 | ไกลสุด = 25
                    local newSize = math.clamp(distance / 5, 15, 25)
                    ESPs[player].TextSize = newSize

                    -- เปิด/ปิดตามปุ่ม toggle
                    ESPs[player].Visible = getESPPlayer()
                end
            end
        end
    end
end

-- อัพเดทตลอดเวลา
RunService.RenderStepped:Connect(updateESP)

-- ลบ ESP เมื่อผู้เล่นออก
Players.PlayerRemoving:Connect(function(player)
    if ESPs[player] and ESPs[player].Parent then
        ESPs[player].Parent:Destroy()
    end
    ESPs[player] = nil
end)

-- สร้าง ESP ใหม่เมื่อผู้เล่น spawn
Players.PlayerAdded:Connect(function(player)
    player.CharacterAdded:Connect(function()
        createESP(player)
    end)
end)

-- รีสร้าง ESP ของทุกคนเมื่อเรา respawn
LocalPlayer.CharacterAdded:Connect(function()
    for _, v in pairs(Players:GetPlayers()) do
        if v ~= LocalPlayer then
            createESP(v)
        end
    end
end)

-- ==========================
-- black screen & White screen Logic
-- ==========================
-- GUI หลักสำหรับหน้าจอคลุม
local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ERScreen"
screenGui.ResetOnSpawn = false
screenGui.IgnoreGuiInset = true
screenGui.ScreenInsets = Enum.ScreenInsets.None
screenGui.DisplayOrder = 2000000
screenGui.Parent = CoreGui

-- Frame สำหรับ Black screen
local blackFrame = Instance.new("Frame")
blackFrame.Size = UDim2.fromScale(1, 1)
blackFrame.Position = UDim2.fromScale(0, 0)
blackFrame.BorderSizePixel = 0
blackFrame.BackgroundColor3 = Color3.new(0, 0, 0) -- สีดำ
blackFrame.Visible = false
blackFrame.Active = true
blackFrame.ZIndex = 200
blackFrame.Parent = screenGui

-- Frame สำหรับ White screen
local whiteFrame = Instance.new("Frame")
whiteFrame.Size = UDim2.fromScale(1, 1)
whiteFrame.Position = UDim2.fromScale(0, 0)
whiteFrame.BorderSizePixel = 0
whiteFrame.BackgroundColor3 = Color3.new(1, 1, 1) -- สีขาว
whiteFrame.Visible = false
whiteFrame.Active = true
whiteFrame.ZIndex = 100
whiteFrame.Parent = screenGui


-- ==========================
-- black screen Logic
-- ==========================
task.spawn(function()
    while task.wait(0.1) do
        if getblackscreen() then
            blackFrame.Visible = true
        else
            blackFrame.Visible = false
        end
    end
end)

-- ==========================
-- White screen Logic
-- ==========================
task.spawn(function()
    while task.wait(0.1) do
        if getWhitescreen() then
            whiteFrame.Visible = true
        else
            whiteFrame.Visible = false
        end
    end
end)

-- ===================================================  
-- Page: Teleport
local TeleportPage = Instance.new("Frame")
TeleportPage.Size = UDim2.new(1, 0, 1, 0)
TeleportPage.BackgroundTransparency = 1
TeleportPage.Visible = false
TeleportPage.Active = true
TeleportPage.Parent = contentFrame
pages["• Teleport"] = TeleportPage

-- ==========================
-- Teleport to Player
-- ==========================
local containerA = Instance.new("Frame")
containerA.Size = UDim2.new(1, -50, 0, 50)
containerA.Position = UDim2.new(0, 20, 0, 10)
containerA.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
containerA.Active = true
containerA.ZIndex = 20000
containerA.Parent = TeleportPage
Instance.new("UICorner", containerA)

local nameLabelA = Instance.new("TextLabel")
nameLabelA.Size = UDim2.new(0, 70, 0, 15)
nameLabelA.Position = UDim2.new(0, 8, 0, 5)
nameLabelA.BackgroundTransparency = 1
nameLabelA.Text = "Teleport to Player"
nameLabelA.TextColor3 = Color3.fromRGB(255, 255, 255)
nameLabelA.Font = Enum.Font.SourceSansBold
nameLabelA.TextSize = 16
nameLabelA.TextXAlignment = Enum.TextXAlignment.Left
nameLabelA.ZIndex = 20001
nameLabelA.Parent = containerA

local nameLabelB = Instance.new("TextLabel")
nameLabelB.Size = UDim2.new(0, 70, 0, 15)
nameLabelB.Position = UDim2.new(0, 8, 0, 25)
nameLabelB.BackgroundTransparency = 1
nameLabelB.Text = "• ใช้เทเลพอร์ตไปยังผู้เล่นในเซิร์ฟเวอร์ปัจจุบัน (ใช้ชื่อจริง)"
nameLabelB.TextColor3 = Color3.fromRGB(255, 255, 255)
nameLabelB.Font = Enum.Font.SourceSansBold
nameLabelB.TextSize = 12
nameLabelB.TextXAlignment = Enum.TextXAlignment.Left
nameLabelB.ZIndex = 20001
nameLabelB.Parent = containerA

local PlayerIDA = Instance.new("TextBox")
PlayerIDA.Size = UDim2.new(0, 140, 0, 35)
PlayerIDA.Position = UDim2.new(0, 225, 0, 7)
PlayerIDA.PlaceholderText = "Player name..."
PlayerIDA.Font = Enum.Font.SourceSansBold
PlayerIDA.TextSize = 16
PlayerIDA.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
PlayerIDA.TextColor3 = Color3.fromRGB(255, 255, 255)
PlayerIDA.Text = ""
PlayerIDA.ZIndex = 20001
PlayerIDA.Parent = containerA
PlayerIDA.TextWrapped = true
local idBoxCorner = Instance.new("UICorner", PlayerIDA)

-- ==========================
-- Page: C
-- ==========================
local cheatStartY = 70

-- Function: Create Toggle
local function createToggle(parent, name, yPos)
local container = Instance.new("Frame")
container.Size = UDim2.new(1, -50, 0, 35)
container.Position = UDim2.new(0, 20, 0, yPos)
container.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
container.ZIndex = 20000
container.Parent = parent
Instance.new("UICorner", container)

local label = Instance.new("TextLabel")  
label.Size = UDim2.new(0.6, 0, 1, 0)  
label.Position = UDim2.new(0, 5, 0, 0)  
label.BackgroundTransparency = 1  
label.Text = name  
label.TextColor3 = Color3.fromRGB(255, 255, 255)  
label.Font = Enum.Font.SourceSansBold  
label.TextSize = 16  
label.TextXAlignment = Enum.TextXAlignment.Left  
label.ZIndex = 20001  
label.Parent = container  

local toggleBtn = Instance.new("TextButton")  
toggleBtn.Size = UDim2.new(0.5, -5, 1, 0)  
toggleBtn.Position = UDim2.new(0.5, 5, 0, 0)  
toggleBtn.BackgroundTransparency = 1  
toggleBtn.Text = ""  
toggleBtn.ZIndex = 20001  
toggleBtn.Parent = container  
Instance.new("UICorner", toggleBtn)  

local statusLight = Instance.new("Frame")  
statusLight.Size = UDim2.new(0, 20, 0, 20)  
statusLight.Position = UDim2.new(1, -35, 0.5, -10)  
statusLight.BackgroundColor3 = Color3.fromRGB(100, 100, 100)  
statusLight.BorderSizePixel = 0  
statusLight.ZIndex = 20002  
statusLight.Parent = container  
Instance.new("UICorner", statusLight)  

local state = false  

local function setState(val)  
    state = val  
    statusLight.BackgroundColor3 = state and Color3.fromRGB(255,255,255) or Color3.fromRGB(100,100,100)  
end  

toggleBtn.MouseButton1Click:Connect(function()  
    setState(not state)  
end)  

return function() return state end, setState

end

-- ==========================
-- Create Toggles
-- ==========================
local getTPPlayer, setTPPlayer = createToggle(TeleportPage, "Teleport to Player (Once)", cheatStartY)

local getTPPlayerLooped, setTPPlayerLooped = createToggle(TeleportPage, "Teleport to Player (Looped)", cheatStartY + 40)

-- ==========================
-- Teleport Functions
-- ==========================
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local function findPlayerInServerByUsername(name)
for _, plr in ipairs(Players:GetPlayers()) do
if string.lower(plr.Name) == string.lower(name) then
return plr
end
end
return nil
end

local function teleportOnce(nameText)
local target = findPlayerInServerByUsername(nameText)
local myChar = LocalPlayer.Character
if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") and myChar then
local targetPos = target.Character.HumanoidRootPart.Position + Vector3.new(0, 2, 0)
if myChar:FindFirstChild("HumanoidRootPart") and myChar.PivotTo then
myChar:PivotTo(CFrame.new(targetPos))
else
myChar:MoveTo(targetPos)
end
end
end

local function teleportLoop(nameText)
local target = findPlayerInServerByUsername(nameText)
local myChar = LocalPlayer.Character
if target and target.Character and target.Character:FindFirstChild("HumanoidRootPart") and myChar then
local targetPos = target.Character.HumanoidRootPart.Position + Vector3.new(0, 2, 0)
if myChar:FindFirstChild("HumanoidRootPart") and myChar.PivotTo then
myChar:PivotTo(CFrame.new(targetPos))
else
myChar:MoveTo(targetPos)
end
end
end

-- ==========================
-- Teleport Once (Manual Reset)
-- ==========================
local alreadyUsed = false

task.spawn(function()
while task.wait(0) do
local state = getTPPlayer()
if state and not alreadyUsed and PlayerIDA.Text ~= "" then
teleportOnce(PlayerIDA.Text)
alreadyUsed = true -- ใช้แล้ว 1 ครั้ง
elseif not state then
-- ถ้าผู้ใช้กดปิดปุ่ม → รีเซ็ตให้พร้อมใช้งานใหม่
alreadyUsed = false
end
end
end)

-- ==========================
-- Teleport Loop
-- ==========================
task.spawn(function()
while task.wait(0) do
if getTPPlayerLooped() and PlayerIDA.Text ~= "" then
teleportLoop(PlayerIDA.Text)
end
end
end)

-- ===================================================
-- Page: Music Player
local musicPage = Instance.new("Frame")
musicPage.Size = UDim2.new(1, 0, 1, 0)
musicPage.BackgroundTransparency = 1
musicPage.Visible = false
musicPage.Active = true
musicPage.Parent = contentFrame
pages["• Music"] = musicPage

-- Sound
local sound = Instance.new("Sound")
sound.Parent = workspace
sound.Volume = 0.5
sound.Looped = false

-- Song Name Display
local songNameLabel = Instance.new("TextLabel")
songNameLabel.Size = UDim2.new(0, 200, 0, 30)
songNameLabel.Position = UDim2.new(0, 20, 0, 10)
songNameLabel.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
songNameLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
songNameLabel.Text = "Song : None"
songNameLabel.Font = Enum.Font.SourceSansBold
songNameLabel.TextSize = 16
songNameLabel.TextWrapped = true
songNameLabel.ZIndex = 20000
songNameLabel.Parent = musicPage
local songNameCorner = Instance.new("UICorner", songNameLabel)

-- เวลาเพลง
local timeLabel = Instance.new("TextLabel")
timeLabel.Size = UDim2.new(0, 150, 0, 30)
timeLabel.Position = UDim2.new(0, 240, 0, 10)
timeLabel.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
timeLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
timeLabel.Text = "00:00 | 00:00"
timeLabel.Font = Enum.Font.SourceSansBold
timeLabel.TextSize = 16
timeLabel.TextWrapped = true
timeLabel.ZIndex = 20000
timeLabel.Parent = musicPage
local timeLabelCorner = Instance.new("UICorner",timeLabel)

-- แปลงวินาที mm:ss
local function formatTime(sec)
    sec = math.floor(sec)
    local m = math.floor(sec / 60)
    local s = sec % 60
    return string.format("%02d:%02d", m, s)
end

-- อัปเดตเวลาเพลง
RunService.RenderStepped:Connect(function()
    if sound.SoundId ~= "" and sound.TimeLength > 0 then
        timeLabel.Text = formatTime(sound.TimePosition).." | "..formatTime(sound.TimeLength)
    else
        timeLabel.Text = "00:00 | 00:00"
    end
end)

-- Input ID
local idBox = Instance.new("TextBox")
idBox.Size = UDim2.new(0, 200, 0, 30)
idBox.Position = UDim2.new(0, 20, 0, 50)
idBox.PlaceholderText = "Music ID"
idBox.Font = Enum.Font.SourceSansBold
idBox.TextSize = 16
idBox.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
idBox.TextColor3 = Color3.fromRGB(255, 255, 255)
idBox.Text = "113484899770989"
idBox.ZIndex = 20000
idBox.Parent = musicPage
idBox.TextWrapped = true
local idBoxCorner = Instance.new("UICorner", idBox)

idBox:GetPropertyChangedSignal("Text"):Connect(function()
    local id = tonumber(idBox.Text)
    if id then
        local success, info = pcall(function()
            return game:GetService("MarketplaceService"):GetProductInfo(id)
        end)
        if success then
            songNameLabel.Text = "Song : "..info.Name
        else
            songNameLabel.Text = "Song : Unknown"
        end
    else
        songNameLabel.Text = "Song : None"
    end
end)

-- Buttons
local playBtn = Instance.new("TextButton")
playBtn.Size = UDim2.new(0, 65, 0, 30)
playBtn.Position = UDim2.new(0, 240, 0, 50)
playBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
playBtn.Text = "Play"
playBtn.Font = Enum.Font.SourceSansBold
playBtn.TextSize = 16
playBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
playBtn.ZIndex = 20000
playBtn.Parent = musicPage
local playBtnCorner = Instance.new("UICorner", playBtn)

local stopBtn = Instance.new("TextButton")
stopBtn.Size = UDim2.new(0, 65, 0, 30)
stopBtn.Position = UDim2.new(0, 325, 0, 50)
stopBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
stopBtn.Text = "Stop"
stopBtn.Font = Enum.Font.SourceSansBold
stopBtn.TextSize = 16
stopBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
stopBtn.ZIndex = 20000
stopBtn.Parent = musicPage
local stopBtnCorner = Instance.new("UICorner", stopBtn)

-- Volume
local volDisplay = Instance.new("TextBox")
volDisplay.Size = UDim2.new(0, 200, 0, 30)
volDisplay.Position = UDim2.new(0, 20, 0, 90)
volDisplay.Text = "Volume : 0.5"
volDisplay.Font = Enum.Font.SourceSansBold
volDisplay.TextSize = 16
volDisplay.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
volDisplay.TextColor3 = Color3.fromRGB(255, 255, 255)
volDisplay.ClearTextOnFocus = false
volDisplay.TextEditable = false
volDisplay.ZIndex = 20000
volDisplay.Parent = musicPage
local volDisplayCorner = Instance.new("UICorner", volDisplay)

local volDownBtn = Instance.new("TextButton")
volDownBtn.Size = UDim2.new(0, 65, 0, 30)
volDownBtn.Position = UDim2.new(0, 240, 0, 90)
volDownBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
volDownBtn.Text = "—"
volDownBtn.Font = Enum.Font.SourceSansBold
volDownBtn.TextSize =16
volDownBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
volDownBtn.ZIndex = 20000
volDownBtn.Parent = musicPage
local volDownBtnCorner = Instance.new("UICorner", volDownBtn)

local volUpBtn = Instance.new("TextButton")
volUpBtn.Size = UDim2.new(0, 65, 0, 30)
volUpBtn.Position = UDim2.new(0, 325, 0, 90)
volUpBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
volUpBtn.Text = "+"
volUpBtn.Font = Enum.Font.SourceSansBold
volUpBtn.TextSize = 18
volUpBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
volUpBtn.ZIndex = 20000
volUpBtn.Parent = musicPage
local volUpBtnCorner = Instance.new("UICorner", volUpBtn)

-- Repeat & Reset
local repeatFrame = Instance.new("Frame")
repeatFrame.Size = UDim2.new(0, 200, 0, 30)
repeatFrame.Position = UDim2.new(0, 20, 0, 130)
repeatFrame.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
repeatFrame.ZIndex = 20000
repeatFrame.Parent = musicPage
local repeatFrameCorner = Instance.new("UICorner", repeatFrame)

local repeatLabel = Instance.new("TextLabel")
repeatLabel.Size = UDim2.new(0.5, -5, 1, 0)
repeatLabel.Position = UDim2.new(0, 0, 0, 0)
repeatLabel.BackgroundTransparency = 1
repeatLabel.Text = "Repeat"
repeatLabel.Font = Enum.Font.SourceSansBold
repeatLabel.TextSize = 16
repeatLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
repeatLabel.Font = Enum.Font.SourceSansBold
repeatLabel.TextSize = 16
repeatLabel.ZIndex = 20001
repeatLabel.Parent = repeatFrame

local repeatSwitch = Instance.new("TextButton")
repeatSwitch.Size = UDim2.new(0.5, -5, 1, 0)
repeatSwitch.Position = UDim2.new(0.5, 5, 0, 0)
repeatSwitch.BackgroundColor3 = Color3.fromRGB(70, 70, 70)
repeatSwitch.Text = ""
repeatSwitch.ZIndex = 20001
repeatSwitch.Parent = repeatFrame
repeatSwitch.BackgroundTransparency = 1
local repeatSwitchCorner = Instance.new("UICorner", repeatSwitch)

local repeatLight = Instance.new("Frame")
repeatLight.Size = UDim2.new(0, 20, 0, 20)
repeatLight.Position = UDim2.new(1, -25, 0.5, -10)
repeatLight.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
repeatLight.BorderSizePixel = 0
repeatLight.ZIndex = 20002
repeatLight.Parent = repeatFrame
local repeatLightCorner = Instance.new("UICorner", repeatLight)

local resetBtn = Instance.new("TextButton")
resetBtn.Size = UDim2.new(0, 65, 0, 30)
resetBtn.Position = UDim2.new(0, 240, 0, 130)
resetBtn.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
resetBtn.Text = "Reset"
resetBtn.Font = Enum.Font.SourceSansBold
resetBtn.TextSize = 16
resetBtn.TextColor3 = Color3.fromRGB(255, 255, 255)
resetBtn.ZIndex = 20000
resetBtn.Parent = musicPage
local resetBtnCorner = Instance.new("UICorner", resetBtn)

-- Copy ID
local copyButton = Instance.new("TextButton")
copyButton.Size = UDim2.new(0, 65, 0, 30)
copyButton.Position = UDim2.new(0, 325, 0, 130)
copyButton.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
copyButton.Text = "Copy ID"
copyButton.TextColor3 = Color3.fromRGB(255, 255, 255)
copyButton.Font = Enum.Font.SourceSansBold
copyButton.TextSize = 16
copyButton.ZIndex = 20000
copyButton.Parent = musicPage
local copyButtonCorner = Instance.new("UICorner", copyButton)

local isRepeat = false
local canReset = false

repeatSwitch.MouseButton1Click:Connect(function()
    isRepeat = not isRepeat
    repeatLight.BackgroundColor3 = isRepeat and Color3.fromRGB(255, 255, 255) or Color3.fromRGB(100, 100, 100)
end)

-- Events
playBtn.MouseButton1Click:Connect(function()
    local id = tonumber(idBox.Text)
    if id then
        local assetId = "rbxassetid://"..id
        if sound.SoundId ~= assetId then
            sound.SoundId = assetId
            sound.TimePosition = 0
            sound:Play()
        else
            if not sound.IsPlaying then
                sound:Resume()
            end
        end
        canReset = true
    end
end)

stopBtn.MouseButton1Click:Connect(function()
    if sound.IsPlaying then
        sound:Pause()
    end
    canReset = true
end)

resetBtn.MouseButton1Click:Connect(function()
    if canReset then
        sound.TimePosition = 0
        sound:Play()
        canReset = false
    end
end)

volDownBtn.MouseButton1Click:Connect(function()
    sound.Volume = math.clamp(sound.Volume - 0.5, 0, 10)
    volDisplay.Text = "Volume : "..sound.Volume
end)

volUpBtn.MouseButton1Click:Connect(function()
    sound.Volume = math.clamp(sound.Volume + 0.5, 0, 10)
    volDisplay.Text = "Volume : "..sound.Volume
end)

-- เล่นซ้ำอัตโนมัติเมื่อเพลงจบ
sound.Ended:Connect(function()
    if isRepeat then
        sound.TimePosition = 0
        sound:Play()
    else
        canReset = true
    end
end)
  
-- Copy / Clear
copyButton.MouseButton1Click:Connect(function()
    setclipboard(idBox.Text) -- คัดลอก
end)

-- ===================================================  
-- Sidebar Buttons
local menuItems = {"• Player", "• Visual", "• Teleport", "• Music"}
local currentSelected = nil -- เก็บปุ่มที่ถูกเลือก

for i, name in ipairs(menuItems) do
    -- สร้าง Frame เป็นพื้นหลังปุ่ม
    local buttonFrame = Instance.new("Frame")
    buttonFrame.Size = UDim2.new(1, -18, 0, 32)
    buttonFrame.Position = UDim2.new(0, 8, 0, (i-1) * 40 + 10)
    buttonFrame.BackgroundTransparency = 1
    buttonFrame.ZIndex = 20000
    buttonFrame.Parent = sidebar
    local resetBtnCorner = Instance.new("UICorner", buttonFrame)

    -- ปุ่มจริง (TextButton) อยู่ใน Frame
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, 0, 1, 0)
    button.Position = UDim2.new(0, 2, 0, 0) -- ขยับออกจากซ้าย
    button.BackgroundTransparency = 1
    button.Text = name
    button.TextColor3 = Color3.fromRGB(200, 200, 200)
    button.Font = Enum.Font.SourceSansBold
    button.TextSize = 18
    button.TextXAlignment = Enum.TextXAlignment.Left
    button.ZIndex = 20001
    button.Parent = buttonFrame

    -- ขอบ (UIStroke) ครอบ Frame
    local stroke = Instance.new("UIStroke")
    stroke.Thickness = 2
    stroke.Color = Color3.fromRGB(40, 40, 40)
    stroke.Enabled = false -- ปิดไว้ก่อน
    stroke.Parent = buttonFrame

    button.MouseEnter:Connect(function()
        if currentSelected ~= button then
            button.TextColor3 = Color3.fromRGB(255, 255, 255)
        end
    end)

    button.MouseLeave:Connect(function()
        if currentSelected ~= button then
            button.TextColor3 = Color3.fromRGB(200, 200, 200)
        end
    end)

    button.MouseButton1Click:Connect(function()
        -- ปิดขอบปุ่มเก่า
        if currentSelected then
            currentSelected.TextColor3 = Color3.fromRGB(200, 200, 200)
            currentSelected.Parent:FindFirstChildOfClass("UIStroke").Enabled = false
        end

        -- เลือกปุ่มใหม่
        currentSelected = button
        button.TextColor3 = Color3.fromRGB(255, 255, 255)
        stroke.Enabled = true

        -- สลับหน้า
        switchPage(name)
    end)
end

-- เปิดหน้าแรกตอนเริ่ม
switchPage("• Player")

-- ตั้งให้ปุ่มแรกถูกเลือกตั้งแต่แรก
local firstButton = sidebar:FindFirstChildWhichIsA("Frame"):FindFirstChild("TextButton")
if firstButton then
    firstButton.MouseButton1Click:Fire()
end
  
-- ===================================================
-- Loading GUI


-- ===================================================
-- จบ
end)

-- ===================================================
