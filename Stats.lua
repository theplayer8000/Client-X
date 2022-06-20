local function Gui()
    local Stats = Instance.new("ScreenGui")
    local Frame = Instance.new("Frame")
    local Fist = Instance.new("TextLabel")
    local UICorner = Instance.new("UICorner")
    local UIAspectRatioConstraint = Instance.new("UIAspectRatioConstraint")
    local UITextSizeConstraint = Instance.new("UITextSizeConstraint")
    local Body = Instance.new("TextLabel")
    local UICorner_2 = Instance.new("UICorner")
    local UIAspectRatioConstraint_2 = Instance.new("UIAspectRatioConstraint")
    local UITextSizeConstraint_2 = Instance.new("UITextSizeConstraint")
    local psychic = Instance.new("TextLabel")
    local UICorner_3 = Instance.new("UICorner")
    local UIAspectRatioConstraint_3 = Instance.new("UIAspectRatioConstraint")
    local UITextSizeConstraint_3 = Instance.new("UITextSizeConstraint")
    local UICorner_4 = Instance.new("UICorner")
    local UIStroke = Instance.new("UIStroke")
    local Name = Instance.new("TextLabel")
    local UICorner_5 = Instance.new("UICorner")
    local UITextSizeConstraint_4 = Instance.new("UITextSizeConstraint")
    local AutoTrain = Instance.new("TextButton")
    local UICorner_6 = Instance.new("UICorner")
    local Rep = Instance.new("TextLabel")
    local UICorner_7 = Instance.new("UICorner")
    local UIAspectRatioConstraint_4 = Instance.new("UIAspectRatioConstraint")
    local UITextSizeConstraint_5 = Instance.new("UITextSizeConstraint")
    local Tokens = Instance.new("TextLabel")
    local UICorner_8 = Instance.new("UICorner")
    local UIAspectRatioConstraint_5 = Instance.new("UIAspectRatioConstraint")
    local UITextSizeConstraint_6 = Instance.new("UITextSizeConstraint")
    local RJ = Instance.new("TextButton")
    local UICorner_9 = Instance.new("UICorner")
    local UITextSizeConstraint_7 = Instance.new("UITextSizeConstraint")
    local UIAspectRatioConstraint_6 = Instance.new("UIAspectRatioConstraint")
    local Train = Instance.new("TextButton")
    local UICorner_10 = Instance.new("UICorner")

    --Properties:

    Stats.Name = "Stats"
    Stats.Parent = game:GetService("CoreGui")
    Stats.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Stats.ResetOnSpawn = false

    Frame.Parent = Stats
    Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Frame.Position = UDim2.new(0.423780501, 0, 0.382456154, 0)
    Frame.Size = UDim2.new(0.152439028, 0, 0.257309943, 0)
    Frame.ZIndex = 0

    Fist.Name = "Fist"
    Fist.Parent = Frame
    Fist.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Fist.BorderSizePixel = 0
    Fist.Position = UDim2.new(0, 0, 0.367824882, 0)
    Fist.Size = UDim2.new(1, 0, 0.183181807, 0)
    Fist.ZIndex = 0
    Fist.Font = Enum.Font.Cartoon
    Fist.Text = "Fist"
    Fist.TextColor3 = Color3.fromRGB(255, 0, 4)
    Fist.TextScaled = true
    Fist.TextSize = 14.000
    Fist.TextWrapped = true

    UICorner.Parent = Fist

    UIAspectRatioConstraint.Parent = Fist
    UIAspectRatioConstraint.AspectRatio = 4.963

    UITextSizeConstraint.Parent = Fist
    UITextSizeConstraint.MaxTextSize = 40

    Body.Name = "Body"
    Body.Parent = Frame
    Body.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Body.BorderSizePixel = 0
    Body.Position = UDim2.new(0, 0, 0.551006675, 0)
    Body.Size = UDim2.new(1, 0, 0.139052823, 0)
    Body.ZIndex = 0
    Body.Font = Enum.Font.Cartoon
    Body.Text = "Body"
    Body.TextColor3 = Color3.fromRGB(255, 85, 0)
    Body.TextScaled = true
    Body.TextSize = 14.000
    Body.TextWrapped = true

    UICorner_2.Parent = Body

    UIAspectRatioConstraint_2.Parent = Body
    UIAspectRatioConstraint_2.AspectRatio = 6.538

    UITextSizeConstraint_2.Parent = Body
    UITextSizeConstraint_2.MaxTextSize = 30

    psychic.Name = "psychic"
    psychic.Parent = Frame
    psychic.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    psychic.BorderSizePixel = 0
    psychic.Position = UDim2.new(0, 0, 0.692153633, 0)
    psychic.Size = UDim2.new(1, 0, 0.166325554, 0)
    psychic.ZIndex = 0
    psychic.Font = Enum.Font.Cartoon
    psychic.Text = "Psychic"
    psychic.TextColor3 = Color3.fromRGB(21, 0, 255)
    psychic.TextScaled = true
    psychic.TextSize = 14.000
    psychic.TextWrapped = true

    UICorner_3.Parent = psychic

    UIAspectRatioConstraint_3.Parent = psychic
    UIAspectRatioConstraint_3.AspectRatio = 5.466

    UITextSizeConstraint_3.Parent = psychic
    UITextSizeConstraint_3.MaxTextSize = 36

    UICorner_4.Parent = Frame

    UIStroke.Color = Color3.fromRGB(68, 68, 68)
    UIStroke.Thickness = 5.000
    UIStroke.Parent = Frame

    Name.Name = "Name"
    Name.Parent = Frame
    Name.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Name.BorderSizePixel = 0
    Name.Size = UDim2.new(0.589999974, 0, 0.162303671, 0)
    Name.ZIndex = 0
    Name.Font = Enum.Font.Cartoon
    Name.Text = "Name"
    Name.TextColor3 = Color3.fromRGB(255, 255, 255)
    Name.TextScaled = true
    Name.TextSize = 14.000
    Name.TextWrapped = true

    UICorner_5.Parent = Name

    UITextSizeConstraint_4.Parent = Name
    UITextSizeConstraint_4.MaxTextSize = 35

    AutoTrain.Name = "AutoTrain"
    AutoTrain.Parent = Frame
    AutoTrain.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    AutoTrain.Position = UDim2.new(0, 0, 0.859090924, 0)
    AutoTrain.Size = UDim2.new(0.545000017, 0, 0.140909091, 0)
    AutoTrain.ZIndex = 0
    AutoTrain.Font = Enum.Font.Cartoon
    AutoTrain.Text = "AutoTrain : OFF"
    AutoTrain.TextColor3 = Color3.fromRGB(255, 0, 4)
    AutoTrain.TextScaled = true
    AutoTrain.TextSize = 14.000
    AutoTrain.TextWrapped = true

    UICorner_6.Parent = AutoTrain

    Rep.Name = "Rep"
    Rep.Parent = Frame
    Rep.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Rep.BorderSizePixel = 0
    Rep.Position = UDim2.new(0, 0, 0.18146126, 0)
    Rep.Size = UDim2.new(0.455000013, 0, 0.183181807, 0)
    Rep.ZIndex = 0
    Rep.Font = Enum.Font.Cartoon
    Rep.Text = "Rep : 0"
    Rep.TextColor3 = Color3.fromRGB(85, 0, 127)
    Rep.TextScaled = true
    Rep.TextSize = 14.000
    Rep.TextWrapped = true

    UICorner_7.Parent = Rep

    UIAspectRatioConstraint_4.Parent = Rep
    UIAspectRatioConstraint_4.AspectRatio = 2.258

    UITextSizeConstraint_5.Parent = Rep
    UITextSizeConstraint_5.MaxTextSize = 32

    Tokens.Name = "Tokens"
    Tokens.Parent = Frame
    Tokens.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Tokens.BorderSizePixel = 0
    Tokens.Position = UDim2.new(0.545000017, 0, 0.18146126, 0)
    Tokens.Size = UDim2.new(0.455000013, 0, 0.183181807, 0)
    Tokens.ZIndex = 0
    Tokens.Font = Enum.Font.Cartoon
    Tokens.Text = "Tokens : 0"
    Tokens.TextColor3 = Color3.fromRGB(255, 255, 0)
    Tokens.TextScaled = true
    Tokens.TextSize = 14.000
    Tokens.TextWrapped = true

    UICorner_8.Parent = Tokens

    UIAspectRatioConstraint_5.Parent = Tokens
    UIAspectRatioConstraint_5.AspectRatio = 2.258

    UITextSizeConstraint_6.Parent = Tokens
    UITextSizeConstraint_6.MaxTextSize = 21

    RJ.Name = "RJ"
    RJ.Parent = Frame
    RJ.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    RJ.Position = UDim2.new(0.545000017, 0, 0.854545474, 0)
    RJ.Size = UDim2.new(0.455000013, 0, 0.140909091, 0)
    RJ.ZIndex = 0
    RJ.Font = Enum.Font.Cartoon
    RJ.Text = "Rejoin"
    RJ.TextColor3 = Color3.fromRGB(255, 194, 143)
    RJ.TextScaled = true
    RJ.TextSize = 14.000
    RJ.TextWrapped = true

    UICorner_9.Parent = RJ

    UITextSizeConstraint_7.Parent = RJ
    UITextSizeConstraint_7.MaxTextSize = 31

    UIAspectRatioConstraint_6.Parent = Frame
    UIAspectRatioConstraint_6.AspectRatio = 0.909

    Train.Name = "Train"
    Train.Parent = Frame
    Train.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
    Train.Position = UDim2.new(0.589999974, 0, 0, 0)
    Train.Size = UDim2.new(0.409999996, 0, 0.140909091, 0)
    Train.ZIndex = 0
    Train.Font = Enum.Font.Cartoon
    Train.Text = "Train"
    Train.TextColor3 = Color3.fromRGB(255, 255, 127)
    Train.TextScaled = true
    Train.TextSize = 14.000
    Train.TextWrapped = true

    UICorner_10.Parent = Train

    -- Scripts:

    local function YVFU_fake_script() -- Frame.Dragify
        local script = Instance.new("LocalScript", Frame)

        pcall(
            function()
                local UserInputService = game:GetService("UserInputService")

                local gui = script.Parent

                local dragging
                local dragInput
                local dragStart
                local startPos

                local function update(input)
                    local delta = input.Position - dragStart
                    gui.Position =
                        UDim2.new(
                        startPos.X.Scale,
                        startPos.X.Offset + delta.X,
                        startPos.Y.Scale,
                        startPos.Y.Offset + delta.Y
                    )
                end

                gui.InputBegan:Connect(
                    function(input)
                        if
                            input.UserInputType == Enum.UserInputType.MouseButton1 or
                                input.UserInputType == Enum.UserInputType.Touch
                         then
                            dragging = true
                            dragStart = input.Position
                            startPos = gui.Position

                            input.Changed:Connect(
                                function()
                                    if input.UserInputState == Enum.UserInputState.End then
                                        dragging = false
                                    end
                                end
                            )
                        end
                    end
                )

                gui.InputChanged:Connect(
                    function(input)
                        if
                            input.UserInputType == Enum.UserInputType.MouseMovement or
                                input.UserInputType == Enum.UserInputType.Touch
                         then
                            dragInput = input
                        end
                    end
                )

                UserInputService.InputChanged:Connect(
                    function(input)
                        if input == dragInput and dragging then
                            update(input)
                        end
                    end
                )
            end
        )
    end
    coroutine.wrap(YVFU_fake_script)()
    local function LJCB_fake_script() -- AutoTrain.autotrain
        local script = Instance.new("LocalScript", AutoTrain)

        pcall(
            function()
                if getgenv().autotrain == false then
                    script.Parent.Text = ("AutoTrain : OFF")
                    script.Parent.TextColor3 = Color3.fromRGB(255, 0, 4)
                elseif getgenv().autotrain == true then
                    script.Parent.Text = ("AutoTrain : ON")
                    script.Parent.TextColor3 = Color3.fromRGB(0, 255, 0)
                end

                script.Parent.MouseButton1Click:Connect(
                    function()
                        if getgenv().autotrain == false then
                            getgenv().autotrain = true
                            script.Parent.Text = ("AutoTrain : ON")
                            script.Parent.TextColor3 = Color3.fromRGB(0, 255, 0)
                        elseif getgenv().autotrain == true then
                            getgenv().autotrain = false
                            script.Parent.Text = ("AutoTrain : OFF")
                            script.Parent.TextColor3 = Color3.fromRGB(255, 0, 4)
                        end
                    end
                )
            end
        )
    end

    coroutine.wrap(LJCB_fake_script)()
    local function TKEYZU_fake_script() -- RJ.rejoin
        local script = Instance.new("LocalScript", RJ)

        local Players = game:GetService("Players")
        pcall(
            function()
                script.Parent.MouseButton1Click:Connect(
                    function()
                        if syn.queue_on_teleport then
                            syn.queue_on_teleport('game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()')
                        end

                        game:GetService("TeleportService"):Teleport(game.PlaceId, Players.LocalPlayer)
                    end
                )
            end
        )
    end

    coroutine.wrap(TKEYZU_fake_script)()

    local function OCXMEIY_fake_script() -- Train.Train
        local script = Instance.new("LocalScript", Train)

        pcall(
            function()
                script.Parent.MouseButton1Click:Connect(
                    function()
                        loadstring(
                            game:HttpGet(
                                "https://raw.githubusercontent.com/theplayer8000/Client-X/main/auto%20train.lua"
                            )
                        )()
                    end
                )
            end
        )
    end

    coroutine.wrap(OCXMEIY_fake_script)()

    local abbreviations = {
        "",
        "K",
        "M",
        "B",
        "T",
        "Qa",
        "Qi",
        "Sx",
        "Sp",
        "Oc",
        "No",
        "Dc",
        "Un",
        "Duo",
        "Tre",
        "Qua",
        "Qui",
        "Sed",
        "Sep",
        "Oct",
        "Nov",
        "V"
    }
    -- You can remove or add if you feel
    -- 100Qa, 700Oc, 999Sep, etc.

    local function Format(value, idp)
        local ex = math.floor(math.log(math.max(1, math.abs(value)), 1000))
        local abbrevs = abbreviations[1 + ex] or ("e+" .. ex)
        local normal = math.floor(value * ((10 ^ idp) / (1000 ^ ex))) / (10 ^ idp)

        return ("%." .. idp .. "f%s"):format(normal, abbrevs)
    end

    game:GetService("RunService").Heartbeat:Connect(
        function()
            pcall(
                function()
                    coroutine.wrap(
                        function()
                            local fist = game:GetService("Players").LocalPlayer.PrivateStats.FistStrength.Value
                            local body = game:GetService("Players").LocalPlayer.PrivateStats.BodyToughness.Value
                            local psychic_power = game:GetService("Players").LocalPlayer.PrivateStats.PsychicPower.Value
                            local tokens = game:GetService("Players").LocalPlayer.PrivateStats.Token.Value
                            local rep = game:GetService("Players").LocalPlayer.PrivateStats.Reputation.Value

                            Name.Text = game:GetService("Players").LocalPlayer.Name
                            Fist.Text = ("Fist Strength " .. Format(fist, 6))
                            Body.Text = ("Body Toughness " .. Format(body, 6))
                            psychic.Text = ("Psychic Power " .. Format(psychic_power, 6))
                            Rep.Text = ("Rep " .. Format(rep, 2))
                            Tokens.Text = ("Tokens " .. Format(tokens, 1))
                        end
                    )()
                end
            )
        end
    )
end

if game.PlaceId ~= 2202352383 then
    return
end

while not game:IsLoaded() or not game:GetService("CoreGui") or not game:GetService("Players").LocalPlayer or
    not game:GetService("Players").LocalPlayer.PlayerGui do
    task.wait(1)
end

coroutine.wrap(
    function()
        pcall(
            function()
                game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Died:Connect(
                    function()
                        if getgenv().autotrain == true then
                            if syn.queue_on_teleport then
                                syn.queue_on_teleport('game:GetService("ReplicatedFirst"):RemoveDefaultLoadingScreen()')
                            end
                            game:GetService("TeleportService"):Teleport(game.PlaceId, Players.LocalPlayer)
                            local cx =
                                'loadstring(game:HttpGet("https://raw.githubusercontent.com/theplayer8000/Client-X/main/auto%20train.lua"))();'
                            if syn.queue_on_teleport then
                                syn.queue_on_teleport(cx)
                            end
                        end
                    end
                )
            end
        )
    end
)()

player = game:GetService("Players").LocalPlayer

player.CharacterAdded:Connect(
    function()
        if game:GetService("CoreGui"):FindFirstChild("Stats") then
        else
            Gui()
        end
    end
)
