local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/tbao143/thaibao/main/Librarykavoui"))()
local Window = Library.CreateLib("KJ Script, made by @cdolulumitogamer ", "Midnight")
local Tab = Window:NewTab("Base Moveset")
local Section = Tab:NewSection("Base Moves")
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

        
   
       
        local Players = game:GetService("Players")
        local LocalPlayer = Players.LocalPlayer
        local RunService = game:GetService("RunService")
        local Emit = {}

                function Emit.Emit(Any)
                    task.wait(.001)
                    for _, Particles in pairs(Any:GetDescendants()) do
                        task.delay(Particles:GetAttribute("EmitDelay"), function()
                            if Particles:IsA('ParticleEmitter') then
                                Particles:Emit(Particles:GetAttribute("EmitCount"))
                            end
                            if Particles:GetAttribute("EmitDuration") then
                                if Particles:GetAttribute("EmitDuration") > 0 then
                                    task.defer(function()
                                        Particles.Enabled = true
                                        task.wait(Particles:GetAttribute("EmitDuration"))
                                        Particles.Enabled = false
                                    end)
                                end
                            else
                                if Particles:IsA("ParticleEmitter") then
                                    Particles:Emit(Particles:GetAttribute("EmitCount"))
                                end
                            end
                        end)
                    end
                end
            local RS = game.ReplicatedStorage
        local v_u_1 = game:GetService("RunService")
        local v2 = game.Players.LocalPlayer
        local v_u_3 = v2.Character or v2.CharacterAdded:Wait()
        local v_u_4 = workspace.CurrentCamera
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local TweenService = game:GetService("TweenService")
        local localPlayer = Players.LocalPlayer
        local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
        local Camera = workspace.CurrentCamera
        local FiveEffects = RS.Resources.FiveSeasonsFX
        local EYE = FiveEffects.CharFX.EyeEmit:Clone()
        local KJEffects = RS.Resources.KJEffects
        local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoid = character:WaitForChild("Humanoid")
        local MYHANDISBURNINGAHHHHH = FiveEffects.HandFire:Clone()
        local Hand = FiveEffects.CharFX.ArmFX:Clone()
        local NOIMTELEPORTINGHELPPPPP = FiveEffects.CharFX.TP:Clone()
        local animator = humanoid:WaitForChild("Animator")
        local Animation = Instance.new("Animation")
        Animation.AnimationId = "rbxassetid://18462892217"
            
        local playAnim = humanoid:LoadAnimation(Animation)
        Animation.AnimationId = "rbxassetid://0"
        playAnim:Play()
        spawn(function()
            wait(7.5)
            local SoundTP = Instance.new("Sound", character.Torso)
            SoundTP.SoundId = "rbxassetid://18461671633"
            SoundTP.Playing = true 
        NOIMTELEPORTINGHELPPPPP.Parent = character.Torso
        print("IM TELEPORTING MAMA")
        local beamName = "1" -- Aktif hale getirmek istediÃƒâ€žÃ…Â¸iniz beam'in adÃƒâ€žÃ‚Â±
        local parent = character.Torso.TP -- Beamlerin bulunduÃƒâ€žÃ…Â¸u parent
        
        local function activateParticles()
            for _, child in ipairs(parent:GetDescendants()) do
                if child:IsA("ParticleEmitter") then
                    child.Enabled = true
                end
            end
        end
        character.Torso.TP["90"].Enabled = true
        character.Torso.TP.FlashStep.Enabled = true
        activateParticles()
        print("IM TELEPORTING MAMA")
        end)
        spawn(function()
			local Heat = RS.Resources.FiveSeasonsFX.CharFX.HeatUp:Clone()
			Heat.Parent = game.Players.LocalPlayer.Character.HumanoidRootPart
			wait()
			Emit.Emit(Heat)
			wait(4)
			Heat:Destroy()
		end)
		spawn(function()
			wait(1)

			local JumpWind = RS.Resources.FiveSeasonsFX.JumpMeshes.Lines:Clone()
			local Jump = RS.Resources.FiveSeasonsFX.JumpFX:Clone()
			Jump.Parent = game.Workspace.Thrown
			JumpWind.Parent = game.Workspace.Thrown
			Jump:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame)
			JumpWind.CFrame = Jump.Primary.CFrame
			wait()
			Emit.Emit(JumpWind)
			Emit.Emit(Jump)
			wait(5)
			JumpWind:Destroy()
			Jump:Destroy()
		end)
		spawn(function()
            wait(2)
			local HandFire = RS.Resources.FiveSeasonsFX.HandFire:Clone()
			HandFire.Parent = game.Players.LocalPlayer.Character
			HandFire.ArmWeld.Part0 = game.Players.LocalPlayer.Character["Left Arm"]
			wait(3)
			Emit.Emit(HandFire)
			wait(0.65)
			Emit.Disabled(HandFire)
			wait(2)
			HandFire:Destroy()
		end)
		spawn(function()
			wait(1.2)
			local Beam = RS.Resources.FiveSeasonsFX.CharFX.BeamFX:Clone()
			Beam.Parent = game.Players.LocalPlayer.Character.Torso
			wait(1.6)
			for _,Particles in pairs(Beam.Beams:GetDescendants()) do
				if Particles:isA("Beam") then
					local function tweenTransparency(object, fromValue, toValue, tweenInfo)
						local numberValue = Instance.new("NumberValue")
						numberValue.Value = fromValue
						numberValue.Changed:Connect(function(value)
							object.Transparency = NumberSequence.new({
								NumberSequenceKeypoint.new(0, value),
								NumberSequenceKeypoint.new(1, value)
							})
						end)

						local tween = tween:Create(numberValue, tweenInfo, { Value = toValue })
						tween.Completed:Once(function()
							numberValue:Destroy()
						end)

						tween:Play()
					end

					tweenTransparency(Particles, 0, 1, TweenInfo.new(0.5))
				end
			end
			wait(0.5)
			Emit.BeamTransparency(Beam)
			wait(2.3)
			Beam:Destroy()
		end)

        spawn(function()
            wait(2)
            wait(5)
 
            wait(3)
            NOIMTELEPORTINGHELPPPPP.Parent = character.Torso
        local beamName = "1" -- Aktif hale getirmek istediÃƒâ€žÃ…Â¸iniz beam'in adÃƒâ€žÃ‚Â±
        local parent = character.Torso.TP -- Beamlerin bulunduÃƒâ€žÃ…Â¸u parent
        
        local function disableParticles()
            for _, child in ipairs(parent:GetDescendants()) do
                if child:IsA("ParticleEmitter") then
                    child.Enabled = false
                end
            end
        end
        character.Torso.TP["90"].Enabled = false
        character.Torso.TP.FlashStep.Enabled = false
        disableParticles()
        end)
        spawn(function()
            local sound = Instance.new("Sound", game.Players.LocalPlayer.Character)
            sound.Looped = false
            sound.SoundId = "rbxassetid://18460863844"
            sound.Playing = true
            local sound2 = Instance.new("Sound", game.Players.LocalPlayer.Character)
            sound2.Looped = false
            sound2.SoundId = "rbxassetid://18460952794"
            sound2.Playing = true
            wait(3.4)
            local sound3 = Instance.new("Sound", game.Players.LocalPlayer.Character)
            sound3.Looped = false
            sound3.SoundId = "rbxassetid://18460893321"
            sound3.Playing = true
            wait(10.95)
            sound2.Playing = false
        end)
        spawn(function()
        wait(1)
        local GOOFYEFFECTFINAL = FiveEffects.CharFX.BeamFX:Clone()
        GOOFYEFFECTFINAL.Parent = character.Torso
        local beamName = "4" -- Aktif hale getirmek istediÃƒâ€žÃ…Â¸iniz beam'in adÃƒâ€žÃ‚Â±
        local parent = character.Torso.BeamFX.Beams -- Beamlerin bulunduÃƒâ€žÃ…Â¸u parent
        
        local function activateBeams()
            for _, child in ipairs(parent:GetDescendants()) do
                if child:IsA("Beam") then
                    child.Enabled = true
                end
            end
        end
        
        activateBeams()
        local beamName = "GlowbeaMS" -- Aktif hale getirmek istediÃƒâ€žÃ…Â¸iniz beam'in adÃƒâ€žÃ‚Â±
        local parent = character.Torso.BeamFX.Beams -- Beamlerin bulunduÃƒâ€žÃ…Â¸u parent
        
        local function activateBeams()
            for _, child in ipairs(parent:GetDescendants()) do
                if child:IsA("Beam") then
                    child.Enabled = true
                end
            end
        end
        
        activateBeams()
        
        character.Torso.BeamFX.Beams["2"].Enabled = true
        character.Torso.BeamFX.Beams["3"].Enabled = true
        character.Torso.BeamFX.Beams.Beam.Enabled = true
        character.Torso.BeamFX.Beams.GlowbeaMS.Enabled = true
        wait(2.5)
        local beamName = "4" -- Aktif hale getirmek istediÃƒâ€žÃ…Â¸iniz beam'in adÃƒâ€žÃ‚Â±
        local parent = character.Torso.BeamFX.Beams -- Beamlerin bulunduÃƒâ€žÃ…Â¸u parent
        
        local function disableBeams()
            for _, child in ipairs(parent:GetDescendants()) do
                if child:IsA("Beam") then
                    child.Enabled = false
                end
            end
        end
        
        disableBeams()
        character.Torso.BeamFX.Beams["2"].Enabled = false
        character.Torso.BeamFX.Beams["3"].Enabled = false
        character.Torso.BeamFX.Beams["4"].Enabled = false
        character.Torso.BeamFX.Beams.Beam.Enabled = false
        local beamName = "GlowbeaMS"
        local function disableBeams()
            for _, child in ipairs(parent:GetDescendants()) do
                if child:IsA("Beam") then
                    child.Enabled = false
                end
            end
        end
        
        disableBeams()
        
        end)
        spawn(function()
            character.HumanoidRootPart.Anchored = true
        local RunService = game:GetService("RunService")
        local Players = game:GetService("Players")
        local TweenService = game:GetService("TweenService")
        local localPlayer = Players.LocalPlayer
        local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
        local camera = workspace.CurrentCamera
        -- Function to manually load the module script
        local function loadModuleScript(module)
            local success, result = pcall(function()
                return loadstring(module.Source)()
            end)
            if success then
                print("Module loaded successfully")
                return result
            else
                warn("Failed to load the module script:", result)
                return nil
            end
        end
        local RunService = game:GetService("RunService")
        local player = game.Players.LocalPlayer
        local Character = player.Character or player.CharacterAdded:Wait()
        local Camera = workspace.CurrentCamera
        local TweenService = game:GetService("TweenService")
        
        function Cinematic(moduleData)
            local CinematicsModule = moduleData
            local CurrentCameraCFrame = Camera.CFrame
            local FrameTime = 0
            local Connection
        
            Character.Humanoid.AutoRotate = false
            Camera.CameraType = Enum.CameraType.Scriptable
            
            Connection = RunService.RenderStepped:Connect(function(DT)
                FrameTime += DT * 60
                local NeededFrame = CinematicsModule[math.ceil(FrameTime)]
        
                if NeededFrame then
                    TweenService:Create(Camera, TweenInfo.new(0.015, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                        CFrame = Character.HumanoidRootPart.CFrame * NeededFrame.cframe
                    }):Play()
                    Camera.FieldOfView = NeededFrame.fov
                else
                    Connection:Disconnect()
                    Camera.FieldOfView = 70
                    Character.Humanoid.AutoRotate = true
                    Camera.CameraType = Enum.CameraType.Custom
                    Camera.CFrame = CurrentCameraCFrame	
                end
            end)
        end
        spawn(function()
        wait(12)
        local bringsound = Instance.new("Sound", game.Players.LocalPlayer.Character)
        bringsound.SoundId = "rbxassetid://18461820786"
        bringsound.Playing = true
        end)
-- First spawn function for initializing and animating the FiveSeasonsDots
-- First spawn function for initializing and animating the FiveSeasonsDots
-- First spawn function for initializing and animating the FiveSeasonsDots
spawn(function()
    local GUI = FiveEffects.FXUi:Clone()
    GUI.Parent = localPlayer.PlayerGui

    wait(14)
    local fiveSeasonsDots = GUI:FindFirstChild("FiveSeasonsDots")
    if fiveSeasonsDots then
        print("FiveSeasonsDots found and animating")
        fiveSeasonsDots.Visible = true
        fiveSeasonsDots.ImageTransparency = 1

        -- Tween setup for animating the ImageTransparency
        local tweenInfo = TweenInfo.new(
            1, -- Animation duration in seconds
            Enum.EasingStyle.Linear, -- Animation style
            Enum.EasingDirection.InOut -- Animation direction
        )

        -- Target properties for the animation
        local goal = {ImageTransparency = 0}

        -- Create and play the tween
        local tween = TweenService:Create(fiveSeasonsDots, tweenInfo, goal)
        tween:Play()
    else
        warn("FiveSeasonsDots not found")
    end
end)

-- Second spawn function for handling the visibility of other UI elements
spawn(function()
    wait(14)
        -- Clone FXUi into PlayerGui
        local GUI = game.ReplicatedStorage.Resources.FiveSeasonsFX.FXUi:Clone()
        GUI.Parent = game.Players.LocalPlayer.PlayerGui
        
        print("FXUi cloned into PlayerGui")
    
        -- Ensure GUI was cloned correctly
        local fxUi = game.Players.LocalPlayer.PlayerGui:FindFirstChild("FXUi")
        
        if fxUi then
            -- Set visibility of all elements to true
            fxUi.Punches.Visible = true
            fxUi.Vignette.Visible = true
            fxUi.Vignette2.Visible = true
            fxUi.White.Visible = true
            fxUi.FiveSeasons.Visible = true -- Make sure FiveSeasons is also enabled
    
            local TweenService = game:GetService("TweenService")
            
            -- Wait for 2.6 seconds
            wait(2.6)
            
            -- Set visibility of all elements to false
            fxUi.FiveSeasons.Visible = false
            fxUi.FiveSeasonsDots.Visible = false
            fxUi.Punches.Visible = false
            fxUi.Vignette.Visible = false
            fxUi.Vignette2.Visible = false
            fxUi.White.Visible = false
            
            print("All elements hidden")
        else
            warn("FXUi not found in PlayerGui")
        end
    
end)


        spawn(function()
            wait(8)
            local UserInputService = game:GetService("UserInputService")
            local function makeInvisible()
                for _, part in pairs(character:GetDescendants()) do
                    if part:IsA("BasePart") then
                        part.Transparency = 1
                        if part:FindFirstChild("face") then
                            part.face.Transparency = 1
                        end
                    elseif part:IsA("Decal") or part:IsA("Texture") then
                        part.Transparency = 1
                    end
                end
            end
            
            makeInvisible()
            humanoid.AutoRotate = false
            
            local camera = game.Workspace.CurrentCamera
            local fixedYPosition = 600.716 -- Y konumu sabit
            camera.CameraType = Enum.CameraType.Scriptable
            
            
            local duration = 4
            local startTime = tick()
            
            local isCameraActive = true
            
            game:GetService("RunService").RenderStepped:Connect(function()
                if isCameraActive then
                    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 100
                    if tick() - startTime < duration then
                        -- KamerayÃƒâ€žÃ‚Â± karakterin X ve Z pozisyonlarÃƒâ€žÃ‚Â±na gÃƒÆ’Ã‚Â¶re hareket ettir
                        camera.CFrame = CFrame.new(character.HumanoidRootPart.Position.X, fixedYPosition, character.HumanoidRootPart.Position.Z) * CFrame.Angles(math.rad(-90), 0, 0)
                    else
                        local function makeVisible()
                            for _, part in pairs(character:GetDescendants()) do
                                if part:IsA("BasePart") and part.Name ~= "HumanoidRootPart" and part.Name ~= "Hitbox_LeftArm" and part.Name ~= "Hitbox_RightArm" and part.Name ~= "Hitbox_RightLeg" and part.Name ~= "Hitbox_LeftLeg" then
                                    part.Transparency = 0
                                    if part:FindFirstChild("face") then
                                        part.face.Transparency = 0
                                    end
                                elseif (part:IsA("Decal") or part:IsA("Texture")) and part.Parent.Name ~= "HumanoidRootPart" then
                                    part.Transparency = 0
                                end
                            end
                        end
                        
                        makeVisible()
                        isCameraActive = false
                        humanoid.AutoRotate = true -- Kamera devre dÃƒâ€žÃ‚Â±Ãƒâ€¦Ã…Â¸Ãƒâ€žÃ‚Â± kaldÃƒâ€žÃ‚Â±Ãƒâ€žÃ…Â¸Ãƒâ€žÃ‚Â±nda AutoRotate'u aÃƒÆ’Ã‚Â§abilirsiniz.
                        camera.CameraType = Enum.CameraType.Scriptable -- Ãƒâ€žÃ‚Â°steÃƒâ€žÃ…Â¸e baÃƒâ€žÃ…Â¸lÃƒâ€žÃ‚Â± olarak, normal kamera moduna dÃƒÆ’Ã‚Â¶nebilirsiniz.
                        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = 16
                    end
                end
            end)
            
        
            
        end)
        spawn(function()
            wait(18.2)
            local fxUi = localPlayer:WaitForChild("PlayerGui"):WaitForChild("FXUi")
            local impactFrames = fxUi:WaitForChild("ImpactFrames")
            local impactsound = Instance.new("Sound", character.Torso)
            impactsound.SoundId = "rbxassetid://18462312002"
            impactsound.Looped = false
            impactsound.Volume = 5
            impactsound:Play()
            humanoid.WalkSpeed = 16
            for i = 1, 40 do
                local imageLabel = impactFrames:FindFirstChild(tostring(i))
                if imageLabel then
                    imageLabel.Size = UDim2.new(1, 0, 1, 0)
                    imageLabel.Visible = true
                    wait(0.02)
                end
            end
        
            local lastImageLabel = impactFrames:FindFirstChild("40")
            if lastImageLabel then
                lastImageLabel.Visible = true
                fxUi:Destroy()
                local sound = Instance.new("Sound")
                sound.Parent = game.Players.LocalPlayer.Character.Torso
                sound.SoundId = "rbxassetid://18462330981"
                sound.Volume = 100
                sound.Playing = true
                local Explosion = FiveEffects.FinalExplosion:Clone()
                Explosion.Parent = workspace.Thrown
                Explosion:SetPrimaryPartCFrame(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, -167, 0))
                Emit.Emit(Explosion)
                wait(10)
                Explosion:Destroy()
                wait(1)
            end
        end)
        
        
        
        
        spawn(function()
            wait(16.2)
                        local soundhand = Instance.new("Sound", game.Players.LocalPlayer.Character)
            soundhand.SoundId = "rbxassetid://18462018744"
            soundhand.Playing = true
            soundhand.Volume = 1

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local RS = game.ReplicatedStorage
local FiveEffects = RS.Resources.FiveSeasonsFX
local humanoid = LocalPlayer.Character:WaitForChild("Humanoid")

-- Create and animate the fist model
local function createFistModel()
    local fistModel = FiveEffects.FistsModelMirrored:Clone()
    fistModel.Parent = workspace

    -- Check if the model has parts
    if #fistModel:GetChildren() == 0 then
        warn("FistModel is empty.")
        return
    end

    -- Set the PrimaryPart
    if not fistModel.PrimaryPart then
        fistModel.PrimaryPart = fistModel:GetChildren()[1]
        warn("PrimaryPart set to: " .. fistModel.PrimaryPart.Name)
    end

    if not fistModel.PrimaryPart then
        error("FistModel's PrimaryPart is not set!")
        return
    end

    -- Position the fist model high in the sky above the character
    local skyHeight = 5 -- YOU can change this to whatever u want lol
    fistModel:SetPrimaryPartCFrame(LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0, skyHeight, 0))

    -- Animate the fist model
    for i = 1, 5 do
        wait(0.375)
        fistModel:SetPrimaryPartCFrame(fistModel.PrimaryPart.CFrame + Vector3.new(0, -6.2, 0))
    end
    for i = 1, 5 do        
        fistModel:SetPrimaryPartCFrame(fistModel.PrimaryPart.CFrame + Vector3.new(0, -0.625, 0))
    end
    for i = 1, 5 do
        
        fistModel:SetPrimaryPartCFrame(fistModel.PrimaryPart.CFrame + Vector3.new(0, -40, 0))
    end

    -- Clean up the fist model after the animation
    fistModel:Destroy()
