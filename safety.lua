loadstring(game:HttpGet("https://raw.githubusercontent.com/theplayer8000/Client-X/main/serverHop.lua"))()
local autotrain =
    'loadstring(game:HttpGet("https://raw.githubusercontent.com/theplayer8000/Client-X/main/auto%20train.lua"))();'
local nearest = {}

local function GetDistance(p1, p2)
    local Distance = (p1.Position - p2.Position).magnitude
    return Distance
end
local whitelisted = {
    "1xToxsins",
    "vSebyy",
    "hikiin",
    "HxQueennn",
    "0riginalHybridKlaus",
    "IV9M",
    "IV6M",
    "xqCorey",
    "varlxer",
    "xSirTim",
    "XiiUnWorthy",
    "SporadicSlasher"
}

local Players = game:GetService("Players")
local CheckDistance = 200
function nearestP()
   
    for _, player in pairs(Players:GetPlayers()) do
        pcall(
            function()
                 lp = Players.LocalPlayer.Character.Head
                if
                    player.Character and player.Character.Head and player.Character.Humanoid.Health ~= 0 and
                        not table.find(whitelisted, player.Name)
                 then
                    local DistanceCheck = GetDistance(lp, player.Character.Head)
                    if player ~= Players.LocalPlayer then
                        if DistanceCheck < CheckDistance then
                            nearPlayer = true

                            if not table.find(nearest, player.Name) then
                                table.insert(nearest, player.Name)
                            end
                        end
                    end
                end
            end
        )
    end
end

function LogPlayer()
    local Players = game:GetService("Players")

    local cache = {}

    local function getUserIdFromUsername(name)
        if cache[name] then
            return cache[name]
        end

        local player = Players:FindFirstChild(name)
        if player then
            cache[name] = player.UserId
            return player.UserId
        end
        local id
        pcall(
            function()
                id = Players:GetUserIdFromNameAsync(name)
            end
        )
        cache[name] = id
        return id
    end

    local function webhook(playername, text)
        local Embed = {
            title = tostring(playername) .. " " .. text,
            color = "99999",
            fields = {
                {
                    name = "PlayerId:",
                    value = getUserIdFromUsername(playername)
                },
                {
                    name = "Display Name:",
                    value = game.Players[playername].DisplayName
                },
                {
                    name = "Link:",
                    value = "https://www.roblox.com/users/" .. getUserIdFromUsername(playername)
                },
                {
                    name = "Account Age:",
                    value = game.Players[playername].AccountAge
                }
            }
        }
        (syn and syn.request or http_request)(
            {
                Url = "https://ptb.discord.com/api/webhooks/988130317938343956/eJUHBdewGZweX2wCZJ7xNuJQMAxeztlTXtNagdvpnIstryqnCBscdD403likzt9BM5s6", --WebHook URL
                Method = "POST",
                Headers = {
                    ["Content-Type"] = "application/json"
                },
                Body = game:GetService("HttpService"):JSONEncode({embeds = {Embed}})
            }
        )
    end

    for i, v in pairs(nearest) do
        webhook(v, "Potential User logged within 200 studs of characterr.")
    end
end

coroutine.wrap(
    function()
        while task.wait() do
            for _, hand in pairs(game:GetService("Players").LocalPlayer.Character:GetChildren()) do
                if hand.Name == "RightHand" then
                    hand:Destroy()
                end
            end
        end
    end
)()

serverhop = false
getgenv().toggle = not getgenv().toggle
print(getgenv().toggle)

game:GetService("RunService").Heartbeat:Connect(
    function()
        coroutine.wrap(
            function()
                nearestP()
                local playerGui = game.Players.LocalPlayer.PlayerGui
                for i, v in ipairs(playerGui:GetChildren()) do
                    if v:IsA("ScreenGui") and v.Name == "SoftShutdownGui" then
                        v:Destroy()
                        wait(1.5)
                        Teleport()
                        wait(1.5)
                    end
                end

                pcall(
                    function()
                        local cframex, cframey, cframez =
                            game.Players.LocalPlayer.Character.Head.CFrame.x,
                            game.Players.LocalPlayer.Character.Head.CFrame.y,
                            game.Players.LocalPlayer.Character.Head.CFrame.z

                        if getgenv().autotrain == true then
                            local core = game.Players.LocalPlayer.Character
                            if cframey <= 247 or core.Humanoid:GetState() == Enum.HumanoidStateType.Swimming then
                                game.Players.LocalPlayer.Character:remove()
                                wait()
                                game.ReplicatedStorage.RemoteEvent:FireServer({"Respawn"})
                                serverhop = true
                                if serverhop == true then
                                    serverhop = false
                                    if syn.queue_on_teleport then
                                        syn.queue_on_teleport(autotrain)
                                    end
                                    Teleport()
                                    
                                    LogPlayer()
                                end
                            end
                        end
                    end
                )
            end
        )()
    end
)
