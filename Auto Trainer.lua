if game.PlaceId ~= 2202352383 then return end
while not game:IsLoaded() or not game:GetService("CoreGui") or
    not game:GetService("Players").LocalPlayer or
    not game:GetService("Players").LocalPlayer.PlayerGui do wait(1) end


loadstring(game:HttpGet("https://raw.githubusercontent.com/theplayer8000/Client-X/main/serverHop.lua"))()
loadstring(game:HttpGet("https://raw.githubusercontent.com/theplayer8000/Client-X/main/safety.lua"))();

pc = #game.Players:GetPlayers()
getgenv().autorj = true
pcn = 12
if pc <= pcn then
    print("smaller than or equal to 12")

    getgenv().autorj = true
else
    getgenv().autorj = false
end

local cx = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/theplayer8000/Client-X/main/auto%20train.lua"))();'
if syn.queue_on_teleport and getgenv().autorj == true then
    syn.queue_on_teleport(cx)
end


    local COREGUI = game:GetService("CoreGui")
local Players = game:GetService("Players")
local Dir = COREGUI:FindFirstChild("RobloxPromptGui"):FindFirstChild("promptOverlay")
local cx = 'loadstring(game:HttpGet("https://raw.githubusercontent.com/theplayer8000/Client-X/main/auto%20train.lua"))();'

Dir.DescendantAdded:Connect(
    function(Err)
        if Err.Name == "ErrorTitle" then
            Err:GetPropertyChangedSignal("Text"):Connect(
                function()
                    if Err.Text:sub(0, 12) == "Disconnected" then
                        if #Players:GetPlayers() <= 1 then
                            Players.LocalPlayer:Kick("\nRejoining...")
                            task.wait()
                            game:GetService("GuiService"):ClearError()
                            if syn.queue_on_teleport then
                                syn.queue_on_teleport('game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()')
                            end
                            Teleport()
                            if syn.queue_on_teleport and getgenv().autotrain == true then
                                syn.queue_on_teleport(cx)
                            end
                        else
                            game:GetService("GuiService"):ClearError()
                            if syn.queue_on_teleport then
                                syn.queue_on_teleport('game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()')
                            end
                            Teleport()
                            if syn.queue_on_teleport and getgenv().autotrain == true then
                                syn.queue_on_teleport(cx)
                            end
                        end
                    end
                end
            )
        end
    end
)

