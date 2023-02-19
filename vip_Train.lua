if game.PlaceId ~= 2202352383 then
    return
end
while not game:IsLoaded() or not game:GetService("CoreGui") or not game:GetService("Players").LocalPlayer or
    not game:GetService("Players").LocalPlayer.PlayerGui do
    wait(2)
end

loadstring(game:HttpGet("https://raw.githubusercontent.com/theplayer8000/Client-X/main/antilag.lua"))()

local FsMain = {
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
    "SporadicSlasher",
    "Sinfliction",
    "GeiNaGe"
}
local PpMain = {
    "XiiUnWorthy",
    "IV6M"
}

local player = game:GetService("Players").LocalPlayer

TrainFist = false
TrainPsychic = false

if table.find(FsMain, player.Name) then
    TrainFist = true
    TrainPsychic = false
elseif table.find(PpMain, player.Name) then
    TrainFist = false
    TrainPsychic = true
end

coroutine.wrap(
    function()
        local NewPart = Instance.new("Part", game.Workspace)
        NewPart.Position = Vector3.new(-272, 277.5, 1004) --Position of the part.

        NewPart.Anchored = true
        NewPart.Size = Vector3.new(100, 1.5, 100)
        NewPart.Color = Color3.fromRGB(109, 232, 246)
        --loadstring(game:HttpGet("https://raw.githubusercontent.com/theplayer8000/Client-X/main/Stats.lua", true))()
        wait(2)
        game.ReplicatedStorage.RemoteEvent:FireServer({"Respawn"})
        wait(3)
        if TrainFist == true then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-266, 281, 1001) * CFrame.Angles(0, math.rad(269), 0)

            task.wait(1)
            player.Character.UpperTorso.Waist:Destroy()
            task.wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-369, 15735, -9) * CFrame.Angles(0, math.rad(269), 0)

            task.wait(1)

            game:GetService("RunService").Heartbeat:Connect(
                function()
                    coroutine.wrap(
                        function()
                            --game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                --CFrame.new(-369, 15735, -9) * CFrame.Angles(0, math.rad(269), 0)
                            game.ReplicatedStorage.RemoteEvent:FireServer({"+FS6"})
                        end
                    )()
                end
            )
        elseif TrainPsychic == true then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-266, 281, 1001) * CFrame.Angles(0, math.rad(269), 0)
            task.wait(1)
            player.Character.UpperTorso.Waist:Destroy()
            task.wait(1)
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                CFrame.new(-2544, 5412, -495) * CFrame.Angles(0, math.rad(269), 0)

            task.wait(1)

            game:GetService("RunService").Heartbeat:Connect(
                function()
                    coroutine.wrap(
                        function()
                            --game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
                                --CFrame.new(-2544, 5412, -495) * CFrame.Angles(0, math.rad(269), 0)
                            game.ReplicatedStorage.RemoteEvent:FireServer({"+PP6"})
                        end
                    )()
                end
            )
        end
    end
)()