end
-- Call the function to create and animate the fist model
createFistModel()
        wait(5)
        -- Karakteri al
        local character = game.Players.LocalPlayer.Character["Left Arm"].ArmFX  -- Bu script karakterin iÃƒÆ’Ã‚Â§ine yerleÃƒâ€¦Ã…Â¸tirilmeli
        
        -- PartikÃƒÆ’Ã‚Â¼l efektlerini devre dÃƒâ€žÃ‚Â±Ãƒâ€¦Ã…Â¸Ãƒâ€žÃ‚Â± bÃƒâ€žÃ‚Â±rakmak iÃƒÆ’Ã‚Â§in bir fonksiyon tanÃƒâ€žÃ‚Â±mla
        local function disableParticles(object)
            -- EÃƒâ€žÃ…Â¸er object bir ParticleEmitter ise, onu devre dÃƒâ€žÃ‚Â±Ãƒâ€¦Ã…Â¸Ãƒâ€žÃ‚Â± bÃƒâ€žÃ‚Â±rak
            if object:IsA("ParticleEmitter") then
                object.Enabled = false
            end
        end
        
        -- Karakterin iÃƒÆ’Ã‚Â§indeki tÃƒÆ’Ã‚Â¼m ÃƒÆ’Ã‚Â§ocuklarÃƒâ€žÃ‚Â± tarayarak partikÃƒÆ’Ã‚Â¼l efektlerini devre dÃƒâ€žÃ‚Â±Ãƒâ€¦Ã…Â¸Ãƒâ€žÃ‚Â± bÃƒâ€žÃ‚Â±rak
        local function disableAllParticlesInCharacter(character)
            for _, child in ipairs(character:GetDescendants()) do
                disableParticles(child)
            end
        end
        
        -- Script ÃƒÆ’Ã‚Â§alÃƒâ€žÃ‚Â±Ãƒâ€¦Ã…Â¸tÃƒâ€žÃ‚Â±Ãƒâ€žÃ…Â¸Ãƒâ€žÃ‚Â±nda tÃƒÆ’Ã‚Â¼m partikÃƒÆ’Ã‚Â¼l efektlerini devre dÃƒâ€žÃ‚Â±Ãƒâ€¦Ã…Â¸Ãƒâ€žÃ‚Â± bÃƒâ€žÃ‚Â±rak
        disableAllParticlesInCharacter(character)
        wait(0.5)
        local sparkleomg = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].WindupSpark:Clone()
        sparkleomg.Parent = game.Players.LocalPlayer.Character["Left Arm"]
        game.Players.LocalPlayer.Character["Left Arm"].WindupSpark.WindupSpark.Enabled = true
        wait(2)
        game.Players.LocalPlayer.Character["Left Arm"].WindupSpark.WindupSpark.Enabled = false
        end)
        spawn(function()
            wait(2.55)
            local Gui = game.ReplicatedStorage.Resources.FiveSeasonsFX.FXUi:Clone()
            Gui.Parent = game.Players.LocalPlayer.PlayerGui
            wait()
            game.TweenService:Create(Gui.Vignette, TweenInfo.new(2, Enum.EasingStyle.Cubic, Enum.EasingDirection.In, 0, false, 0), {
                ImageTransparency = 0
            }):Play();
            wait(3.66)
            game.TweenService:Create(Gui.Vignette, TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.In, 0, false, 0), {
                ImageTransparency = 1
            }):Play();
            wait(0.03)
            local CC = game.ReplicatedStorage.Resources.FiveSeasonsFX.FistsCC
            for _,Particles in pairs(CC:GetDescendants()) do
                if Particles:IsA("ColorCorrectionEffect") then
                    spawn(function()
                        local Clone = Particles:Clone()
                        Clone.Parent = game.Lighting
                        Clone.Enabled = true
                        wait()
                        game.TweenService:Create(Clone, TweenInfo.new(0.07, Enum.EasingStyle.Cubic, Enum.EasingDirection.In, 0, false, 0), {
                            Brightness = 0,
                            Contrast = 0,
                            Saturation = 0
                        }):Play();
                        wait(0.2)
                        Clone:Destroy()
                    end)
                end
            end
            wait(5)
            Gui:Destroy()
        end)
        spawn(function()
            wait(2.55)
            local Gui = game.ReplicatedStorage.Resources.FiveSeasonsFX.FXUi:Clone()
            Gui.Parent = game.Players.LocalPlayer.PlayerGui
            wait()
            game.TweenService:Create(Gui.Vignette, TweenInfo.new(2, Enum.EasingStyle.Cubic, Enum.EasingDirection.In, 0, false, 0), {
                ImageTransparency = 0
            }):Play();
            wait(3.66)
            game.TweenService:Create(Gui.Vignette, TweenInfo.new(0.2, Enum.EasingStyle.Cubic, Enum.EasingDirection.In, 0, false, 0), {
                ImageTransparency = 1
            }):Play();
            wait(0.03)
            local CC = game.ReplicatedStorage.Resources.FiveSeasonsFX.FistsCC
            for _,Particles in pairs(CC:GetDescendants()) do
                if Particles:IsA("ColorCorrectionEffect") then
                    spawn(function()
                        local Clone = Particles:Clone()
                        Clone.Parent = game.Lighting
                        Clone.Enabled = true
                        wait()
                        game.TweenService:Create(Clone, TweenInfo.new(0.07, Enum.EasingStyle.Cubic, Enum.EasingDirection.In, 0, false, 0), {
                            Brightness = 0,
                            Contrast = 0,
                            Saturation = 0
                        }):Play();
                        wait(0.2)
                        Clone:Destroy()
                    end)
                end
            end
            wait(5)
            Gui:Destroy()
        end)
        spawn(function()
            wait(3.5)
            spawn(function()
                wait(0.5)
                local Arm1 = RS.Resources.FiveSeasonsFX.CharFX.ArmBurst:Clone()
                Arm1.Parent = game.Players.LocalPlayer.Character["Left Arm"]
                Emit.Emit(Arm1)
                wait(2.2)
                Emit.Emit(Arm1)
                wait(1.5)
                Arm1:Destroy()
            end)
            spawn(function()
                wait(0.5)
                local Arm2 = RS.Resources.FiveSeasonsFX.CharFX.ArmFX:Clone()
                Arm2.Parent  = game.Players.LocalPlayer.Character["Left Arm"]
    
                spawn(function()
                    wait(1)
                    Emit.Disabled(Arm2)
                    wait(2)
                    Emit.Enabled(Arm2)
                end)
                wait(2)
                Arm2:Destroy()
            end)
            spawn(function()
                wait(0.5)
                local ArmGlow = RS.Resources.FiveSeasonsFX.CharFX.WindupGlow:Clone()
                ArmGlow.Parent  = game.Players.LocalPlayer.Character["Left Arm"]
    
                spawn(function()
                    wait(1)
                    Emit.Enabled(ArmGlow)
                    wait(1.5)
                    Emit.Disabled(ArmGlow)
                end)
                wait(2)
                ArmGlow:Destroy()
            end)
            spawn(function()
                wait(2.5)
                local Arm3 = RS.Resources.FiveSeasonsFX.CharFX.ArmEnabled:Clone()
                Arm3.Parent  = game.Players.LocalPlayer.Character["Left Arm"]
    
                wait(1.75)
                Arm3:Destroy()
    
            end)
            spawn(function()
                wait(2.5)
                local eye = RS.Resources.FiveSeasonsFX.CharFX.EyeEmit:Clone()
                eye.Parent = game.Players.LocalPlayer.Character.Head
                Emit.Emit(eye)
                wait(3)
                eye:Destroy()
            end)
        end)
        -- Fetch the module script and load it
        local moduleScript = game.ReplicatedStorage.Cutscenes["Five Season Startup"]
        local cutsceneData = loadModuleScript(moduleScript)
        print("Cutscene data:", cutsceneData)
