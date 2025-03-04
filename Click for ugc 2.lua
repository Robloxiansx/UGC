if _G.Honey_Valley then return end
_G.Honey_Valley = true

local supportedGameId = 90070078747190

if game.PlaceId ~= supportedGameId then
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = "Game Not Supported",
        Text = "Sorry, this script only works in the supported game.",
        Duration = 5
    })
    return
end

--// Services
local Players = cloneref(game:GetService("Players"))
local StarterGui = cloneref(game:GetService("StarterGui"))
local TeleportService = cloneref(game:GetService("TeleportService"))
local GuiService = cloneref(game:GetService("GuiService"))
local ReplicatedStorage = cloneref(game:GetService("ReplicatedStorage"))
local UserInputService = cloneref(game:GetService("UserInputService"))

local LocalPlayer = Players.LocalPlayer

--// Function to send notifications
local function sendNotification(title, message)
    StarterGui:SetCore("SendNotification", {
        Title = title,
        Text = message,
        Duration = 5
    })
end

--// GUI Creation
local ScreenGui = Instance.new("ScreenGui", game.CoreGui)
ScreenGui.ResetOnSpawn = false

local Frame = Instance.new("Frame", ScreenGui)
Frame.Size = UDim2.new(0, 250, 0, 180)
Frame.Position = UDim2.new(0.5, -125, 0.5, -90)
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderSizePixel = 0

local UICorner = Instance.new("UICorner", Frame)
UICorner.CornerRadius = UDim.new(0, 10)

local Title = Instance.new("TextLabel", Frame)
Title.Size = UDim2.new(1, 0, 0, 30)
Title.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
Title.Text = "Alwi Hub | Click For UGC 2"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.Font = Enum.Font.SourceSansBold
Title.TextSize = 16

local CloseButton = Instance.new("TextButton", Frame)
CloseButton.Size = UDim2.new(0, 30, 0, 30)
CloseButton.Position = UDim2.new(1, -35, 0, 5)
CloseButton.BackgroundColor3 = Color3.fromRGB(200, 50, 50)
CloseButton.Text = "X"
CloseButton.TextColor3 = Color3.fromRGB(255, 255, 255)
CloseButton.Font = Enum.Font.SourceSansBold
CloseButton.TextSize = 16

local AutoClickButton = Instance.new("TextButton", Frame)
AutoClickButton.Size = UDim2.new(0.9, 0, 0, 40)
AutoClickButton.Position = UDim2.new(0.05, 0, 0.3, 0)
AutoClickButton.BackgroundColor3 = Color3.fromRGB(50, 150, 50)
AutoClickButton.Text = "Enable Auto Click"
AutoClickButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoClickButton.Font = Enum.Font.SourceSansBold
AutoClickButton.TextSize = 16

local AutoReconnectButton = Instance.new("TextButton", Frame)
AutoReconnectButton.Size = UDim2.new(0.9, 0, 0, 40)
AutoReconnectButton.Position = UDim2.new(0.05, 0, 0.6, 0)
AutoReconnectButton.BackgroundColor3 = Color3.fromRGB(50, 50, 150)
AutoReconnectButton.Text = "Enable Auto Reconnect"
AutoReconnectButton.TextColor3 = Color3.fromRGB(255, 255, 255)
AutoReconnectButton.Font = Enum.Font.SourceSansBold
AutoReconnectButton.TextSize = 16

--// Toggle System
getgenv().AutoClick = false
getgenv().AutoReconnect = false

--// Auto Click Function
local function autoClick()
    while getgenv().AutoClick do
        ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Click"):FireServer()
        wait(0.1)
    end
end

--// Auto Reconnect Function
local function autoReconnect()
    if getgenv().AutoReconnect then
        sendNotification("Auto Reconnect", "Monitoring connectivity...")
        
        -- Detect error messages and attempt to rejoin
        GuiService.ErrorMessageChanged:Connect(function()
            sendNotification("Error Detected", "Attempting to rejoin...")
            wait(5)
            TeleportService:Teleport(game.PlaceId)
        end)

        -- Detect failed teleports and retry
        LocalPlayer.OnTeleport:Connect(function(State)
            if State == Enum.TeleportState.Failed then
                sendNotification("Teleport Failed", "Retrying teleport...")
                wait(5)
                TeleportService:Teleport(game.PlaceId)
            end
        end)

        -- Continuous monitoring for disconnections
        while getgenv().AutoReconnect do
            if not Players.LocalPlayer then
                sendNotification("Lost Connection", "Attempting to rejoin...")
                TeleportService:Teleport(game.PlaceId)
            end
            wait(10)
        end
    end
end

--// Button Click Events
AutoClickButton.MouseButton1Click:Connect(function()
    getgenv().AutoClick = not getgenv().AutoClick
    AutoClickButton.Text = getgenv().AutoClick and "Disable Auto Click" or "Enable Auto Click"
    AutoClickButton.BackgroundColor3 = getgenv().AutoClick and Color3.fromRGB(150, 50, 50) or Color3.fromRGB(50, 150, 50)
    
    if getgenv().AutoClick then
        task.spawn(autoClick)
    end
end)

AutoReconnectButton.MouseButton1Click:Connect(function()
    getgenv().AutoReconnect = not getgenv().AutoReconnect
    AutoReconnectButton.Text = getgenv().AutoReconnect and "Disable Auto Reconnect" or "Enable Auto Reconnect"
    AutoReconnectButton.BackgroundColor3 = getgenv().AutoReconnect and Color3.fromRGB(150, 50, 50) or Color3.fromRGB(50, 50, 150)

    if getgenv().AutoReconnect then
        task.spawn(autoReconnect)
    end
end)

--// Close Button
CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
    getgenv().AutoClick = false
    getgenv().AutoReconnect = false
end)

--// Movable GUI (PC & Mobile)
local dragging, dragInput, dragStart, startPos

local function update(input)
    local delta = input.Position - dragStart
    Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
end

Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = Frame.Position

        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

Frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        update(input)
    end
end)

--// Auto Redeem Codes (Runs Once)
local function redeemCodes()
    for _, code in ipairs(LocalPlayer:WaitForChild("Codes"):GetChildren()) do
        ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("UseCode"):FireServer(code.Name)
        wait(0.2)
    end
end
redeemCodes()

print("GUI Loaded Successfully!")
