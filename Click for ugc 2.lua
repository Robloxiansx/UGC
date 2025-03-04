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
local Players = game:GetService("Players")
local StarterGui = game:GetService("StarterGui")
local TeleportService = game:GetService("TeleportService")
local GuiService = game:GetService("GuiService")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local HttpService = game:GetService("HttpService")

local LocalPlayer = Players.LocalPlayer

--// Ensure the settings folder exists
local FolderName = "AlwiHub_Settings"
if not isfolder(FolderName) then
    makefolder(FolderName)
end

local saveFile = FolderName .. "/Settings.json"

local function saveSettings()
    local settings = {
        AutoClick = getgenv().AutoClick,
        AutoReconnect = getgenv().AutoReconnect
    }
    writefile(saveFile, HttpService:JSONEncode(settings))
end

local function loadSettings()
    if isfile(saveFile) then
        local data = readfile(saveFile)
        local success, settings = pcall(function() return HttpService:JSONDecode(data) end)
        if success and type(settings) == "table" then
            getgenv().AutoClick = settings.AutoClick or false
            getgenv().AutoReconnect = settings.AutoReconnect or false
        end
    end
end

-- Load settings on script start
loadSettings()

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
Frame.Active = true
Frame.Draggable = false -- We will use delta-based dragging instead

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

--// Dragging System (Delta-based)
local dragging, dragInput, dragStart, startPos

Title.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = Frame.Position
    end
end)

Title.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        dragInput = input
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if input == dragInput and dragging then
        local delta = input.Position - dragStart
        Frame.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end
end)

Title.InputEnded:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = false
    end
end)

--// Toggle System
local function updateButtons()
    AutoClickButton.Text = getgenv().AutoClick and "Disable Auto Click" or "Enable Auto Click"
    AutoClickButton.BackgroundColor3 = getgenv().AutoClick and Color3.fromRGB(150, 50, 50) or Color3.fromRGB(50, 150, 50)

    AutoReconnectButton.Text = getgenv().AutoReconnect and "Disable Auto Reconnect" or "Enable Auto Reconnect"
    AutoReconnectButton.BackgroundColor3 = getgenv().AutoReconnect and Color3.fromRGB(150, 50, 50) or Color3.fromRGB(50, 50, 150)
end

--// Button Click Events
AutoClickButton.MouseButton1Click:Connect(function()
    getgenv().AutoClick = not getgenv().AutoClick
    saveSettings()
    updateButtons()
end)

AutoReconnectButton.MouseButton1Click:Connect(function()
    getgenv().AutoReconnect = not getgenv().AutoReconnect
    saveSettings()
    updateButtons()
end)

--// Close Button
CloseButton.MouseButton1Click:Connect(function()
    ScreenGui:Destroy()
    getgenv().AutoClick = false
    getgenv().AutoReconnect = false
end)

--// Load previous settings & start features if enabled
updateButtons()

sendNotification("Script Loaded", "Alwi Hub | Click For UGC 2 is Ready!")
