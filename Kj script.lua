
   
-- Here Your Toggle For Kavo Ui
 
local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/Librarykavoui"))()
local Window = Library.CreateLib("Kj script by cdolulumitogamer", "Midnight")
local Tab = Window:NewTab("Base moveset")
local Section = Tab:NewSection("Base moves")
 
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ScreenGui"
ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ResetOnSpawn = false
 
local Toggle = Instance.new("TextButton")
Toggle.Name = "Toggle"
Toggle.Parent = ScreenGui
Toggle.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Toggle.Position = UDim2.new(0, 0, 0.454706937, 0)
Toggle.Size = UDim2.new(0, 90, 0, 38)
Toggle.Font = Enum.Font.SourceSans
Toggle.Text = "Hide"
Toggle.TextColor3 = Color3.fromRGB(248, 248, 248)
Toggle.TextSize = 28.000
Toggle.Draggable = true
Toggle.MouseButton1Click:connect(function()
    Library:ToggleUI()
end)
 
local Corner = Instance.new("UICorner")
Corner.Name = "Corner"
Corner.Parent = Toggle
Section:NewButton("Spawn Animation", "FE", function()
local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17325206534"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 1.25

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17325174223"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 1

local p = game.Players.LocalPlayer
local s = function(c)
    local r = game:GetService("ReplicatedStorage")
    local t = r:FindFirstChild("Resources")
    if t then
        local u = t:FindFirstChild("le phone")
        if u then
            local v = u:Clone()
            v.Parent = c
-- Create and play the sound
                


            local w = c:FindFirstChild("RightHand") or c:FindFirstChild("Right Arm")
            if w then
                if not v.PrimaryPart then
                    local basePart = v:FindFirstChildWhichIsA("BasePart")
                    if basePart then
                        v.PrimaryPart = basePart
                    else
                        return
                    end
                end
                
                local x = Instance.new("Weld")
                x.Part0 = w
                x.Part1 = v.PrimaryPart
                x.C0 = CFrame.new(0, -1, 0)
                x.Parent = w


                v:SetPrimaryPartCFrame(w.CFrame * CFrame.new(0, -1, 0))


                -- Play the animation
                local anim = Instance.new("Animation")
                anim.AnimationId = "rbxassetid://17325160621"
                
                local animTrack = c.Humanoid:LoadAnimation(anim)
                animTrack:Play()


                
                -- Delete the model after 1.25 seconds
                delay(1.25, function()
                    if v and v.Parent then
                        v:Destroy()


local p = game.Players.LocalPlayer
local a = p.Character
local x = game:GetService("ReplicatedStorage")
local v = game:GetService("Workspace")


local function r()
    local s = x:FindFirstChild("Resources")
    if not s then return end


    local m = s:FindFirstChild("PhonePhysicsTest")
    if not m then return end


    local c = m:Clone()


    local h = a:FindFirstChild("Head")
    if not h then return end


    local d = h.CFrame.LookVector
    local o = h.Position + d * 0.15


    c:SetPrimaryPartCFrame(CFrame.new(o))
    c.Parent = v



Wait(0.35)

                -- Create and play the sound
                local sound = Instance.new("Sound")
                sound.SoundId = "rbxassetid://17325211957"
                sound.Parent = Workspace
                sound:Play()


    wait(5)

    if c and c.Parent then
        c:Destroy()
    end
end


r()


                    end
                end)
            end
        end
    end
end


p.CharacterAdded:Connect(s)
if p.Character then
    s(p.Character)
end
end)
Section:NewButton("Ravage", "Client", function()
loadstring(game:HttpGet("https://pastebin.com/raw/Xh0QaLUj"))()
end)
Section:NewButton("Swift Sweep", "Client", function()
 local p = game.Players.LocalPlayer
local Humanoid = p.Character:WaitForChild("Humanoid")
 
local AnimAnim = Instance.new("Animation")
AnimAnim.AnimationId = "rbxassetid://16944265635"
local Anim = Humanoid:LoadAnimation(AnimAnim)
AnimAnim.AnimationId = "rbxassetid://0" -- Reset animation ID
Anim:Play()

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://16944636115"
soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
soundeffect:Play()
soundeffect.Volume = 2


wait(0.4)
local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://16944654440"
soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
soundeffect:Play()
soundeffect.Volume = 2
Anim:Stop()
local p = game.Players.LocalPlayer
local Humanoid = p.Character:WaitForChild("Humanoid")
 
local AnimAnim = Instance.new("Animation")
AnimAnim.AnimationId = "rbxassetid://16944345619"
local Anim = Humanoid:LoadAnimation(AnimAnim)
AnimAnim.AnimationId = "rbxassetid://0" -- Reset animation ID
Anim:Play()

wait(0.025)

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local camera = workspace.CurrentCamera

local speed = 0.001 -- How fast the health reduces (seconds between each health reduction)
local duration = 0.001 -- Total time to keep reducing health (in seconds)
local damageAmount = 3 -- The amount of health to reduce on each hit


local function updateHealthText(dummyHumanoid)
    local billboardGui = dummyHumanoid.Parent:FindFirstChild("Head"):FindFirstChild("BillboardGui")
    if billboardGui then
        local textLabel = billboardGui:FindFirstChild("TextLabel")
        if textLabel then
            local currentHealth = dummyHumanoid.Health
            local maxHealth = dummyHumanoid.MaxHealth
            local healthPercentage = math.floor((currentHealth / maxHealth) * 100)
            textLabel.Text = healthPercentage .. "%"
            textLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
        end
    end
end
local function revertTextColor(dummyHumanoid)
    local billboardGui = dummyHumanoid.Parent:FindFirstChild("Head"):FindFirstChild("BillboardGui")
    if billboardGui then
        local textLabel = billboardGui:FindFirstChild("TextLabel")
        if textLabel then
            textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        end
    end
end
local function resetHealthIfZero(dummyHumanoid)
    if dummyHumanoid.Health <= 0 then
        dummyHumanoid.Health = dummyHumanoid.MaxHealth
        updateHealthText(dummyHumanoid)
    end
end
local function checkForNearbyCharacters()
    for _, targetCharacter in pairs(workspace.Live:GetChildren()) do
        if targetCharacter:IsA("Model") and targetCharacter:FindFirstChild("Humanoid") then
            local targetHumanoid = targetCharacter:FindFirstChild("Humanoid")
            local distance = (targetCharacter.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude
            if targetCharacter ~= character and distance <= 10 then
                targetHumanoid.Health = math.max(0, targetHumanoid.Health - damageAmount)
                if targetHumanoid.Health == 0 then
                     targetHumanoid.Health = targetHumanoid.MaxHealth
                end
                if targetCharacter.Name == "Weakest Dummy" then
                    updateHealthText(targetHumanoid)
                    resetHealthIfZero(targetHumanoid)
                end
            end
        end
    end
end
local function Damage()
    local startTime = tick()
    while tick() - startTime < duration do
        checkForNearbyCharacters()
        wait(speed)
    end
    for _, targetCharacter in pairs(workspace.Live:GetChildren()) do
        if targetCharacter:IsA("Model") and targetCharacter.Name == "Weakest Dummy" and targetCharacter:FindFirstChild("Humanoid") then
            local targetHumanoid = targetCharacter:FindFirstChild("Humanoid")
            revertTextColor(targetHumanoid)
        end
    end
end
Damage()
wait(0.25)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local camera = workspace.CurrentCamera

local speed = 0.001 -- How fast the health reduces (seconds between each health reduction)
local duration = 0.001 -- Total time to keep reducing health (in seconds)
local damageAmount = 5 -- The amount of health to reduce on each hit


local function updateHealthText(dummyHumanoid)
    local billboardGui = dummyHumanoid.Parent:FindFirstChild("Head"):FindFirstChild("BillboardGui")
    if billboardGui then
        local textLabel = billboardGui:FindFirstChild("TextLabel")
        if textLabel then
            local currentHealth = dummyHumanoid.Health
            local maxHealth = dummyHumanoid.MaxHealth
            local healthPercentage = math.floor((currentHealth / maxHealth) * 100)
            textLabel.Text = healthPercentage .. "%"
            textLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
        end
    end
end
local function revertTextColor(dummyHumanoid)
    local billboardGui = dummyHumanoid.Parent:FindFirstChild("Head"):FindFirstChild("BillboardGui")
    if billboardGui then
        local textLabel = billboardGui:FindFirstChild("TextLabel")
        if textLabel then
            textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        end
    end
end
local function resetHealthIfZero(dummyHumanoid)
    if dummyHumanoid.Health <= 0 then
        dummyHumanoid.Health = dummyHumanoid.MaxHealth
        updateHealthText(dummyHumanoid)
    end
end
local function checkForNearbyCharacters()
    for _, targetCharacter in pairs(workspace.Live:GetChildren()) do
        if targetCharacter:IsA("Model") and targetCharacter:FindFirstChild("Humanoid") then
            local targetHumanoid = targetCharacter:FindFirstChild("Humanoid")
            local distance = (targetCharacter.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude
            if targetCharacter ~= character and distance <= 10 then
                targetHumanoid.Health = math.max(0, targetHumanoid.Health - damageAmount)
                if targetHumanoid.Health == 0 then
                     targetHumanoid.Health = targetHumanoid.MaxHealth
                end
                if targetCharacter.Name == "Weakest Dummy" then
                    updateHealthText(targetHumanoid)
                    resetHealthIfZero(targetHumanoid)
                end
            end
        end
    end
end
local function Damage()
    local startTime = tick()
    while tick() - startTime < duration do
        checkForNearbyCharacters()
        wait(speed)
    end
    for _, targetCharacter in pairs(workspace.Live:GetChildren()) do
        if targetCharacter:IsA("Model") and targetCharacter.Name == "Weakest Dummy" and targetCharacter:FindFirstChild("Humanoid") then
            local targetHumanoid = targetCharacter:FindFirstChild("Humanoid")
            revertTextColor(targetHumanoid)
        end
    end
end
Damage()
wait(0.0005)
local boom1 = game.ReplicatedStorage.Resources.KJEffects["LegSweepHit"].Hit:Clone()
boom1.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(boom1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(5) -- Emit 20 particles
        end
    end
local boom1 = game.ReplicatedStorage.Resources.KJEffects["LegSweepHit"].Hit:Clone()
boom1.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(boom1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(5) -- Emit 20 particles
        end
    end
local boom1 = game.ReplicatedStorage.Resources.KJEffects["LegSweepHit"].Hit:Clone()
boom1.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(boom1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(5) -- Emit 20 particles
        end
    end
local hit1 = game.ReplicatedStorage.Resources.KJEffects["lastkick"].Attachment:Clone()
hit1.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(hit1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(1) -- Emit 20 particles
        end
    end
local hit1 = game.ReplicatedStorage.Resources.KJEffects["lastkick"].Attachment:Clone()
hit1.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(hit1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(1) -- Emit 20 particles
        end
    end

local hit1 = game.ReplicatedStorage.Resources.KJEffects["lastkick"].Attachment:Clone()
hit1.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(hit1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(1) -- Emit 20 particles
        end
    end

local player = game.Workspace.Live["Weakest Dummy"]
repeat wait() until player.Humanoid
local dummyhumanoid = game.Workspace.Live["Weakest Dummy"]["Humanoid"]

local anim2 = Instance.new("Animation")
anim2.AnimationId = "rbxassetid://10471478869"

local playAnim2 = dummyhumanoid:LoadAnimation(anim2)
playAnim2:Play()
end)
Section:NewButton("Collateral Ruin", "Client", function()
loadstring(game:HttpGet("https://pastebin.com/raw/6GJBVRCT"))()
end)
Section:NewButton("Wall Combo", "Client", function()
local k = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
k.Name = "ku"
k.SoundId = "rbxassetid://18443048724"
k.Volume = 5
k:Play()

local r = game:GetService("ReplicatedStorage")
local p = game:GetService("Players").LocalPlayer

local function m()
    local res = r:FindFirstChild("Resources")
    if not res then return end

    local k = res:FindFirstChild("KJEffects")
    if not k then return end

    local j = k:FindFirstChild("KJWallCombo")
    if not j then return end

    local s = j:FindFirstChild("slam")
    if not s or not s:IsA("BasePart") then return end

    local c = s:Clone()
    local playerPos = p.Character.HumanoidRootPart.Position
    local offset = p.Character.HumanoidRootPart.CFrame.LookVector * 3
    c.CFrame = CFrame.new(playerPos + offset, playerPos) -- Position and rotate part to look at player
    c.Parent = workspace
    
    for _, a in pairs(c:GetDescendants()) do
        if a:IsA("Attachment") then
            for _, v in pairs(a:GetDescendants()) do
                if v:IsA("ParticleEmitter") then
                    v:Emit(4)
                end
            end
        end
    end
end

m()

local p = game.Players.LocalPlayer
local Humanoid = p.Character:WaitForChild("Humanoid")

local AnimAnim = Instance.new("Animation")
AnimAnim.AnimationId = "rbxassetid://18447913645"
local Anim = Humanoid:LoadAnimation(AnimAnim)
AnimAnim.AnimationId = "rbxassetid://0"
Anim:Play()


local r = game:GetService("RunService")
local t = game:GetService("TweenService")
local c = workspace.CurrentCamera
local h = game.Players.LocalPlayer.Character

local function s(d)
    if not d then return end

    local o = c.CFrame
    local e = 0
    local con

    h.Humanoid.AutoRotate = false
    c.CameraType = Enum.CameraType.Scriptable

    con = r.RenderStepped:Connect(function(dt)
        e = e + dt * 60
        local k = d[math.ceil(e)]

        if k then
            t:Create(c, TweenInfo.new(0.0005, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                CFrame = h.HumanoidRootPart.CFrame * k.cframe,
                FieldOfView = k.fov
            }):Play()
        else
            con:Disconnect()
            c.FieldOfView = 70
            h.Humanoid.AutoRotate = true
            c.CameraType = Enum.CameraType.Custom
            c.CFrame = o
        end
    end)
end

local m = require(game.ReplicatedStorage.Cutscenes.KJ)

local d = m
if d then
    s(d)
end

local V_123 = game.Players.LocalPlayer
local V_456 = V_123.Character or V_123.CharacterAdded:Wait()
local V_789 = V_456:WaitForChild("HumanoidRootPart")

local function V_101()
    local V_112 = workspace:FindFirstChild("Live")
    if not V_112 then return end

    local V_131 = V_112:FindFirstChild("Weakest Dummy")
    if not V_131 then return end

    local V_415 = V_131:Clone()
    V_415.Parent = workspace
    
    local V_516 = V_789.Position + (V_789.CFrame.LookVector * 2)
    local V_718 = CFrame.new(V_516, V_789.Position)
    V_415:SetPrimaryPartCFrame(V_718)

    local V_720 = V_415:FindFirstChildOfClass("Humanoid")
    if V_720 then
        local V_819 = Instance.new("Animation")
        V_819.AnimationId = "rbxassetid://18447915110"
        local V_920 = V_720:LoadAnimation(V_819)
        V_920:Play()
    end
end

V_101()

task.delay(1.6, function()
    
    local ScreenGui = Instance.new("ScreenGui")
    ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
    
    local ImpactFrames = Instance.new("Folder")
    ImpactFrames.Name = "ImpactFrames"
    ImpactFrames.Parent = ScreenGui
    
    local imageIds = {
        "rbxassetid://18439449672",
        "rbxassetid://18439449322",
        "rbxassetid://18439448827",
        "rbxassetid://18439449322",
        "rbxassetid://18439448569",
        "rbxassetid://18439448279",
        "rbxassetid://18439448279",
        "rbxassetid://18439447816",
        "rbxassetid://18439447528",
        "rbxassetid://18439447248",
        "rbxassetid://18439446937",
        "rbxassetid://18439446621",
        "rbxassetid://18439446312",
        "rbxassetid://18439445892",
        "rbxassetid://18439445557",
        "rbxassetid://18439445557",
        "rbxassetid://18439444854",
        "rbxassetid://18439444197",
        "rbxassetid://18439443641",
        "rbxassetid://18439443091",
        "rbxassetid://18439442732",
        "rbxassetid://18439442280",
        "rbxassetid://18439441717",
        "rbxassetid://18439441301",
        "rbxassetid://18439439276",
        "rbxassetid://18439438892",
        "rbxassetid://18439438588",
        "rbxassetid://18439438325",
        "rbxassetid://18439437897",
        "rbxassetid://18439437436",
        "rbxassetid://18439436945",
        "rbxassetid://18439436647",
        "rbxassetid://18439418311",
        "rbxassetid://18439436436",
        "rbxassetid://18439436154",
        "rbxassetid://18439435769",
        "rbxassetid://18439435367",
        "rbxassetid://18439435078",
        "rbxassetid://18439434634",
        "rbxassetid://18439434365",
        "rbxassetid://18439433887",
        "rbxassetid://18439433322",
        "rbxassetid://18439432946",
        "rbxassetid://18439432512",
        "rbxassetid://18439432070",
        "rbxassetid://18439431561",
        "rbxassetid://18439431285",
        "rbxassetid://18439430917",
        "rbxassetid://18439430536",
        "rbxassetid://18439430081",
        "rbxassetid://18439429154",
        "rbxassetid://18439428804",
        "rbxassetid://18439428359",
        "rbxassetid://18443661388",
        "rbxassetid://18439426773",
        "rbxassetid://18439426388",
        "rbxassetid://18439425936",
        "rbxassetid://18439425421",
        "rbxassetid://18439424913",
        "rbxassetid://18439424277",
        "rbxassetid://18439423773",
        "rbxassetid://18439423480",
        "rbxassetid://18439423074",
        "rbxassetid://18439422402",
        "rbxassetid://18439422036",
        "rbxassetid://18439421605",
        "rbxassetid://18439421256",
        "rbxassetid://18439420866",
        "rbxassetid://18439420496",
        "rbxassetid://18439420101",
        "rbxassetid://18439419463",
        "rbxassetid://18439418712",
        "rbxassetid://18439418311"
    }
    
    for i = 1, 73 do
        local ImageLabel = Instance.new("ImageLabel")
        ImageLabel.Name = i
        ImageLabel.Size = UDim2.new(0.005, 0, 0, 0)
        ImageLabel.Position = UDim2.new(0, 0, 0, 0)
        ImageLabel.ImageTransparency = 0
        ImageLabel.BackgroundTransparency = 1
        ImageLabel.Visible = true
        ImageLabel.Parent = ImpactFrames
        if imageIds[i] then
            ImageLabel.Image = imageIds[i]
        end
        task.wait()
    end
    
    for i = 1, 73 do
        ImpactFrames:GetChildren()[i].Size = UDim2.new(1, 0, 1, 100)
        ImpactFrames:GetChildren()[i].Position = UDim2.new(0, 0, 0, -100)
        task.wait(0.033)
        ImpactFrames:GetChildren()[i].ImageTransparency = 1
    end
    
    ScreenGui:Destroy()
    
end)


delay(2.8, function()

local r = game:GetService("ReplicatedStorage")
local p = game:GetService("Players").LocalPlayer

local function m()
    local a = r:FindFirstChild("Resources")
    if not a then return end

    local b = a:FindFirstChild("KJEffects")
    if not b then return end

    local c = b:FindFirstChild("KJWallCombo")
    if not c then return end

    local d = c:FindFirstChild("UserAura")
    if not d or not d:IsA("Folder") then return end

    local e = p.Character:FindFirstChild("Torso")
    if not e then return end

    for _, f in pairs(d:GetChildren()) do
        if f:IsA("ParticleEmitter") then
            local g = f:Clone()
            g.Parent = e
            g.Enabled = true
            g.Rate = 50
            g:Emit(2)
        end
    end
end

m()

local p = game.Players.LocalPlayer
local c = p.Character
local h = c:FindFirstChild("HumanoidRootPart")

local f = game.ReplicatedStorage.Resources.KJEffects.KJWallCombo.hold
local g = f:Clone()
g.Parent = workspace
g.CFrame = h.CFrame * CFrame.new(0, 0, -1.9)

for _, a in ipairs(g:GetDescendants()) do
    if a:IsA("Attachment") then
        for _, b in ipairs(a:GetChildren()) do
            if b:IsA("ParticleEmitter") then
                b.Enabled = true
            end
        end
    end
end
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local camera = workspace.CurrentCamera

local speed = 0.001 -- How fast the health reduces (seconds between each health reduction)
local duration = 0.001 -- Total time to keep reducing health (in seconds)
local damageAmount = 36 -- The amount of health to reduce on each hit


local function updateHealthText(dummyHumanoid)
    local billboardGui = dummyHumanoid.Parent:FindFirstChild("Head"):FindFirstChild("BillboardGui")
    if billboardGui then
        local textLabel = billboardGui:FindFirstChild("TextLabel")
        if textLabel then
            local currentHealth = dummyHumanoid.Health
            local maxHealth = dummyHumanoid.MaxHealth
            local healthPercentage = math.floor((currentHealth / maxHealth) * 100)
            textLabel.Text = healthPercentage .. "%"
            textLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
        end
    end
end
local function revertTextColor(dummyHumanoid)
    local billboardGui = dummyHumanoid.Parent:FindFirstChild("Head"):FindFirstChild("BillboardGui")
    if billboardGui then
        local textLabel = billboardGui:FindFirstChild("TextLabel")
        if textLabel then
            textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        end
    end
end
local function resetHealthIfZero(dummyHumanoid)
    if dummyHumanoid.Health <= 0 then
        dummyHumanoid.Health = dummyHumanoid.MaxHealth
        updateHealthText(dummyHumanoid)
    end
end
local function checkForNearbyCharacters()
    for _, targetCharacter in pairs(workspace.Live:GetChildren()) do
        if targetCharacter:IsA("Model") and targetCharacter:FindFirstChild("Humanoid") then
            local targetHumanoid = targetCharacter:FindFirstChild("Humanoid")
            local distance = (targetCharacter.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude
            if targetCharacter ~= character and distance <= 10 then
                targetHumanoid.Health = math.max(0, targetHumanoid.Health - damageAmount)
                if targetHumanoid.Health == 0 then
                     targetHumanoid.Health = targetHumanoid.MaxHealth
                end
                if targetCharacter.Name == "Weakest Dummy" then
                    updateHealthText(targetHumanoid)
                    resetHealthIfZero(targetHumanoid)
                end
            end
        end
    end
end
local function Damage()
    local startTime = tick()
    while tick() - startTime < duration do
        checkForNearbyCharacters()
        wait(speed)
    end
    for _, targetCharacter in pairs(workspace.Live:GetChildren()) do
        if targetCharacter:IsA("Model") and targetCharacter.Name == "Weakest Dummy" and targetCharacter:FindFirstChild("Humanoid") then
            local targetHumanoid = targetCharacter:FindFirstChild("Humanoid")
            revertTextColor(targetHumanoid)
        end
    end
end
Damage()
wait(0.25)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local camera = workspace.CurrentCamera

local speed = 0.001 -- How fast the health reduces (seconds between each health reduction)
local duration = 0.001 -- Total time to keep reducing health (in seconds)
local damageAmount = 0 -- The amount of health to reduce on each hit


local function updateHealthText(dummyHumanoid)
    local billboardGui = dummyHumanoid.Parent:FindFirstChild("Head"):FindFirstChild("BillboardGui")
    if billboardGui then
        local textLabel = billboardGui:FindFirstChild("TextLabel")
        if textLabel then
            local currentHealth = dummyHumanoid.Health
            local maxHealth = dummyHumanoid.MaxHealth
            local healthPercentage = math.floor((currentHealth / maxHealth) * 100)
            textLabel.Text = healthPercentage .. "%"
            textLabel.TextColor3 = Color3.fromRGB(255, 0, 0)
        end
    end
end
local function revertTextColor(dummyHumanoid)
    local billboardGui = dummyHumanoid.Parent:FindFirstChild("Head"):FindFirstChild("BillboardGui")
    if billboardGui then
        local textLabel = billboardGui:FindFirstChild("TextLabel")
        if textLabel then
            textLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
        end
    end
end
local function resetHealthIfZero(dummyHumanoid)
    if dummyHumanoid.Health <= 0 then
        dummyHumanoid.Health = dummyHumanoid.MaxHealth
        updateHealthText(dummyHumanoid)
    end
end
local function checkForNearbyCharacters()
    for _, targetCharacter in pairs(workspace.Live:GetChildren()) do
        if targetCharacter:IsA("Model") and targetCharacter:FindFirstChild("Humanoid") then
            local targetHumanoid = targetCharacter:FindFirstChild("Humanoid")
            local distance = (targetCharacter.HumanoidRootPart.Position - character.HumanoidRootPart.Position).magnitude
            if targetCharacter ~= character and distance <= 125 then
                targetHumanoid.Health = math.max(0, targetHumanoid.Health - damageAmount)
                if targetHumanoid.Health == 0 then
                     targetHumanoid.Health = targetHumanoid.MaxHealth
                end
                if targetCharacter.Name == "Weakest Dummy" then
                    updateHealthText(targetHumanoid)
                    resetHealthIfZero(targetHumanoid)
                end
            end
        end
    end
end
local function Damage()
    local startTime = tick()
    while tick() - startTime < duration do
        checkForNearbyCharacters()
        wait(speed)
    end
    for _, targetCharacter in pairs(workspace.Live:GetChildren()) do
        if targetCharacter:IsA("Model") and targetCharacter.Name == "Weakest Dummy" and targetCharacter:FindFirstChild("Humanoid") then
            local targetHumanoid = targetCharacter:FindFirstChild("Humanoid")
            revertTextColor(targetHumanoid)
        end
    end
end
Damage()
local p = game.Players.LocalPlayer
local c = p.Character
local f = game.ReplicatedStorage.Resources.KJEffects.KJWallCombo.feet
local g = f:Clone()
g.Parent = workspace

local lLeg = c:FindFirstChild("Left Leg")
if lLeg then
    g.CFrame = lLeg.CFrame * CFrame.Angles(math.rad(-90), 0, 0)
end

for _, a in ipairs(g:GetDescendants()) do
    if a:IsA("Attachment") then
        for _, b in ipairs(a:GetChildren()) do
            if b:IsA("ParticleEmitter") then
                b:Emit(2)
            end
        end
    end
end

delay(0.6, function()
local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()

local function s(t)
    for _, ch in ipairs(t:GetChildren()) do
        if ch:IsA("ParticleEmitter") then
            ch.Rate = 0
        end
    end
end

c:WaitForChild("HumanoidRootPart")

local t = c:FindFirstChild("Torso")

if t then
    s(t)
end

end)

end)

delay(5.89, function()

local p = workspace:FindFirstChild("hold")

if p then
    local aNames = {"2", "1", "Attachment"}
    
    for _, c in ipairs(p:GetChildren()) do
        if c:IsA("Attachment") and table.find(aNames, c.Name) then
            for _, d in ipairs(c:GetChildren()) do
                if d:IsA("ParticleEmitter") then
                    d.Rate = 0
                elseif d:IsA("Attachment") then
                    for _, e in ipairs(d:GetChildren()) do
                        if e:IsA("ParticleEmitter") then
                            e.Rate = 0
                        end
                    end
                end
            end
        end
    end
end
    
local p = game.Players.LocalPlayer
local c = p.Character
local h = c:FindFirstChild("HumanoidRootPart")

local function d(e)
    local f = game.ReplicatedStorage.Resources.KJEffects.KJWallCombo[e]
    local g = f:Clone()
    g.Parent = workspace
    g.CFrame = h.CFrame * CFrame.new(3, 0, 0) * CFrame.Angles(0, math.pi / 2, 0)
    
    for _, a in ipairs(g:GetDescendants()) do
        if a:IsA("Attachment") then
            for _, b in ipairs(a:GetChildren()) do
                if b:IsA("ParticleEmitter") then
                    b:Emit(2.8)
                end
            end
        end
    end
end

d("FinalImpact")
d("FinalImpactHUGEignore")

local k = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
k.Name = "KOKUSEN"
k.SoundId = "rbxassetid://18443813318"
k.Volume = 3
k:Play()

end)

delay(8.04, function()
  
local ws = game:GetService("Workspace")

local function dpm()
    local parts = {"FinalImpact", "slam", "hold", "FinalImpactHUGEignore"}
    for _, n in pairs(parts) do
        local p = ws:FindFirstChild(n)
        if p then
            p:Destroy()
        end
    end
end

local function main()
    local m = ws:FindFirstChild("Weakest Dummy")
    if m and m:IsA("Model") then
        m:Destroy()
    end
    dpm()
end

main()

end)

end)
local Tab = Window:NewTab("Ultimate Moveset")
local Section = Tab:NewSection("Ultimate Moves")
Section:NewButton("Awakening 1", "Client", function()
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local EmitBatch1 = ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch1:Clone()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

EmitBatch1.Parent = character:WaitForChild("HumanoidRootPart")

for _, child in ipairs(EmitBatch1:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(50) -- Emit 1 particle
    end
end


loadstring(game:HttpGet("https://pastebin.com/raw/1BeBG2Ch"))()

local boom1 = game.ReplicatedStorage.Resources.KJEffects["spinnerthing"].spinningpartysmoke:Clone()
boom1.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(boom1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(50) -- Emit 20 particles
        end
    end
end)
Section:NewButton("Awakening 2", "Client", function()
local p = game.Players.LocalPlayer
local Humanoid = p.Character:WaitForChild("Humanoid")

local AnimAnim = Instance.new("Animation")
AnimAnim.AnimationId = "rbxassetid://18445236460"
local Anim = Humanoid:LoadAnimation(AnimAnim)
AnimAnim.AnimationId = "rbxassetid://0"
Anim:Play()

local soundId = 18445285190

local sound = Instance.new("Sound")
sound.Name = "audio/kj_awakening_varient_2_sfx_only"
sound.SoundId = "rbxassetid://" .. soundId
sound.Volume = 1
sound.Pitch = 1.0
sound.PlaybackSpeed = 1.0
sound.Parent = workspace
sound:Play()

local soundId = 18445228824

local sound = Instance.new("Sound")
sound.Name = "Audio/kj_awakening_varient_3_voice_only"
sound.SoundId = "rbxassetid://" .. soundId
sound.Volume = 1
sound.Pitch = 1.0
sound.PlaybackSpeed = 1.0
sound.Parent = workspace
sound:Play()

local soundId = 18445228136

local sound = Instance.new("Sound")
sound.Name = "Audio/kj_music_varient_2_start"
sound.SoundId = "rbxassetid://" .. soundId
sound.Volume = 1
sound.Pitch = 1.0
sound.PlaybackSpeed = 1.0
sound.Parent = workspace
sound:Play()

local rushSpeed = 7
local maxForce = Vector3.new(100000, 0, 100000)

local camera = game.Workspace.CurrentCamera
local initialLookVector = camera.CFrame.LookVector
local rushDirection = Vector3.new(initialLookVector.X, 0, initialLookVector.Z).unit

local function initiateRush(character)
    local bodyVelocity = Instance.new("BodyVelocity")
    bodyVelocity.Velocity = rushDirection * rushSpeed
    bodyVelocity.MaxForce = maxForce
    bodyVelocity.P = 10000
    bodyVelocity.Parent = character:WaitForChild("HumanoidRootPart")

    local function updateRushDirection()
        rushDirection = camera.CFrame.LookVector
        rushDirection = Vector3.new(rushDirection.X, 0, rushDirection.Z).unit
        bodyVelocity.Velocity = rushDirection * rushSpeed
    end

    local connection
    connection = game:GetService("RunService").RenderStepped:Connect(function()
        updateRushDirection()
    end)

    local function stopRushEffect()
        bodyVelocity:Destroy()
        connection:Disconnect()
    end

    wait(1.6)
    stopRushEffect()
end

task.spawn(function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    local teleportDistance = 0.2 -- The distance to teleport forward each step
    local teleportInterval = 0 -- Time interval between each teleport (in seconds)
    local totalDuration = 1.85 -- Total duration of the teleportation (in seconds)

    local timeElapsed = 0
    local startTime = tick() -- Record the start time

    while timeElapsed < totalDuration do
        humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.new(0, 0, -teleportDistance)
        wait(teleportInterval)
        timeElapsed = tick() - startTime -- Update the elapsed time
    end
end) 
wait(1.7)
wait(0.2)

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local EmitBatch3 = ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch3:Clone()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

EmitBatch3.Parent = character:WaitForChild("HumanoidRootPart")

for _, child in ipairs(EmitBatch3:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(1)
    end
end

local EmitBatch1 = ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch1:Clone()
EmitBatch1.Parent = character:WaitForChild("HumanoidRootPart")

for _, child in ipairs(EmitBatch1:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(60)
    end
end

local EmitBatch2 = ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch2:Clone()
EmitBatch2.Parent = character:WaitForChild("HumanoidRootPart")

for _, child in ipairs(EmitBatch2:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(1)
    end
end
end)
Section:NewButton("Stoic Bomb", "Client", function()
local p = game.Players.LocalPlayer
local Humanoid = p.Character:WaitForChild("Humanoid")
 
local AnimAnim = Instance.new("Animation")
AnimAnim.AnimationId = "rbxassetid://17141153099"
local Anim = Humanoid:LoadAnimation(AnimAnim)
AnimAnim.AnimationId = "rbxassetid://0" -- Reset animation ID
Anim:Play()

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17149593018"
soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
soundeffect:Play()
soundeffect.Volume = 6

local launch1 = game.ReplicatedStorage.Resources.KJEffects["launchup"].launchything:Clone()
launch1.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(launch1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(20) -- Emit 20 particles
        end
    end


wait(0.7)

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17141392513"
soundeffect.Parent = game.Players.LocalPlayer.Character.Torso
soundeffect:Play()
soundeffect.Volume = 1

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Workspace = game:GetService("Workspace")
local RunService = game:GetService("RunService")

-- Wait for the player to load
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Find the "Right Arm" part inside the player's character
local rightArm = character:WaitForChild("HumanoidRootPart")
if not rightArm then
    error("Right Arm part not found in player character")
end

-- Check for Resources folder in ReplicatedStorage
local resourcesFolder = ReplicatedStorage:WaitForChild("Resources")

-- Check for KJEffects folder inside Resources
local kjEffectsFolder = resourcesFolder:WaitForChild("KJEffects")

-- Check for speedlinesandstuff part inside KJEffects
local speedlinesandstuffPart = kjEffectsFolder:WaitForChild("stoicbombspeedlines")

-- Duplicate the speedlinesandstuff part
local speedlinesandstuffClone = speedlinesandstuffPart:Clone()

-- Put the duplicate in Workspace
speedlinesandstuffClone.Parent = Workspace

-- Set the position to the Right Arm initially
speedlinesandstuffClone.CFrame = rightArm.CFrame

-- Function to enable all ParticleEmitters
local function enableParticleEmitters(parent)
    for _, descendant in ipairs(parent:GetDescendants()) do
        if descendant:IsA("ParticleEmitter") then
            descendant.Enabled = true
        end
    end
end

-- Update the clone's position every frame
RunService.RenderStepped:Connect(function()
    if character and rightArm then
        speedlinesandstuffClone.CFrame = rightArm.CFrame
    end
end)

-- Example usage after your dash effect completes
spawn(function()
    -- Simulating end of dash effect
    wait(0)  -- Adjust the wait time as needed

    -- Enable all ParticleEmitters inside speedlinesandstuffClone
    enableParticleEmitters(speedlinesandstuffClone)

    -- Wait for 0.7 seconds
    wait(0.7)

    -- Destroy the cloned part
    speedlinesandstuffClone:Destroy()
end)

local light1 = game.ReplicatedStorage.Resources.StoicBomb["stoicbombspeedlines"].POINTOLIGHTO:Clone()
light1.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(light1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(140) -- Emit 20 particles
        end
    end
local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17141392976"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 1.5

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17141392676"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 6
wait(1.4)
local boom1 = game.ReplicatedStorage.Resources.KJEffects["stoic bomb boom entrance"].Attachment:Clone()
boom1.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(boom1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(20) -- Emit 20 particles
        end
    end
wait(1.2)
local stoic1 = game.ReplicatedStorage.Resources.StoicBomb["pre"].Part.Attachment:Clone()
stoic1.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(stoic1:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(20) -- Emit 20 particles
        end
        end

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17141392854"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 2.5
wait(0.1)
local stoic2 = game.ReplicatedStorage.Resources.StoicBomb["Main"].Part.Attachment:Clone()
stoic2.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(stoic2:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(20) -- Emit 20 particles
        end
        end
wait(0.25)
light1:Destroy()
stoic1:Destroy()
stoic2:Destroy()
local boom2 = game.ReplicatedStorage.Resources.KJEffects["stoic bomb boom entrance"].THEACTUALBOOM:Clone()
boom2.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(boom2:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(20) -- Emit 20 particles
        end
    end

local boom3 = game.ReplicatedStorage.Resources.KJEffects["stoic bomb boom entrance"].smok:Clone()
boom3.Parent = game.Players.LocalPlayer.Character["Torso"]
    for _, child in ipairs(boom3:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(20) -- Emit 20 particles
        end
    end
local boom4 = game.ReplicatedStorage.Resources.KJEffects["stoicbombspeedlines"].Attachment:Clone()
boom4.Parent = game.Players.LocalPlayer.Character["Head"]
    for _, child in ipairs(boom4:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(20) -- Emit 20 particles
        end
    end

local TweenService = game:GetService("TweenService")
local mainModel = game.ReplicatedStorage.Resources.StoicBomb.Stage1:Clone()
local invertedModel = mainModel:FindFirstChild("Inverted")
local windModel = mainModel:FindFirstChild("Wind")
mainModel.Parent = workspace.Thrown

-- Get the character and HumanoidRootPart
local character = game.Players.LocalPlayer.Character
local humanoidRootPart = character and character:FindFirstChild("HumanoidRootPart")

-- Define the target scale for tweening
local targetScale = Vector3.new(250, 250, 250)

-- Tween information with slower time
local tweenInfo = TweenInfo.new(
    0.3, -- Time (in seconds) - increased for slower resizing
    Enum.EasingStyle.Linear, -- EasingStyle
    Enum.EasingDirection.Out, -- EasingDirection
    0, -- RepeatCount (0 = no repeat)
    false, -- Reverses (false = no reverse)
    0 -- DelayTime
)

-- Function to apply tween to a model
local function tweenModel(model)
    local totalTweens = 0
    local completedTweens = 0

    if not model then
        print("Error: Model is nil.")
        return
    end

    for _, part in pairs(model:GetDescendants()) do
        if part:IsA("BasePart") then
            totalTweens += 1
            local tween = TweenService:Create(part, tweenInfo, {Size = targetScale})

            print("Creating tween for part:", part.Name)

            tween.Completed:Connect(function()
                print("Tween completed for part:", part.Name)
                completedTweens += 1
                if completedTweens == totalTweens then
                    print("All tweens completed for model:", model.Name)
                    mainModel:Destroy()
                end
            end)

            tween:Play()
            print("Playing tween for part:", part.Name)
        else
            print("Skipping non-BasePart:", part.Name)
        end
    end

    if totalTweens == 0 then
        print("No BaseParts found in model:", model.Name)
        mainModel:Destroy()
    end
end

-- Function to set mainModel's CFrame to match a HumanoidRootPart
local function setModelCFrameToHumanoidRootPart(model, humanoidRootPart)
    if not model.PrimaryPart then
        print("Error: The model does not have a PrimaryPart set.")
        return
    end

    if humanoidRootPart then
        model:SetPrimaryPartCFrame(humanoidRootPart.CFrame)
        print("Model CFrame set to HumanoidRootPart CFrame.")
    else
        print("Error: HumanoidRootPart not found.")
    end
end

-- Check if the HumanoidRootPart exists
if humanoidRootPart then
    -- Set the CFrame of the mainModel
    setModelCFrameToHumanoidRootPart(mainModel, humanoidRootPart)

    -- Tween both models
    if invertedModel then
        tweenModel(invertedModel)
    else
        print("Error: Inverted model not found.")
    end

    if windModel then
        tweenModel(windModel)
    else
        print("Error: Wind model not found.")
    end
else
    print("Error: HumanoidRootPart not found.")
end
end)
Section:NewButton("20-20-20 Dropkick", "Client", function()
loadstring(game:HttpGet("https://pastebin.com/raw/g7Xjypk8"))()
end)
Section:NewButton("Five Seasons", "Client", function()

loadstring(game:HttpGet("https://raw.githubusercontent.com/Skibidicatlol/Skibidicatlol/main/Five Seasons.lua"))()

end)
local Tab = Window:NewTab("Others")
local Section = Tab:NewSection("Other things")
Section:NewButton("Kj awakening/theme", "Client", function()
local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17150550093"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 1.25

end)

local Tab = Window:NewTab("Dummy spawner")
local Section = Tab:NewSection("Yes, it spawns weakest dummy")
Section:NewButton("Spawn dummy", "Client", function()
    
local V_123 = game.Players.LocalPlayer
local V_456 = V_123.Character or V_123.CharacterAdded:Wait()
local V_789 = V_456:WaitForChild("HumanoidRootPart")

local function V_101()
    local V_112 = workspace:FindFirstChild("Live")
    if not V_112 then return end

    local V_131 = V_112:FindFirstChild("Weakest Dummy")
    if not V_131 then return end

    local V_415 = V_131:Clone()
    V_415.Parent = workspace
    
    local V_516 = V_789.Position + (V_789.CFrame.LookVector * 2)
    local V_718 = CFrame.new(V_516, V_789.Position)
    V_415:SetPrimaryPartCFrame(V_718)

    local V_720 = V_415:FindFirstChildOfClass("Humanoid")
    if V_720 then
        local V_819 = Instance.new("Animation")
        V_819.AnimationId = "rbxassetid://1"
        local V_920 = V_720:LoadAnimation(V_819)
        V_920:Play()
    end
end

V_101()

local ws = game:GetService("Workspace")

local function dpm()
    local parts = {"FinalImpact", "slam", "hold", "FinalImpactHUGEignore"}
    for _, n in pairs(parts) do
        local p = ws:FindFirstChild(n)
        if p then
            p:Destroy()
        end
    end
end

local function main()
    local m = ws:FindFirstChild("Weakest Dummy")
    if m and m:IsA("Model") then
        m:Destroy()
    end
    dpm()
end
end)
Section:NewButton("Delete dummy", "", function()
        local ws = game:GetService("Workspace")

local function dpm()
    local parts = {"FinalImpact", "slam", "hold", "FinalImpactHUGEignore"}
    for _, n in pairs(parts) do
        local p = ws:FindFirstChild(n)
        if p then
            p:Destroy()
        end
    end
end

local function main()
    local m = ws:FindFirstChild("Weakest Dummy")
    if m and m:IsA("Model") then
        m:Destroy()
    end
    dpm()
end
main()
    end)
local Tab = Window:NewTab("Model Spawner")

Section:NewButton("Broken phone spawner", "Client", function()
local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://1"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 1.25

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://1"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 1

local p = game.Players.LocalPlayer
local s = function(c)
    local r = game:GetService("ReplicatedStorage")
    local t = r:FindFirstChild("Resources")
    if t then
        local u = t:FindFirstChild("le phone")
        if u then
            local v = u:Clone()
            v.Parent = c
-- Create and play the sound
                


            local w = c:FindFirstChild("RightHand") or c:FindFirstChild("Right Arm")
            if w then
                if not v.PrimaryPart then
                    local basePart = v:FindFirstChildWhichIsA("BasePart")
                    if basePart then
                        v.PrimaryPart = basePart
                    else
                        return
                    end
                end
                
                local x = Instance.new("Weld")
                x.Part0 = w
                x.Part1 = v.PrimaryPart
                x.C0 = CFrame.new(0, -1, 0)
                x.Parent = w


                v:SetPrimaryPartCFrame(w.CFrame * CFrame.new(0, -1, 0))


                -- Play the animation
                local anim = Instance.new("Animation")
                anim.AnimationId = "rbxassetid://1"
                
                local animTrack = c.Humanoid:LoadAnimation(anim)
                animTrack:Play()


                
                -- Delete the model after 1.25 seconds
                delay(0, function()
                    if v and v.Parent then
                        v:Destroy()


local p = game.Players.LocalPlayer
local a = p.Character
local x = game:GetService("ReplicatedStorage")
local v = game:GetService("Workspace")


local function r()
    local s = x:FindFirstChild("Resources")
    if not s then return end


    local m = s:FindFirstChild("PhonePhysicsTest")
    if not m then return end


    local c = m:Clone()


    local h = a:FindFirstChild("Right Arm")
    if not h then return end


    local d = h.CFrame.LookVector
    local o = h.Position + d * 0.15


    c:SetPrimaryPartCFrame(CFrame.new(o))
    c.Parent = v



Wait(0.35)

                -- Create and play the sound
                local sound = Instance.new("Sound")
                sound.SoundId = "rbxassetid://1"
                sound.Parent = Workspace
                sound:Play()


    wait(5)

    if c and c.Parent then
        
    end
end


r()


                    end
                end)
            end
        end
    end
end

   end)
   
Section:NewButton("Make the broken phone dessapear", "Bruh", function()

c:Destroy()


         end)
      -- Function to stop all sounds
local function stopAllSounds()
    -- Get all descendants of the workspace
    local allDescendants = game:GetDescendants()
 
    -- Loop through all descendants
    for _, descendant in ipairs(allDescendants) do
        -- Check if the descendant is a Sound object
        if descendant:IsA("Sound") then
            -- Stop the sound
            descendant:Stop()
        end
    end
end
 
-- Call the function to stop all sounds
stopAllSounds()
      
   end)
local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Credits to Camerawomanfr by the spawn anim")
local Section = Tab:NewSection("Credits to Kj hub for wall combo")
local Section = Tab:NewSection("Credits to tariviste for tips and my inspiration ")
local Section = Tab:NewSection("Credits to phxy xeditzfor collateral ruin (Pls dont make me")
local Section = Tab:NewSection("delete it ) and for revive this hub")
local Section = Tab:NewSection("Credits to lloydgarmadon43 for five seasons")
local Section = Tab:NewSection("Credits to Scythe789_0 in YOUTUBE for ravage")
local Section = Tab:NewSection("Credits to me for uh, idk")
