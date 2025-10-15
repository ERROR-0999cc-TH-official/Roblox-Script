-- ===================================================
-- Script Loading...
warn("[ ❖ ] Script Loading...")

warn("[ ❖ ] Loading Service-Data...")

warn("[ ❖ ] Loading Service-@ERC.Roblox.SP.os...")

warn("[ ❖ ] Loading Service-@ERC.RBX.SP.001.lua ..")

warn("[ ❖ ] All Services Loaded Successfully!")

warn("[ ❖ ] Script Loaded Successfully!")

-- ===================================================
-- information
print([[
◇==============================================◇
 
            ◆ Welcome Back everyone!

◇==============================================◇
❖ ER GUI           | by ERC-Technology™ | ERROR 0999cc TH official
❖ Contact channels | TikTok @error_0999cc_th_official ro ERC-Technology™
❖ Version          | V.0.4.9
❖ Project          | ERC-RBX-SP-001
❖ Working          | It works with all games (except for games with some security systems that may not work)
◇==============================================◇
]])

-- Roblox Information
local function safeCall(fn, ...)
	local ok, result = pcall(fn, ...)
	return ok and result or "N/A"
end

warn("[ ❖ ] Data system information...")

-- Roblox Information
local info = {
	Executor = typeof(identifyexecutor) == "function" and identifyexecutor() or "Roblox Studio",
	RobloxVersion = safeCall(version),
	Username = safeCall(function() return game.Players.LocalPlayer.Name end),
	DisplayName = safeCall(function() return game.Players.LocalPlayer.DisplayName end),
	UserID = safeCall(function() return game.Players.LocalPlayer.UserId end),
	GameName = safeCall(function() return game:GetService("MarketplaceService"):GetProductInfo(game.PlaceId).Name end),
	PlaceID = safeCall(function() return game.PlaceId end),
	JobID = safeCall(function() return game.JobId end),
}

-- แสดงผล
print("◇==============================================◇")
warn("❖ Executor       | " .. info.Executor)
warn("❖ Roblox Version | " .. info.RobloxVersion)
warn("❖ Username       | " .. info.Username .. " @" .. info.DisplayName .. " ")
warn("❖ User ID        | " .. info.UserID)
warn("❖ Game           | " .. info.GameName)
warn("❖ Place ID       | " .. info.PlaceID)
warn("❖ Job ID         | " .. info.JobID)
print("◇==============================================◇")

-- Copy communication channels
setclipboard("Discord Server : https://discord.gg/kShJy84u2v | TikTok : @error_0999cc_th_official") -- คัดลอก

-- ===================================================
-- Loading GUI


-- ===================================================
local CoreGui = game:GetService("CoreGui")
local RunService = game:GetService("RunService")
local camera = workspace.CurrentCamera

-- ===================================================
-- ScreenGui
local screenGuiUS = Instance.new("ScreenGui")
screenGuiUS.Name = "StatusBubblePanel"
screenGuiUS.DisplayOrder = 2147483647
screenGuiUS.Parent = CoreGui

-- Main Frame
local mainAFrame = Instance.new("Frame")
mainAFrame.Size = UDim2.new(0, 350, 0, 150)
mainAFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
mainAFrame.Parent = screenGuiUS
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
loadingLabel.Text = "Script Loading..."
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
local loadingTime = 0.05

