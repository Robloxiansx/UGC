pcall(function()
    if not game:IsLoaded() then
        game.Loaded:Wait()
    end

    --// Services
    local Players = cloneref(game:GetService("Players"))
    local StarterGui = cloneref(game:GetService("StarterGui"))
    local TeleportService = cloneref(game:GetService("TeleportService"))
    local ReplicatedStorage = cloneref(game:GetService("ReplicatedStorage"))
    local UIS = cloneref(game:GetService("UserInputService"))
    local TweenService = cloneref(game:GetService("TweenService"))

    --// File system for saving toggle state
    local FolderName = "AlwiHub_Settings"
    if not isfolder(FolderName) then
        makefolder(FolderName)
    end

    local function saveState(fileName, state)
        writefile(FolderName .. "/" .. fileName, tostring(state))
    end

    local function loadState(fileName)
        if isfile(FolderName .. "/" .. fileName) then
            return readfile(FolderName .. "/" .. fileName) == "true"
        end
        return false
    end

    --// Load saved toggle states
    getgenv().AutoClick = loadState("AutoClick.txt")
    getgenv().AutoReconnect = loadState("AutoReconnect.txt")

    --// Create GUI
    local ScreenGui = Instance.new("ScreenGui", game.CoreGui)

    local Frame = Instance.new("Frame", ScreenGui)
    Frame.Size = UDim2.new(0, 240, 0, 150)
    Frame.Position = UDim2.new(0.5, -120, 0.4, -75)
    Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    Frame.BorderSizePixel = 0
    Frame.Active = true
    Frame.Draggable = true

    local UICorner = Instance.new("UICorner", Frame)
    UICorner.CornerRadius = UDim.new(0, 10)

    --// Title Label
    local Title = Instance.new("TextLabel", Frame)
    Title.Size = UDim2.new(1, 0, 0, 30)
    Title.Position = UDim2.new(0, 0, 0, 0)
    Title.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
    Title.Text = "Alwi Hub | Click For UGC 2"
    Title.TextSize = 16
    Title.Font = Enum.Font.SourceSansBold
    Title.TextColor3 = Color3.fromRGB(255, 255, 255)

    local UICornerTitle = Instance.new("UICorner", Title)
    UICornerTitle.CornerRadius = UDim.new(0, 10)

    local function createButton(text, position)
        local Button = Instance.new("TextButton", Frame)
        Button.Size = UDim2.new(0, 200, 0, 40)
        Button.Position = position
        Button.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
        Button.Text = text
        Button.TextSize = 18
        Button.Font = Enum.Font.SourceSansBold
        Button.TextColor3 = Color3.fromRGB(255, 255, 255)

        local UICornerBtn = Instance.new("UICorner", Button)
        UICornerBtn.CornerRadius = UDim.new(0, 10)

        -- Smooth Button Effects
        Button.MouseEnter:Connect(function()
            TweenService:Create(Button, TweenInfo.new(0.2), {BackgroundTransparency = 0.2}):Play()
        end)
        Button.MouseLeave:Connect(function()
            TweenService:Create(Button, TweenInfo.new(0.2), {BackgroundTransparency = 0}):Play()
        end)
        Button.MouseButton1Down:Connect(function()
            TweenService:Create(Button, TweenInfo.new(0.1), {Size = UDim2.new(0, 190, 0, 35)}):Play()
        end)
        Button.MouseButton1Up:Connect(function()
            TweenService:Create(Button, TweenInfo.new(0.1), {Size = UDim2.new(0, 200, 0, 40)}):Play()
        end)

        return Button
    end

    -- Buttons
    local AutoClickBtn = createButton("Enable Auto Click", UDim2.new(0.5, -100, 0.3, 0))
    local AutoReconnectBtn = createButton("Enable Auto Reconnect", UDim2.new(0.5, -100, 0.7, 0))

    -- Function to update button text & color
    local function updateButtonState(button, state, onText, offText)
        button.Text = state and offText or onText
        button.BackgroundColor3 = state and Color3.fromRGB(255, 0, 0) or Color3.fromRGB(0, 255, 0)
    end

    updateButtonState(AutoClickBtn, getgenv().AutoClick, "Enable Auto Click", "Disable Auto Click")
    updateButtonState(AutoReconnectBtn, getgenv().AutoReconnect, "Enable Auto Reconnect", "Disable Auto Reconnect")

    --// Auto Click Function
    local function autoClick()
        while getgenv().AutoClick do
            pcall(function()
                ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Click"):FireServer()
            end)
            wait(0.1)
        end
    end

    --// Auto Reconnect Function
    local function autoReconnect()
        if getgenv().AutoReconnect then
            print("Auto Reconnect: Monitoring connectivity...")

            game:GetService("GuiService").ErrorMessageChanged:Connect(function()
                print("Error Detected: Attempting to rejoin...")
                wait(5)
                game:GetService("TeleportService"):Teleport(game.PlaceId)
            end)

            game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
                if State == Enum.TeleportState.Failed then
                    print("Teleport Failed: Retrying teleport...")
                    wait(5)
                    game:GetService("TeleportService"):Teleport(game.PlaceId)
                end
            end)

            while getgenv().AutoReconnect do
                if not game:GetService("Players").LocalPlayer then
                    print("Lost Connection: Attempting to rejoin...")
                    game:GetService("TeleportService"):Teleport(game.PlaceId)
                end
                wait(10)
            end
        end
    end

    --// Auto Redeem Codes (Runs Once)
    local function autoRedeem()
        if not isfile(FolderName .. "/Redeemed.txt") then
            pcall(function()
                for _, code in ipairs(Players.LocalPlayer:WaitForChild("Codes"):GetChildren()) do
                    ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("UseCode"):FireServer(code.Name)
                    wait(0.2)
                end
                writefile(FolderName .. "/Redeemed.txt", "true")
            end)
        end
    end

    --// Toggle Auto Click
    AutoClickBtn.MouseButton1Click:Connect(function()
        getgenv().AutoClick = not getgenv().AutoClick
        saveState("AutoClick.txt", getgenv().AutoClick)
        updateButtonState(AutoClickBtn, getgenv().AutoClick, "Enable Auto Click", "Disable Auto Click")
        
        if getgenv().AutoClick then
            task.spawn(autoClick)
        end
    end)

    --// Toggle Auto Reconnect
    AutoReconnectBtn.MouseButton1Click:Connect(function()
        getgenv().AutoReconnect = not getgenv().AutoReconnect
        saveState("AutoReconnect.txt", getgenv().AutoReconnect)
        updateButtonState(AutoReconnectBtn, getgenv().AutoReconnect, "Enable Auto Reconnect", "Disable Auto Reconnect")
        
        if getgenv().AutoReconnect then
            task.spawn(autoReconnect)
        end
    end)

    --// Run on startup
    autoRedeem()
    if getgenv().AutoClick then task.spawn(autoClick) end
    if getgenv().AutoReconnect then task.spawn(autoReconnect) end
end)

--// Movable GUI (PC & Mobile)
local dragging = false
local dragStart = nil
local startPos = nil

local function update(input)
    if dragging then
        local delta = input.Position - dragStart
        Frame.Position = UDim2.new(
            startPos.X.Scale, startPos.X.Offset + delta.X,
            startPos.Y.Scale, startPos.Y.Offset + delta.Y
        )
    end
end

Frame.InputBegan:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
        dragging = true
        dragStart = input.Position
        startPos = Frame.Position
    end
end)

Frame.InputChanged:Connect(function(input)
    if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
        input.Changed:Connect(function()
            if input.UserInputState == Enum.UserInputState.End then
                dragging = false
            end
        end)
    end
end)

UserInputService.InputChanged:Connect(function(input)
    if dragging and (input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch) then
        update(input)
    end
end)
