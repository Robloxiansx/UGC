if game.PlaceId == 90070078747190 then
if not game:IsLoaded() then
    game.Loaded:Wait()
end

function antiafk() 
local VirtualUser = game:GetService("VirtualUser")
game:GetService("Players").LocalPlayer.Idled:Connect(function()
        VirtualUser:CaptureController()
        VirtualUser:ClickButton2(Vector2.new())
    end)
print("AntiAfk loaded") 
end

local function sendNotification(title, message)
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = title,
        Text = message,
        Icon = "http://www.roblox.com/asset/?id=92639750101948",
        Duration = 5,
    })
end

sendNotification("Script Loaded", "Auto Rejoin Script is running!")

game:GetService("GuiService").ErrorMessageChanged:Connect(function()
    sendNotification("Error Detected", "Attempting to rejoin...")
    wait(5)
    game:GetService("TeleportService"):Teleport(game.PlaceId)
end)

game:GetService("Players").LocalPlayer.OnTeleport:Connect(function(State)
    if State == Enum.TeleportState.Failed then
        sendNotification("Teleport Failed", "Retrying teleport...")
        wait(5)
        game:GetService("TeleportService"):Teleport(game.PlaceId)
    end
end)

function autoRejoin()
    sendNotification("Connectivity Check", "Monitoring connectivity...")
    while true do
        if not game:GetService("Players").LocalPlayer then
            sendNotification("Lost Connection", "Attempting to rejoin...")
            game:GetService("TeleportService"):Teleport(game.PlaceId)
        end
        wait(10)
    end
end

task.spawn(autoRejoin)


function fireClickRemote()
    game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("Click"):FireServer()
end

function useCodes()
    for _, code in ipairs(game:GetService("Players").LocalPlayer:WaitForChild("Codes"):GetChildren()) do
        game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("UseCode"):FireServer(code.Name)
    end
print("Redeem All code Auto Update Loaded! ") 
end
antiafk() 
useCodes()
while wait() do
    fireClickRemote()
end
end