-- โหลดแบบ Progress (ไหลลื่น)
task.spawn(function()
    progressBar:TweenSize(UDim2.new(1, 0, 1, 0), "Out", "Quad", loadingTime, true)

    -- รอจนกว่าจะโหลดเสร็จ
    task.wait(loadingTime + 0.1)

    -- ปิดหน้าต่างโหลด
    mainAFrame:Destroy()
    screenGuiUS:Destroy()

-- ===================================================
-- ER GUI
task.wait(0.01) -- ปรับความเร็ว

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
titleLabel.Text = "ER GUI | V.0.4.9 | By ERC-Technology™ (ERC)"
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

-- Icon Button
local iconButton = Instance.new("TextButton")
iconButton.Size = UDim2.new(0, 45, 0, 45)
iconButton.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
iconButton.ZIndex = 500
iconButton.Text = "[ER]"
iconButton.TextColor3 = Color3.fromRGB(255, 255, 255)
iconButton.Font = Enum.Font.SourceSansBold
iconButton.TextSize = 20
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
contentFrame.Size = UDim2.new(1, -180, 1, -37.8)
contentFrame.Position = UDim2.new(0, 180, 0, 37.8)
contentFrame.BackgroundTransparency = 1
contentFrame.ScrollBarThickness = 5 -- ความหนาของ Scrollbar
contentFrame.ScrollBarImageColor3 = Color3.fromRGB(120,120,120) -- สี Scrollbar
contentFrame.CanvasSize = UDim2.new(0, 0, 0, 600) -- ตั้งค่าเอง (ตัวอย่าง ###px)
contentFrame.ScrollBarImageTransparency = 0
contentFrame.ZIndex = 10000
contentFrame.Active = true
contentFrame.Parent = mainFrame

-- Layout
local listLayoutA = Instance.new("UIListLayout")
listLayoutA.SortOrder = Enum.SortOrder.LayoutOrder
listLayoutA.Padding = UDim.new(0, 10)
listLayoutA.Parent = contentFrame

local UIPaddingA = Instance.new("UIPadding")
UIPaddingA.PaddingTop = UDim.new(0, 5)
UIPaddingA.PaddingBottom = UDim.new(0, 5)
UIPaddingA.Parent = contentFrame


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
    task.wait(0.01)
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
    container.Parent = wsjpPage
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
    container.Parent = wsjpPage
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

local getFly = createToggle(wsjpPage, "Fly (GUI)", cheatStartY + 40)

local getNoClip = createToggle(wsjpPage, "NoClip", cheatStartY + 80)

local getShiftLock = createToggle(wsjpPage, "Shift Lock", cheatStartY + 120)

-- ==========================
-- Infinite Jump Logic (PC & Mobile)
-- ==========================
local uis = game:GetService("UserInputService")
local runService = game:GetService("RunService")
local player = game.Players.LocalPlayer

local jumpPressed = false
local humanoid

-- ฟังก์ชันเชื่อม humanoid กับตัวละครปัจจุบัน
local function updateHumanoid()
    local character = player.Character or player.CharacterAdded:Wait()
    humanoid = character:WaitForChild("Humanoid")
end

-- เริ่มต้นกับตัวละครแรก
updateHumanoid()

-- อัปเดตทุกครั้งที่รีเซ็ตตัวละคร
player.CharacterAdded:Connect(updateHumanoid)

-- PC (Spacebar)
uis.InputBegan:Connect(function(input, gameProcessed)
    if gameProcessed then return end
    if input.KeyCode == Enum.KeyCode.Space then
        jumpPressed = true
    end
end)

uis.InputEnded:Connect(function(input)
    if input.KeyCode == Enum.KeyCode.Space then
        jumpPressed = false
    end
end)

-- Mobile (เฉพาะปุ่มกระโดด)
uis.JumpRequest:Connect(function()
    jumpPressed = true
end)

-- ปล่อยปุ่มกระโดด (มือถือไม่มี InputEnded ของ Jump โดยตรง)
-- เลยรีเซ็ตเองหลังจากดีเลย์สั้น ๆ
uis.JumpRequest:Connect(function()
    task.delay(0.001, function()
        jumpPressed = false
    end)
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
local CoreGui = game:GetService("CoreGui")
local UserInputService = game:GetService("UserInputService")

-- สร้าง ScreenGui หลัก
local main = Instance.new("ScreenGui")
main.Name = "FlyGUI"
main.DisplayOrder = 50
main.Parent = CoreGui
main.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
main.ResetOnSpawn = false

-- กรอบหลัก
local Frame = Instance.new("Frame")
Frame.Parent = main
Frame.Active = true
Frame.Visible = false
Frame.Size = UDim2.new(0, 220, 0, 115)
Frame.Position = UDim2.new(0.3, 0, 0.3, 0)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)

-- ขอบโค้ง
local frameCorner = Instance.new("UICorner")
frameCorner.CornerRadius = UDim.new(0, 10)
frameCorner.Parent = Frame

-- เส้นขอบ
local frameStroke = Instance.new("UIStroke")
frameStroke.Thickness = 1.5
frameStroke.Color = Color3.fromRGB(60, 60, 60)
frameStroke.Parent = Frame

-- Title
local Title = Instance.new("TextLabel")
Title.Parent = Frame
Title.Size = UDim2.new(1, -10, 0, 25)
Title.Position = UDim2.new(0, 10, 0, 5)
Title.BackgroundTransparency = 1
Title.Text = "Fly GUI"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 18
Title.TextXAlignment = Enum.TextXAlignment.Left

-- เส้นแบ่ง
local separator = Instance.new("Frame")
separator.Size = UDim2.new(1, 0, 0, 2)
separator.Position = UDim2.new(0, 0, 0, 30)
separator.BackgroundColor3 = Color3.fromRGB(60, 60, 60)
separator.BorderSizePixel = 0
separator.Parent = Frame

-- ปุ่ม UP
local up = Instance.new("TextButton")
up.Parent = Frame
up.Size = UDim2.new(0, 60, 0, 30)
up.Position = UDim2.new(0.05, 0, 0.35, 0)
up.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
up.Text = "UP"
up.TextColor3 = Color3.fromRGB(255, 255, 255)
up.Font = Enum.Font.SourceSansBold
up.TextSize = 16
Instance.new("UICorner", up)

-- ปุ่ม DOWN
local down = Instance.new("TextButton")
down.Parent = Frame
down.Size = UDim2.new(0, 60, 0, 30)
down.Position = UDim2.new(0.05, 0, 0.70, 0)
down.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
down.Text = "DOWN"
down.TextColor3 = Color3.fromRGB(255, 255, 255)
down.Font = Enum.Font.SourceSansBold
down.TextSize = 16
Instance.new("UICorner", down)

-- ปุ่ม + Speed
local plus = Instance.new("TextButton")
plus.Parent = Frame
plus.Size = UDim2.new(0, 60, 0, 30)
plus.Position = UDim2.new(0.35, 0, 0.35, 0)
plus.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
plus.Text = "+"
plus.TextColor3 = Color3.fromRGB(255, 255, 255)
plus.Font = Enum.Font.SourceSansBold
plus.TextSize = 16
Instance.new("UICorner", plus)

-- ปุ่ม - Speed
local mine = Instance.new("TextButton")
mine.Parent = Frame
mine.Size = UDim2.new(0, 60, 0, 30)
mine.Position = UDim2.new(0.35, 0, 0.70, 0)
mine.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
mine.Text = "-"
mine.TextColor3 = Color3.fromRGB(255, 255, 255)
mine.Font = Enum.Font.SourceSansBold
mine.TextSize = 16
Instance.new("UICorner", mine)

-- ช่อง Speed แสดงค่า
local speed = Instance.new("TextLabel")
speed.Parent = Frame
speed.Size = UDim2.new(0, 60, 0, 30)
speed.Position = UDim2.new(0.65, 0, 0.35, 0)
speed.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
speed.Text = "1"
speed.TextColor3 = Color3.fromRGB(255, 255, 255)
speed.Font = Enum.Font.SourceSansBold
speed.TextSize = 16
speed.TextWrapped = true
Instance.new("UICorner", speed)

-- ปุ่ม Fly Toggle
local onof = Instance.new("TextButton")
onof.Parent = Frame
onof.Size = UDim2.new(0, 60, 0, 30)
onof.Position = UDim2.new(0.65, 0, 0.70, 0)
onof.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
onof.Text = "Fly"
onof.TextColor3 = Color3.fromRGB(255, 255, 255)
onof.Font = Enum.Font.SourceSansBold
onof.TextSize = 16
Instance.new("UICorner", onof)

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

enableDrag(Frame)

speeds = 1

local speaker = game:GetService("Players").LocalPlayer

local chr = game.Players.LocalPlayer.Character
local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")

nowe = false

Duration = 5;

onof.MouseButton1Down:connect(function()

	if nowe == true then
		nowe = false

		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,true)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,true)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.RunningNoPhysics)
	else 
		nowe = true



		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
		game.Players.LocalPlayer.Character.Animate.Disabled = true
		local Char = game.Players.LocalPlayer.Character
		local Hum = Char:FindFirstChildOfClass("Humanoid") or Char:FindFirstChildOfClass("AnimationController")

		for i,v in next, Hum:GetPlayingAnimationTracks() do
			v:AdjustSpeed(0)
		end
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Climbing,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.FallingDown,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Flying,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Freefall,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.GettingUp,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Jumping,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Landed,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Physics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.PlatformStanding,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Ragdoll,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Running,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.RunningNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Seated,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.StrafingNoPhysics,false)
		speaker.Character.Humanoid:SetStateEnabled(Enum.HumanoidStateType.Swimming,false)
		speaker.Character.Humanoid:ChangeState(Enum.HumanoidStateType.Swimming)
	end




	if game:GetService("Players").LocalPlayer.Character:FindFirstChildOfClass("Humanoid").RigType == Enum.HumanoidRigType.R6 then



		local plr = game.Players.LocalPlayer
		local torso = plr.Character.Torso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", torso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = torso.CFrame
		local bv = Instance.new("BodyVelocity", torso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			game:GetService("RunService").RenderStepped:Wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end
			--	game.Players.LocalPlayer.Character.Animate.Disabled = true
			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false




	else
		local plr = game.Players.LocalPlayer
		local UpperTorso = plr.Character.UpperTorso
		local flying = true
		local deb = true
		local ctrl = {f = 0, b = 0, l = 0, r = 0}
		local lastctrl = {f = 0, b = 0, l = 0, r = 0}
		local maxspeed = 50
		local speed = 0


		local bg = Instance.new("BodyGyro", UpperTorso)
		bg.P = 9e4
		bg.maxTorque = Vector3.new(9e9, 9e9, 9e9)
		bg.cframe = UpperTorso.CFrame
		local bv = Instance.new("BodyVelocity", UpperTorso)
		bv.velocity = Vector3.new(0,0.1,0)
		bv.maxForce = Vector3.new(9e9, 9e9, 9e9)
		if nowe == true then
			plr.Character.Humanoid.PlatformStand = true
		end
		while nowe == true or game:GetService("Players").LocalPlayer.Character.Humanoid.Health == 0 do
			wait()

			if ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0 then
				speed = speed+.5+(speed/maxspeed)
				if speed > maxspeed then
					speed = maxspeed
				end
			elseif not (ctrl.l + ctrl.r ~= 0 or ctrl.f + ctrl.b ~= 0) and speed ~= 0 then
				speed = speed-1
				if speed < 0 then
					speed = 0
				end
			end
			if (ctrl.l + ctrl.r) ~= 0 or (ctrl.f + ctrl.b) ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (ctrl.f+ctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(ctrl.l+ctrl.r,(ctrl.f+ctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
				lastctrl = {f = ctrl.f, b = ctrl.b, l = ctrl.l, r = ctrl.r}
			elseif (ctrl.l + ctrl.r) == 0 and (ctrl.f + ctrl.b) == 0 and speed ~= 0 then
				bv.velocity = ((game.Workspace.CurrentCamera.CoordinateFrame.lookVector * (lastctrl.f+lastctrl.b)) + ((game.Workspace.CurrentCamera.CoordinateFrame * CFrame.new(lastctrl.l+lastctrl.r,(lastctrl.f+lastctrl.b)*.2,0).p) - game.Workspace.CurrentCamera.CoordinateFrame.p))*speed
			else
				bv.velocity = Vector3.new(0,0,0)
			end

			bg.cframe = game.Workspace.CurrentCamera.CoordinateFrame * CFrame.Angles(-math.rad((ctrl.f+ctrl.b)*50*speed/maxspeed),0,0)
		end
		ctrl = {f = 0, b = 0, l = 0, r = 0}
		lastctrl = {f = 0, b = 0, l = 0, r = 0}
		speed = 0
		bg:Destroy()
		bv:Destroy()
		plr.Character.Humanoid.PlatformStand = false
		game.Players.LocalPlayer.Character.Animate.Disabled = false
		tpwalking = false



	end





end)

local tis

up.MouseButton1Down:connect(function()
	tis = up.MouseEnter:connect(function()
		while tis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,1,0)
		end
	end)
end)

up.MouseLeave:connect(function()
	if tis then
		tis:Disconnect()
		tis = nil
	end
end)

local dis

down.MouseButton1Down:connect(function()
	dis = down.MouseEnter:connect(function()
		while dis do
			wait()
			game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,-1,0)
		end
	end)
end)

down.MouseLeave:connect(function()
	if dis then
		dis:Disconnect()
		dis = nil
	end
end)


game:GetService("Players").LocalPlayer.CharacterAdded:Connect(function(char)
	wait(0.7)
	game.Players.LocalPlayer.Character.Humanoid.PlatformStand = false
	game.Players.LocalPlayer.Character.Animate.Disabled = false

end)


plus.MouseButton1Down:connect(function()
	speeds = speeds + 1
	speed.Text = speeds
	if nowe == true then


		tpwalking = false
		for i = 1, speeds do
			spawn(function()

				local hb = game:GetService("RunService").Heartbeat	


				tpwalking = true
				local chr = game.Players.LocalPlayer.Character
				local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
				while tpwalking and hb:Wait() and chr and hum and hum.Parent do
					if hum.MoveDirection.Magnitude > 0 then
						chr:TranslateBy(hum.MoveDirection)
					end
				end

			end)
		end
	end
end)
mine.MouseButton1Down:connect(function()
	if speeds == 1 then
		speed.Text = 'cannot be less than 1'
		wait(1)
		speed.Text = speeds
	else
		speeds = speeds - 1
		speed.Text = speeds
		if nowe == true then
			tpwalking = false
			for i = 1, speeds do
				spawn(function()

					local hb = game:GetService("RunService").Heartbeat	


					tpwalking = true
					local chr = game.Players.LocalPlayer.Character
					local hum = chr and chr:FindFirstChildWhichIsA("Humanoid")
					while tpwalking and hb:Wait() and chr and hum and hum.Parent do
						if hum.MoveDirection.Magnitude > 0 then
							chr:TranslateBy(hum.MoveDirection)
						end
					end

				end)
			end
		end
	end
end)

--==================================================
-- เปิด/ปิด GUI ด้วย getFly()
--==================================================
RunService.Heartbeat:Connect(function()
    local enabled = getFly()
    if Frame.Visible ~= enabled then
        Frame.Visible = enabled
    end
end)

-- ==========================
-- NoClip Logic (บันทึกค่าเดิม)
-- ==========================
local originalCollision = {} -- เก็บค่าเดิมของ CanCollide

runService.Stepped:Connect(function()
    local character = player.Character
    if not character then return end

    if getNoClip() then
        for _, part in pairs(character:GetDescendants()) do
            if part:IsA("BasePart") then
                -- บันทึกค่าเดิมไว้ ถ้ายังไม่เคยบันทึก
                if originalCollision[part] == nil then
                    originalCollision[part] = part.CanCollide
                end
                part.CanCollide = false
            end
        end
    else
        -- คืนค่าการชนกลับตามที่บันทึกไว้
        for part, canCollide in pairs(originalCollision) do
            if part and part.Parent then
                part.CanCollide = canCollide
            end
        end
        -- เคลียร์ข้อมูลที่บันทึกไว้ เพื่อเตรียมรอบต่อไป
        originalCollision = {}
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

-- ==========================
-- FULLBRIGHT SYSTEM (RenderStepped Optimized)
-- ==========================

local Lighting = game:GetService("Lighting")
local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- ตัวแปรเป้าหมายแสง
local targetExposure = 0

-- ฟังก์ชันปรับแสง
local function applyExposure()
	if Lighting.ExposureCompensation ~= targetExposure then
		Lighting.ExposureCompensation = targetExposure
	end
end

-- ฟังก์ชันสร้างสไลเดอร์แนวนอน
local function createHorizontalSlider(parent, name, minValue, maxValue, default, yPos, callback)
	local container = Instance.new("Frame")
	container.Size = UDim2.new(1, -50, 0, 50)
	container.Position = UDim2.new(0, 20, 0, yPos)
	container.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
	container.Active = true
	container.ZIndex = 20000
	container.Parent = parent
	Instance.new("UICorner", container)

	-- Label
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

	-- Slider Bar
	local sliderBar = Instance.new("Frame")
	sliderBar.Size = UDim2.new(1, -16, 0, 18)
	sliderBar.Position = UDim2.new(0, 8, 0, 25)
	sliderBar.BackgroundColor3 = Color3.fromRGB(20, 40, 120)
	sliderBar.BorderSizePixel = 0
	sliderBar.ZIndex = 30000
	sliderBar.Parent = container
	Instance.new("UICorner", sliderBar)

	-- Fill
	local fill = Instance.new("Frame")
	local relDefault = (default - minValue) / (maxValue - minValue)
	fill.Size = UDim2.new(relDefault, 0, 1, 0)
	fill.BackgroundColor3 = Color3.fromRGB(150, 220, 255)
	fill.BorderSizePixel = 0
	fill.ZIndex = 40000
	fill.Parent = sliderBar
	Instance.new("UICorner", fill)

	-- Value Label
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

	-- Drag Logic
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

-- สร้างสไลเดอร์ Fullbright
createHorizontalSlider(VisualPage, "Fullbright", -10, 10, 0, 10, function(value)
	targetExposure = value
	applyExposure()
end)

-- ระบบ RenderStepped ป้องกันรีเซ็ต
RunService.RenderStepped:Connect(function()
	applyExposure()
end)

-- รีเซ็ตค่าเมื่อเกิดใหม่
LocalPlayer.CharacterAdded:Connect(function()
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

local getXray = createToggle(wsjpPage, "X-ray", cheatStartY + 80)

local getblackscreen = createToggle(wsjpPage, "black screen", cheatStartY + 120)

local getWhitescreen = createToggle(wsjpPage, "white screen", cheatStartY + 160)

-- ==========================
-- Remove fog Logic (สูงสุด)
-- ==========================
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

local originalFogStart = nil
local originalFogEnd = nil

RunService.RenderStepped:Connect(function()
    local lighting = game:GetService("Lighting")
    
    if getRemovefog() then
        -- บันทึกค่าหมอกเดิม
        if originalFogStart == nil then originalFogStart = lighting.FogStart end
        if originalFogEnd == nil then originalFogEnd = lighting.FogEnd end
        
        -- ตั้งค่าหมอกสูงสุด → แทบไม่เห็น
        lighting.FogStart = 1e9  -- 1,000,000,000
        lighting.FogEnd = 1e9
    else
        -- คืนค่าหมอกเดิม
        if originalFogStart and originalFogEnd then
            lighting.FogStart = originalFogStart
            lighting.FogEnd = originalFogEnd
        end
    end
end)

-- ==========================
-- ESP Player Logic
-- ==========================
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local LocalPlayer = Players.LocalPlayer

local ESPs = {}
local Highlights = {}

-- ฟังก์ชันสร้าง ESP และ Highlight
local function createESP(targetPlayer)
    if not targetPlayer.Character then return end
    local hrp = targetPlayer.Character:FindFirstChild("HumanoidRootPart") or targetPlayer.Character:FindFirstChild("Torso")
    if not hrp then return end

    -- ESP Text
    if not (ESPs[targetPlayer] and ESPs[targetPlayer].Parent and ESPs[targetPlayer].Parent.Parent == targetPlayer.Character) then
        local billboard = Instance.new("BillboardGui")
        billboard.Name = "ESP"
        billboard.Adornee = hrp
        billboard.Size = UDim2.new(0, 100, 0, 50)
        billboard.StudsOffset = Vector3.new(0, -3, 0)
        billboard.AlwaysOnTop = true
        billboard.Parent = targetPlayer.Character

        local label = Instance.new("TextLabel")
        label.Size = UDim2.new(1,0,1,0)
        label.BackgroundTransparency = 1
        label.TextColor3 = Color3.fromRGB(255,255,255)
        label.Font = Enum.Font.SourceSansBold
        label.TextScaled = false
        label.TextSize = 20
        label.TextStrokeTransparency = 0
        label.TextTransparency = 0
        label.Parent = billboard

        ESPs[targetPlayer] = label
    end

    -- ทำลาย Highlight เก่าถ้ามี
    if Highlights[targetPlayer] and Highlights[targetPlayer].Parent then
        Highlights[targetPlayer]:Destroy()
        Highlights[targetPlayer] = nil
    end

    -- Highlight ตัวผู้เล่น
    local highlight = Instance.new("Highlight")
    highlight.Name = "PlayerHighlight"
    highlight.Adornee = targetPlayer.Character
    highlight.FillColor = Color3.fromRGB(255,255,255)
    highlight.OutlineColor = Color3.fromRGB(255,255,255)
    highlight.OutlineTransparency = 1
    highlight.DepthMode = Enum.HighlightDepthMode.AlwaysOnTop
    highlight.Parent = targetPlayer.Character
    Highlights[targetPlayer] = highlight
end

-- ฟังก์ชันอัพเดท ESP
local function updateESP()
    local localChar = LocalPlayer.Character
    if not localChar then return end

    local localHRP = localChar:FindFirstChild("HumanoidRootPart") or localChar:FindFirstChild("Torso")
    if not localHRP then return end

    local toggle = getESPPlayer() -- ค่าเปิด/ปิด ESP

    for _, player in pairs(Players:GetPlayers()) do
        if player ~= LocalPlayer then
            createESP(player)

            -- อัพเดทข้อความ
            if ESPs[player] and player.Character then
                local hrp = player.Character:FindFirstChild("HumanoidRootPart") or player.Character:FindFirstChild("Torso")
                if hrp then
                    local distance = (hrp.Position - localHRP.Position).Magnitude
                    ESPs[player].Text = string.format("[ %s | %.1f m ]", player.Name, distance)
                    ESPs[player].TextSize = 16
                    ESPs[player].Visible = toggle
                end
            end

            -- เปิด/ปิด Highlight ตาม toggle
            if Highlights[player] then
                Highlights[player].Enabled = toggle
            end
        end
    end
end

-- อัพเดทตลอดเวลา
RunService.RenderStepped:Connect(updateESP)

-- ลบ ESP และ Highlight เมื่อผู้เล่นออก
Players.PlayerRemoving:Connect(function(player)
    if ESPs[player] and ESPs[player].Parent then
        ESPs[player].Parent:Destroy()
    end
    ESPs[player] = nil

    if Highlights[player] and Highlights[player].Parent then
        Highlights[player].Parent:Destroy()
    end
    Highlights[player] = nil
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
-- X-RAY SYSTEM (RenderStepped Optimized)
-- ==========================

local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")

-- โฟลเดอร์สำหรับเก็บ Highlight
local XrayFolder = Instance.new("Folder")
XrayFolder.Name = "ER_Xray_Highlights"
XrayFolder.Parent = Workspace

-- ค่าพื้นฐาน
local xrayEnabled = false
local transparencyLevel = 0.7 -- 0 = ทึบ, 1 = หายหมด

-- ฟังก์ชันช่วยเหลือ
-- ทำให้ออปเจ็กต์โปร่งใส
local function applyTransparency(obj)
	if obj:IsA("BasePart") and obj.Transparency < 1 then
		obj.LocalTransparencyModifier = transparencyLevel
	end
end

-- คืนค่าความโปร่งใส
local function resetTransparency(obj)
	if obj:IsA("BasePart") then
		obj.LocalTransparencyModifier = 0
	end
end

-- เพิ่มขอบ Highlight ให้ Model
local function addHighlightForModel(model)
	if model:IsA("Model") and model:FindFirstChildWhichIsA("BasePart") then
		if not XrayFolder:FindFirstChild(model.Name) then
			local highlight = Instance.new("Highlight")
			highlight.Name = model.Name
			highlight.Adornee = model
			highlight.FillTransparency = 1
			highlight.OutlineTransparency = 0
			highlight.OutlineColor = Color3.fromRGB(255, 255, 255)
			highlight.Parent = XrayFolder
		end
	end
end

-- ล้าง Highlight ทั้งหมด
local function clearHighlights()
	for _, v in pairs(XrayFolder:GetChildren()) do
		v:Destroy()
	end
end

-- ระบบ Toggle หลัก
local function toggleXray(on)
	xrayEnabled = on
	if on then
		-- ทำให้ทุกอย่างใน Workspace โปร่งใสและมีขอบ
		for _, obj in pairs(Workspace:GetDescendants()) do
			applyTransparency(obj)
			addHighlightForModel(obj)
		end
	else
		-- คืนค่าปกติ
		for _, obj in pairs(Workspace:GetDescendants()) do
			resetTransparency(obj)
		end
		clearHighlights()
	end
end

-- ตรวจจับอ็อบเจ็กต์ใหม่
Workspace.DescendantAdded:Connect(function(obj)
	if not xrayEnabled then return end
	task.wait(0)
	applyTransparency(obj)
	addHighlightForModel(obj)
end)

-- ระบบ RenderStepped อัตโนมัติ
RunService.RenderStepped:Connect(function()
	local state = getXray() -- ฟังก์ชันที่นายสร้างไว้เพื่อตรวจ toggle
	if state ~= xrayEnabled then
		toggleXray(state)
	end

	-- ถ้าเปิด X-ray อยู่ ให้อัปเดตทุกเฟรม
	if xrayEnabled then
		for _, obj in pairs(Workspace:GetDescendants()) do
			if obj:IsA("BasePart") and obj.LocalTransparencyModifier ~= transparencyLevel then
				obj.LocalTransparencyModifier = transparencyLevel
			end
		end
	end
end)

-- ==========================
-- black screen & White screen Logic
-- ==========================
-- GUI หลักสำหรับหน้าจอคลุม
local screenGuiBW = Instance.new("ScreenGui")
screenGuiBW.Name = "ERScreen"
screenGuiBW.ResetOnSpawn = false
screenGuiBW.IgnoreGuiInset = true
screenGuiBW.ScreenInsets = Enum.ScreenInsets.None
screenGuiBW.DisplayOrder = 1e9
screenGuiBW.Parent = CoreGui

-- Frame สำหรับ Black screen
local blackFrame = Instance.new("Frame")
blackFrame.Size = UDim2.fromScale(1, 1)
blackFrame.Position = UDim2.fromScale(0, 0)
blackFrame.BorderSizePixel = 0
blackFrame.BackgroundColor3 = Color3.new(0, 0, 0) -- สีดำ
blackFrame.Visible = false
blackFrame.Active = true
blackFrame.ZIndex = 200
blackFrame.Parent = screenGuiBW

-- Frame สำหรับ White screen
local whiteFrame = Instance.new("Frame")
whiteFrame.Size = UDim2.fromScale(1, 1)
whiteFrame.Position = UDim2.fromScale(0, 0)
whiteFrame.BorderSizePixel = 0
whiteFrame.BackgroundColor3 = Color3.new(1, 1, 1) -- สีขาว
whiteFrame.Visible = false
whiteFrame.Active = true
whiteFrame.ZIndex = 100
whiteFrame.Parent = screenGuiBW


-- ==========================
-- black screen Logic
-- ==========================
task.spawn(function()
    while task.wait(0) do
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
    while task.wait(0) do
        if getWhitescreen() then
            whiteFrame.Visible = true
        else
            whiteFrame.Visible = false
        end
    end
end)

-- ===================================================  
-- Page: Function
local FunctionPage = Instance.new("Frame")
FunctionPage.Size = UDim2.new(1, 0, 1, 0)
FunctionPage.BackgroundTransparency = 1
FunctionPage.Visible = false
FunctionPage.Active = true
FunctionPage.Parent = contentFrame
pages["• Function"] = FunctionPage

-- ==========================
-- Page: C 
-- ==========================
local cheatStartY = 10

-- Function: Create Toggle
local function createToggle(parent, name, yPos, scriptFunc)
    local container = Instance.new("Frame")
    container.Size = UDim2.new(1, -50, 0, 35)
    container.Position = UDim2.new(0, 20, 0, yPos)
    container.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    container.ZIndex = 20000
    container.Parent = FunctionPage
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
    toggleBtn.ZIndex = 20001
    toggleBtn.Text = ""
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

    toggleBtn.MouseButton1Click:Connect(function()
        state = not state
        if state then
            -- เปิด: เปลี่ยนไฟ → รันสคริปต์
            statusLight.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            task.spawn(function()
                pcall(scriptFunc) -- รัน script ที่กำหนดไว้
            end)
        else
            -- ปิด: ดับไฟ แต่ไม่รันสคริปต์
            statusLight.BackgroundColor3 = Color3.fromRGB(100, 100, 100)
        end
    end)

    return function() return state end
end

-- ===================================================  
local getScript1 = createToggle(wsjpPage, "[ ❖ ] Disconnection (แบบไม่โดนแบน)", cheatStartY, function()
      
local Players = game:GetService("Players")  
local MES = Players.LocalPlayer  
  
-- จะเรียกให้ client ถูกไล่ออก  
local function showDisconnect(reason)  
    pcall(function()  
        MES:Kick(reason or "[ ❖ ] ER GUI : ยกเลิกการเชื่อมต่อ Successfully!") -- ข้อความเริ่มต้นถ้าไม่มี showDisconnect  
    end)  
end  
  
showDisconnect("[ ❖ ] ER GUI : ยกเลิกการเชื่อมต่อ Successfully!")  -- ข้อความที่แสดง

end)

-- ===================================================  
local getScript2 = createToggle(wsjpPage, "[ ❖ ] Roblox Developer Console", cheatStartY + 40, function()
    
local VirtualInputManager = game:GetService("VirtualInputManager")

-- ฟังก์ชันกด F9
local function pressF9()
    -- กดลง
    VirtualInputManager:SendKeyEvent(true, Enum.KeyCode.F9, false, game)
    wait(0.05) -- กดสั้น ๆ
    -- ปล่อย
    VirtualInputManager:SendKeyEvent(false, Enum.KeyCode.F9, false, game)
end

-- เรียกใช้งาน 1 ครั้ง
pressF9()
    
end)

-- ===================================================  
local getScript3 = createToggle(wsjpPage, "Script 3", cheatStartY + 80, function()
    
    
    
end)

-- ===================================================  
local getScript4 = createToggle(wsjpPage, "Script 4", cheatStartY + 120, function()
    
    
    
end)

-- ===================================================  
local getScript5 = createToggle(wsjpPage, "Script 5", cheatStartY + 160, function()
    
    
    
end)

-- ===================================================  
local getScript6 = createToggle(wsjpPage, "Script 6", cheatStartY + 200, function()
    
    
    
end)

-- ===================================================  
local getScript7 = createToggle(wsjpPage, "[ ◆ ] Simple Shader", cheatStartY + 240, function()
    
loadstring(game:HttpGet("https://raw.githubusercontent.com/p0e1/1/refs/heads/main/SimpleShader.lua"))();
    
end)

-- ===================================================  
local getScript8 = createToggle(wsjpPage, "[ ◆ ]  Pshade Ultimate Shader", cheatStartY + 280, function()
    
loadstring(game:HttpGet("https://raw.githubusercontent.com/randomstring0/pshade-ultimate/refs/heads/main/src/back.json"))();
    
end)

-- ===================================================  
local getScript9 = createToggle(wsjpPage, "Script 9", cheatStartY + 320, function()
    
    
    
end)

-- ===================================================  
local getScript10 = createToggle(wsjpPage, "Script 10", cheatStartY + 360, function()
    
    
    
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
nameLabelB.Text = "• ใช้เทเลพอร์ตไปยังผู้เล่นในเซิร์ฟเวอร์ปัจจุบัน  (ใช้ชื่อจริง)"
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
-- Page: D
-- ==========================
local cheatStartY = 70

-- Function: Create Toggle
local function createToggle(parent, name, yPos)
local container = Instance.new("Frame")
container.Size = UDim2.new(1, -50, 0, 35)
container.Position = UDim2.new(0, 20, 0, yPos)
container.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
container.ZIndex = 20000
container.Parent = TeleportPage
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
local getTPPlayerLooped, setTPPlayerLooped = createToggle(TeleportPage, "Teleport to Player", cheatStartY)

-- ==========================
-- Teleport MG
-- ==========================
local containerMG = Instance.new("Frame")
containerMG.Size = UDim2.new(1, -50, 0, 200)
containerMG.Position = UDim2.new(0, 20, 0, 115)
containerMG.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
containerMG.Active = true
containerMG.ZIndex = 20000
containerMG.Parent = TeleportPage
Instance.new("UICorner", containerMG)

-- ==========================
-- Player List (Teleport Panel)
-- ==========================
local playerListFrame = Instance.new("ScrollingFrame")
playerListFrame.Size = UDim2.new(1, -10, 1, -10)
playerListFrame.Position = UDim2.new(0, 5, 0, 5)
playerListFrame.BackgroundTransparency = 1
playerListFrame.BorderSizePixel = 0
playerListFrame.ScrollBarThickness = 4
playerListFrame.ZIndex = 20001
playerListFrame.Active = true
playerListFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
playerListFrame.AutomaticCanvasSize = Enum.AutomaticSize.None
playerListFrame.Parent = containerMG

local UIListLayout = Instance.new("UIListLayout")
UIListLayout.Padding = UDim.new(0, 5)
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Parent = playerListFrame

local UIPadding = Instance.new("UIPadding")
UIPadding.PaddingTop = UDim.new(0, 5)
UIPadding.PaddingBottom = UDim.new(0, 5)
UIPadding.Parent = playerListFrame

-- ==========================
-- Status Label (อยู่บนสุด)
-- ==========================
local statusLabel = Instance.new("TextLabel")
statusLabel.Size = UDim2.new(1, -5, 0, 30)
statusLabel.BackgroundColor3 = Color3.fromRGB(50, 50, 50) -- สีเดียวกับปุ่ม
statusLabel.Text = "   • เลือกผู้เล่นที่จะ Teleport"
statusLabel.TextXAlignment = Enum.TextXAlignment.Left
statusLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
statusLabel.Font = Enum.Font.SourceSansBold
statusLabel.TextSize = 16
statusLabel.ZIndex = 20002
statusLabel.Parent = playerListFrame
Instance.new("UICorner", statusLabel)

-- ==========================
-- ฟังก์ชันสร้างปุ่มผู้เล่น
-- ==========================
local function createPlayerButton(plr)
    local btn = Instance.new("TextButton")
    btn.Size = UDim2.new(1, -5, 0, 30)
    btn.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
    btn.Text = "   • " .. plr.DisplayName .. " | @" .. plr.Name
    btn.TextXAlignment = Enum.TextXAlignment.Left
    btn.TextColor3 = Color3.fromRGB(255, 255, 255)
    btn.Font = Enum.Font.SourceSansBold
    btn.TextSize = 16
    btn.ZIndex = 20002
    btn.Parent = playerListFrame
    Instance.new("UICorner", btn)

    btn.MouseButton1Click:Connect(function()
        PlayerIDA.Text = plr.Name -- ใส่ชื่อจริงเท่านั้น
    end)
end

-- ==========================
-- ฟังก์ชันอัปเดตรายชื่อผู้เล่น
-- ==========================
local function updatePlayerList()
    -- ลบปุ่มเก่า (แต่เว้น statusLabel เอาไว้)
    for _, child in ipairs(playerListFrame:GetChildren()) do
        if child:IsA("TextButton") then
            child:Destroy()
        end
    end

    -- ตรวจสอบจำนวนผู้เล่น
    local playersFound = 0
    for _, plr in ipairs(Players:GetPlayers()) do
        if plr ~= LocalPlayer then
            createPlayerButton(plr)
            playersFound += 1
        end
    end

    -- อัปเดตข้อความสถานะ
    if playersFound == 0 then
        statusLabel.Text = "   • ไม่มีผู้เล่น"
    else
        statusLabel.Text = "   • เลือกผู้เล่นที่จะ Teleport"
    end
    
    playerListFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 10)
   end

-- อัปเดตรายชื่อเมื่อมีการเปลี่ยนแปลง
Players.PlayerAdded:Connect(updatePlayerList)
Players.PlayerRemoving:Connect(updatePlayerList)

-- โหลดตอนแรก
updatePlayerList()

-- ==========================
-- Teleport Functions
-- ==========================
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

-- หา Player ใน Server ตามชื่อที่กรอก
local function findPlayerInServerByUsername(name)
	for _, plr in ipairs(Players:GetPlayers()) do
		if string.lower(plr.Name) == string.lower(name) then
			return plr
		end
	end
	return nil
end

-- วน Teleport ไปยังเป้าหมาย
local function teleportLoop(nameText)
	local target = findPlayerInServerByUsername(nameText)
	local myChar = LocalPlayer.Character

	if target 
	and target.Character 
	and target.Character:FindFirstChild("HumanoidRootPart") 
	and myChar then
		
		local targetPos = target.Character.HumanoidRootPart.Position + Vector3.new(0, 2, 0)
		
		if myChar:FindFirstChild("HumanoidRootPart") and myChar.PivotTo then
			myChar:PivotTo(CFrame.new(targetPos))
		else
			myChar:MoveTo(targetPos)
		end
	end
end

-- ==========================
-- Teleport Loop
-- ==========================
RunService.Heartbeat:Connect(function()
	if getTPPlayerLooped() and PlayerIDA.Text ~= "" then
		teleportLoop(PlayerIDA.Text)
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
sound.Parent = game:GetService("SoundService")
sound.Volume = 1
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
idBox.Text = "98337901681441"
idBox.ZIndex = 20000
idBox.Parent = musicPage
idBox.TextWrapped = true
Instance.new("UICorner", idBox)

-- ตัวแปรสำหรับเก็บค่าเดิม
local lastId = nil
local lastName = "Song : None"

-- RenderStepped (อัปเดตทุกเฟรมแบบไม่มีดีเล)
local RunService = game:GetService("RunService")

RunService.RenderStepped:Connect(function()
    local id = tonumber(idBox.Text)
    if id then
        if id ~= lastId then
            local success, info = pcall(function()
                return game:GetService("MarketplaceService"):GetProductInfo(id)
            end)
            if success and info and info.Name then
                lastName = "Song : " .. info.Name
            else
                lastName = "Song : Unknown"
            end
            lastId = id
        end
    else
        lastName = "Song : None"
        lastId = nil
    end
    songNameLabel.Text = lastName
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
volDisplay.Text = "Volume : 1"
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
    sound.Volume = math.clamp(sound.Volume - 0.5, 0, 20)
    volDisplay.Text = "Volume : "..sound.Volume
end)

volUpBtn.MouseButton1Click:Connect(function()
    sound.Volume = math.clamp(sound.Volume + 0.5, 0, 20)
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
local menuItems = {"• Player", "• Visual", "• Function", "• Teleport", "• Music"}
local currentSelected = nil -- เก็บปุ่มที่ถูกเลือก
local buttons = {} -- เก็บปุ่มทั้งหมดไว้สำหรับเข้าถึงภายหลัง

for i, name in ipairs(menuItems) do
    -- สร้าง Frame เป็นพื้นหลังปุ่ม
    local buttonFrame = Instance.new("Frame")
    buttonFrame.Size = UDim2.new(1, -18, 0, 32)
    buttonFrame.Position = UDim2.new(0, 8, 0, (i-1) * 40 + 10)
    buttonFrame.BackgroundTransparency = 1
    buttonFrame.ZIndex = 20000
    buttonFrame.Parent = sidebar
    local resetBtnCorner = Instance.new("UICorner", buttonFrame)

    -- ปุ่มจริง
    local button = Instance.new("TextButton")
    button.Size = UDim2.new(1, 0, 1, 0)
    button.Position = UDim2.new(0, 2, 0, 0)
    button.BackgroundTransparency = 1
    button.Text = name
    button.TextColor3 = Color3.fromRGB(200, 200, 200)
    button.Font = Enum.Font.SourceSansBold
    button.TextSize = 18
    button.TextXAlignment = Enum.TextXAlignment.Left
    button.ZIndex = 20001
    button.Parent = buttonFrame

    -- ขอบ (UIStroke)
    local stroke = Instance.new("UIStroke")
    stroke.Thickness = 2
    stroke.Color = Color3.fromRGB(40, 40, 40)
    stroke.Enabled = false
    stroke.Parent = buttonFrame

    buttons[name] = {button = button, stroke = stroke}

    -- เอฟเฟกต์ Hover
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

    -- เมื่อคลิก
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

-- ==========
-- ตั้งค่าเริ่มต้น (เลือกหน้าแรก)
-- ==========
local firstName = menuItems[1]
local firstData = buttons[firstName]

if firstData then
    local button = firstData.button
    local stroke = firstData.stroke

    currentSelected = button
    button.TextColor3 = Color3.fromRGB(255, 255, 255)
    stroke.Enabled = true

    -- แสดงหน้าแรก
    switchPage(firstName)
end
  
-- ===================================================
-- Loading GUI


-- ===================================================
-- จบ
end)

-- ===================================================