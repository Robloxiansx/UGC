pcall(function()
    --// Check if the current game place is the one we want to run the script in
    if game.PlaceId == 90070078747190 then
        --// Wait for the game to finish loading, if it hasn't already
        if not game:IsLoaded() then
            game.Loaded:Wait()
        end

        --// Define cloneref and newcclosure for extra security, if not already defined
        local cloneref = cloneref or function(obj) return obj end
        local newcclosure = newcclosure or function(func) return func end

        --// A helper function to securely get services using cloneref
        local function secureGetService(serviceName)
            return cloneref(game:GetService(serviceName))
        end

        --// Securely obtain references to important Roblox services
        local VirtualUser = secureGetService("VirtualUser")         --// For simulating user input
        local Players = secureGetService("Players")                 --// To access player data
        local StarterGui = secureGetService("StarterGui")           --// For sending notifications
        local TeleportService = secureGetService("TeleportService")   --// For teleporting players
        local GuiService = secureGetService("GuiService")             --// To monitor GUI errors
        local ReplicatedStorage = secureGetService("ReplicatedStorage") --// For accessing shared objects

        --// Anti-AFK function to prevent the player from being kicked for idling
        local function antiafk()
            local success, err = pcall(function()
                local LocalPlayer = Players.LocalPlayer
                --// Connect an event to the Idled signal; when fired, simulate a right-click
                LocalPlayer.Idled:Connect(newcclosure(function()
                    VirtualUser:CaptureController()
                    VirtualUser:ClickButton2(Vector2.new())
                end))
                print("AntiAfk loaded")
            end)
            if not success then warn("AntiAfk Error:", err) end
        end

        --// Function to send notifications to the player
        local function sendNotification(title, message)
            local success, err = pcall(function()
                StarterGui:SetCore("SendNotification", {
                    Title = title,             --// Title of the notification
                    Text = message,            --// Message body of the notification
                    Icon = "http://www.roblox.com/asset/?id=92639750101948", --// Notification icon
                    Duration = 5,              --// Duration (in seconds) the notification will appear
                })
            end)
            if not success then warn("Notification Error:", err) end
        end

        --// Notify that the script has loaded
        sendNotification("Script Loaded", "Auto Rejoin Script is running!")

        --// Listen for error messages from the GUI service and attempt a rejoin on error
        GuiService.ErrorMessageChanged:Connect(function()
            local success, err = pcall(function()
                sendNotification("Error Detected", "Attempting to rejoin...")
                wait(5)
                TeleportService:Teleport(game.PlaceId)
            end)
            if not success then warn("Error Handling Failed:", err) end
        end)

        --// Listen for teleport events; if teleport fails, try again
        Players.LocalPlayer.OnTeleport:Connect(function(State)
            local success, err = pcall(function()
                if State == Enum.TeleportState.Failed then
                    sendNotification("Teleport Failed", "Retrying teleport...")
                    wait(5)
                    TeleportService:Teleport(game.PlaceId)
                end
            end)
            if not success then warn("Teleport Handling Error:", err) end
        end)

        --// Function to automatically check connectivity and rejoin if the player loses connection
        local function autoRejoin()
            local success, err = pcall(function()
                sendNotification("Connectivity Check", "Monitoring connectivity...")
                while true do
                    --// If the LocalPlayer no longer exists, attempt to teleport back
                    if not Players.LocalPlayer then
                        sendNotification("Lost Connection", "Attempting to rejoin...")
                        TeleportService:Teleport(game.PlaceId)
                    end
                    wait(10)
                end
            end)
            if not success then warn("AutoRejoin Error:", err) end
        end

        --// Start the autoRejoin function in a separate thread
        task.spawn(autoRejoin)

        --// Function to fire the "Click" remote event on the server
        local function fireClickRemote()
            local success, err = pcall(function()
                ReplicatedStorage:WaitForChild("Remotes"):WaitForChild("Click"):FireServer()
            end)
            if not success then warn("Click Remote Error:", err) end
        end

        --// Function to use all available codes by firing the "UseCode" remote event for each code
        local function useCodes()
            local success, err = pcall(function()
                for _, code in ipairs(game:GetService("Players").LocalPlayer:WaitForChild("Codes"):GetChildren()) do
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("UseCode"):FireServer(code.Name)
wait(0.2) 
    end
                print("Redeem All Code Auto Update Loaded!")
            end)
            if not success then warn("Code Redemption Error:", err) end
        end

        --// Execute the anti-AFK and code redemption functions
        antiafk()
        useCodes()

        --// Continuously fire the click remote in a loop with error handling
        while wait() do
            local success, err = pcall(fireClickRemote)
            if not success then warn("Loop Error:", err) end
        end
    end
end)