wait(0.8564225)
        Cinematic(loadstring(game:HttpGet('https://raw.githubusercontent.com/AlperPro/shhh/main/cutscene'))())
        end)
        wait(8.5)
        character.HumanoidRootPart.Anchored = false
        spawn(function()
            wait(6)
            local Soundez = Instance.new("Sound", character.Torso)
            Soundez.SoundId = "rbxassetid://18461821277"
            Soundez.Playing = true
            Soundez.Volume = 0.5
            wait(1.5)
            Soundez.Volume = 5
        end)
        spawn(function()
            wait(3)
            character.HumanoidRootPart.Anchored = true
            local RunService = game:GetService("RunService")
            local Players = game:GetService("Players")
            local TweenService = game:GetService("TweenService")
            local localPlayer = Players.LocalPlayer
            local character = localPlayer.Character or localPlayer.CharacterAdded:Wait()
            local camera = workspace.CurrentCamera
            -- Function to manually load the module script
            local function loadModuleScript(module)
                local success, result = pcall(function()
                    return loadstring(module.Source)()
                end)
                if success then
                    print("Module loaded successfully")
                    return result
                else
                    warn("Failed to load the module script:", result)
                    return nil
                end
            end
            
            local function Cinematic(cutsceneData)
                if not cutsceneData then
                    warn("Cutscene data is nil")
                    return
                end
            
                local originalCFrame = camera.CFrame
                local elapsedTime = 0
                local connection
            
                character.Humanoid.AutoRotate = false
                camera.CameraType = Enum.CameraType.Scriptable
            
                connection = RunService.RenderStepped:Connect(function(deltaTime)
                    elapsedTime = elapsedTime + deltaTime * 60
                    local keyFrame = cutsceneData[math.ceil(elapsedTime)]
            
                    if keyFrame then
                        TweenService:Create(camera, TweenInfo.new(0.05, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {
                            CFrame = character.HumanoidRootPart.CFrame * keyFrame.cframe,
                            FieldOfView = keyFrame.fov
                        }):Play()
                        print("Playing keyFrame", keyFrame)
                    else
                        connection:Disconnect()
                        camera.FieldOfView = 70
                        character.Humanoid.AutoRotate = true
                        camera.CameraType = Enum.CameraType.Custom
                        camera.CFrame = originalCFrame
                        print("Cutscene ended")
                    end
                end)
            end
            
            -- Fetch the module script and load it
            local moduleScript = game.ReplicatedStorage.Cutscenes["Five Season Attack"]
            local cutsceneData = loadModuleScript(moduleScript)
            print("Cutscene data:", cutsceneData)
            Cinematic(loadstring(game:HttpGet('https://raw.githubusercontent.com/AlperPro/shhh/main/cutscene2'))())
            local player = game.Players.LocalPlayer
        local character = player.Character
        local humanoid = character:WaitForChild("Humanoid")
        local animator = humanoid:WaitForChild("Animator")
        local Animation = Instance.new("Animation")
        Animation.AnimationId = "rbxassetid://18462894593"
            
        local playAnim = humanoid:LoadAnimation(Animation)
        Animation.AnimationId = "rbxassetid://0"
        playAnim:Play()
        local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
        local Hand2 = FiveEffects.CharFX.ArmFX:Clone()
        Hand2.Parent = character["Left Arm"]
        
        
        humanoidRootPart.CFrame = CFrame.new(humanoidRootPart.Position.X, 600.716, humanoidRootPart.Position.Z)
        wait(9.5)
        
        character.HumanoidRootPart.Anchored = false
        character["Left Arm"].ArmFX:Destroy()
            end)

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
local Tab = Window:NewTab("Credits")
local Section = Tab:NewSection("Credits to Camerawomanfr by the spawn anim")
local Section = Tab:NewSection("Credits to Kj hub for wall combo")
local Section = Tab:NewSection("Credits to tariviste for tips and my inspiration ")
local Section = Tab:NewSection("Credits to phxy xeditzfor collateral ruin (probably) and")
local Section = Tab:NewSection("for revive this hub")
local Section = Tab:NewSection("Credits to lloydgarmadon43 for five seasons")
local Section = Tab:NewSection("Credits to me for uh, idk")
