--kj moveset by cdolulumitogamer (i got base and just changed it, making better and cooler)

-- Manuth movement--
 local GameP = game.PlaceId
local playerName = game.Players.LocalPlayer.Name

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Kj Moveset", -- 
    Text = "Hello, and thanks for use this script " .. playerName .. "!", -- 
     -- 
})

wait(4)
local GameP = game.PlaceId
local playerName = game.Players.LocalPlayer.Name

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Credits", -- 
    Text = "cdo|lulumitogamer in discord for the whole script and camerawomanfr in discord for this notification script ", -- 
     -- 
})

Wait(5)

local GameP = game.PlaceId
local playerName = game.Players.LocalPlayer.Name

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "IMPORTANT", -- 
    Text = "Be near someone to use ravage and wallcombo, ravage only works if you be near someone, the wallcombo makes a clone from the guy thats u near to make victim", -- 
     -- 
})


Wait(5)

local GameP = game.PlaceId
local playerName = game.Players.LocalPlayer.Name

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Continuation", -- 
    Text = "thats u near to make victim", -- 
     -- 
})
Wait(3)
local GameP = game.PlaceId
local playerName = game.Players.LocalPlayer.Name

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Oh yeah, be near dummy for use swift sweep", -- 
    Text = "", -- 
     -- 
})
wait(3)

local GameP = game.PlaceId
local playerName = game.Players.LocalPlayer.Name

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Anyways, enjoy " .. playerName .. "!", -- 
    Text = " " , -- 
     -- 
})
local Players = game:GetService("Players")
local player = Players.LocalPlayer
 
if player and player:FindFirstChild("Backpack") then
    local backpack = player.Backpack
 
    for _, item in ipairs(backpack:GetChildren()) do
        if item:IsA("Tool") then
            item:Destroy()
        end
    end
end


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

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17325211957"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 1.25

Wait(1.75)

                -- Create and play the sound
                local sound = Instance.new("Sound")
                sound.SoundId = "rbxassetid://17325174223"
                sound.Parent = c.Torso or c:FindFirstChild("UpperTorso") -- Adjust if using R6 or R15
                sound:Play()


    wait(60)

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

local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Define the target and replacement animation IDs
local oldAnimID = "12447707844"
local newAnimID = "17140902079"
local soundID1 = "17150550559"
local soundID2 = "17150550302"

-- Function to play sounds
local function playSounds()
local sound1 = Instance.new("Sound", character)
sound1.SoundId = "rbxassetid://" .. soundID1
sound1:Play()

local sound2 = Instance.new("Sound", character)
sound2.SoundId = "rbxassetid://" .. soundID2
sound2:Play()
end

-- Function to clone and emit particle effects including the new ones
local function playEffects()
-- EmitBatch3 Effect
local EmitBatch3 = ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch3:Clone()
EmitBatch3.Parent = character:WaitForChild("HumanoidRootPart")
for _, child in ipairs(EmitBatch3:GetChildren()) do
if child:IsA("ParticleEmitter") then
child:Emit(1) -- Emit 1 particle
end
end

-- EmitBatch1 Effect
local EmitBatch1 = ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch1:Clone()
EmitBatch1.Parent = character:WaitForChild("HumanoidRootPart")
for _, child in ipairs(EmitBatch1:GetChildren()) do
if child:IsA("ParticleEmitter") then
child:Emit(1) -- Emit 1 particle
end
end

-- EmitBatch2 Effect
local EmitBatch2 = ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch2:Clone()
EmitBatch2.Parent = character:WaitForChild("HumanoidRootPart")
for _, child in ipairs(EmitBatch2:GetChildren()) do
if child:IsA("ParticleEmitter") then
child:Emit(1) -- Emit 1 particle
end
end

-- Sparkles1 Effect
local sparkles1 = ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch3:Clone()
sparkles1.Parent = character:WaitForChild("Torso")
for _, child in ipairs(sparkles1:GetChildren()) do
if child:IsA("ParticleEmitter") then
child:Emit(1) -- Emit 1 particle
end
end

-- Fine Effect
local fine = ReplicatedStorage.Resources.KJEffects["fine...1"].EnableBatch2:Clone()
fine.Parent = character:WaitForChild("Torso")
for _, child in ipairs(fine:GetChildren()) do
if child:IsA("ParticleEmitter") then
child:Emit(1) -- Emit 1 particle
end
end

-- Red Effect
local red = ReplicatedStorage.Resources.KJEffects["fine...1"].REDDDD1:Clone()
red.Parent = character:WaitForChild("Right Leg")
for _, child in ipairs(red:GetChildren()) do
if child:IsA("ParticleEmitter") then
child:Emit(1) -- Emit 1 particle
end
end

-- Red2 Effect
local red2 = ReplicatedStorage.Resources.KJEffects["fine...1"].REDDDD2:Clone()
red2.Parent = character:WaitForChild("Left Leg")
for _, child in ipairs(red2:GetChildren()) do
if child:IsA("ParticleEmitter") then
child:Emit(1) -- Emit 1 particle
end
end

-- Red3 Effect
local red3 = ReplicatedStorage.Resources.KJEffects["fine...1"].REDDDD3:Clone()
red3.Parent = character:WaitForChild("Left Leg")
for _, child in ipairs(red3:GetChildren()) do
if child:IsA("ParticleEmitter") then
child:Emit(1) -- Emit 1 particle
end
end

-- Red4 Effect
local red4 = ReplicatedStorage.Resources.KJEffects["fine...1"].REDDDD4:Clone()
red4.Parent = character:WaitForChild("Right Leg")
for _, child in ipairs(red4:GetChildren()) do
if child:IsA("ParticleEmitter") then
child:Emit(1) -- Emit 1 particle
end
end

-- Schedule destruction of Effects
delay(8.2, function()
fine:Destroy()
red:Destroy()
red2:Destroy()
red3:Destroy()
red4:Destroy()

local fine2 = ReplicatedStorage.Resources.KJEffects["fine...Emit2"].EmitBatch1:Clone()
fine2.Parent = character:WaitForChild("Right Arm")
for _, child in ipairs(fine2:GetChildren()) do
if child:IsA("ParticleEmitter") then
child:Emit(1) -- Emit 1 particle
end
end

local Players = game:GetService("Players")
local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Function to delete all tools from the player's inventory
local function deleteInventory()
    -- Delete tools from Backpack
    for _, tool in pairs(player.Backpack:GetChildren()) do
        if tool:IsA("Tool") or tool:IsA("HopperBin") then
            tool:Destroy()
        end
    end

    -- Delete tools from the character's hands
    for _, tool in pairs(character:GetChildren()) do
        if tool:IsA("Tool") or tool:IsA("HopperBin") then
            tool:Destroy()
        end
    end
end

-- Initial run to delete inventory
deleteInventory()

-- Update the function if the player's character changes
player.CharacterAdded:Connect(function(newCharacter)
    character = newCharacter
    deleteInventory()
end)

player.Character.HumanoidRootPart.Anchored = false
end)
end

-- Function to replace animation and apply provided code
local function replaceAnimationWithCode()
local humanoid = character:WaitForChild("Humanoid")

-- Hook into AnimationPlayed event
humanoid.AnimationPlayed:Connect(function(animationTrack)
-- Check if the played animation has the old animation ID
if animationTrack.Animation.AnimationId == "rbxassetid://" .. oldAnimID then
animationTrack:Stop()  -- Stop the old animation before it plays

-- Set up and play the new animation
local animAnim = Instance.new("Animation")
animAnim.AnimationId = "rbxassetid://" .. newAnimID
local anim = humanoid:LoadAnimation(animAnim)
animAnim.AnimationId = "rbxassetid://0" -- Reset animation ID
anim:Play()

-- Play the particle effects and sounds
playEffects()
playSounds()
end
end)
end

-- Call the function initially
replaceAnimationWithCode()

-- Update the function if the player's character changes
player.CharacterAdded:Connect(function(newCharacter)
character = newCharacter
replaceAnimationWithCode()
end)

local plr = game.Players.LocalPlayer
local gui = plr.PlayerGui
local ulttext = gui.ScreenGui.MagicHealth.TextLabel

ulttext.Text = "20 SERIES"

local function handleAnimationDetection(animIdsToStop, replacementAnimId)
    local humanoid = game.Players.LocalPlayer.Character.Humanoid

    local function onAnimPlayed(animationTrack)
        local animId = tonumber(string.match(animationTrack.Animation.AnimationId, "%d+"))

        for _, stopId in ipairs(animIdsToStop) do
            if animId == stopId then
                animationTrack:Stop()
                local player = game.Players.LocalPlayer
repeat wait() until player.Character.Humanoid
local humanoid = player.Character.Humanoid
local character = game.Players.LocalPlayer.Character or game.Players.LocalPlayer.CharacterAdded:Wait()
local UserInputService = game:GetService("UserInputService")
debounce = false -- Activate debounce
local anim = Instance.new("Animation")
anim.AnimationId = "rbxassetid://" .. replacementAnimId
local playAnim = humanoid:LoadAnimation(anim)
anim.AnimationId = "rbxassetid://0" -- don't change anything here

spawn(function()
    wait(1)
    debounce = true
end)

playAnim:Play()
playAnim:AdjustSpeed(1)

local Players = game:GetService("Players")
local Character = Players.LocalPlayer.Character or Players.LocalPlayer.CharacterAdded:Wait()

local animationPlayed = false -- Flag to track if the animation has already been played
            end
        end
    end

    humanoid.AnimationPlayed:Connect(onAnimPlayed)
end

-- First set of animations
local firstAnimIdsToStop = {10469493270, 13532562418, 13491635433, 13370310513, 14004222985, 15259161390, 16515503507, 17889458563}
local m1 = 17325510002
handleAnimationDetection(firstAnimIdsToStop, m1)

-- Second set of animations
local secondAnimIdsToStop = {10469630950, 13532600125, 13296577783, 13390230973, 13997092940, 15240216931, 16515520431, 17889461810}
local m2 = 17325513870
handleAnimationDetection(secondAnimIdsToStop, m2)

-- Third set of animations
local thirdAnimIdsToStop = {10469639222, 13532604085, 13295919399, 13378751717, 14001963401, 15240176873, 16515448089, 17889471098}
local m3 = 17325522388
handleAnimationDetection(thirdAnimIdsToStop, m3)

-- Fourth set of animations
local fourthAnimIdsToStop = {10469643643, 13294471966, 13295936866, 13378708199, 14136436157, 15162694192, 16552234590, 17889290569}
local m4 = 17325537719
handleAnimationDetection(fourthAnimIdsToStop, m4)
 
local ToolName = "Ravage" --[    put your tools name here    ]
local CooldownLength = 18 --[    put your desired cooldown length    ]
local ToolSlot = "1" --[    make 2 say the hotbar slot of your tool    ]

local function ToolCode() loadstring(game:HttpGet("https://pastebin.com/raw/Xh0QaLUj"))() --[    put your tools code inside the function     ]
    
    delay(0, function() --[script tip: use delay functions like this instead of wait functions for your script to be smoother]
        
    end)
    
end

local player = game.Players.LocalPlayer
local tool = Instance.new("Tool")
tool.Name = ToolName
tool.RequiresHandle = false
tool.Parent = player.Backpack

local debounce = false



tool.Equipped:Connect(function()
    if not debounce then
        debounce = true

        local players = game:GetService("Players")
        local player = players.LocalPlayer
        local character = player.Character
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid:UnequipTools()
        end

        delay(CooldownLength, function()
            debounce = false
        end)

        local hotbar = player.PlayerGui.Hotbar.Backpack.Hotbar[ToolSlot]
        local cooldown = player.PlayerGui.Hotbar.Backpack.LocalScript.Cooldown:Clone()

        cooldown.Parent = hotbar

        local tweenService = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(CooldownLength, Enum.EasingStyle.Linear)
        local tweenGoal = {Size = UDim2.new(cooldown.Size.X.Scale, cooldown.Size.X.Offset, 0, 0)}

        local tween = tweenService:Create(cooldown, tweenInfo, tweenGoal)
        tween:Play()

        tween.Completed:Connect(function()
            cooldown:Destroy()
        end)
        delay(0, function()
            ToolCode()
        end)
        
    end
end)

local ToolName = "Swift Sweep" --[    put your tools name here    ]
local CooldownLength = 8 --[    put your desired cooldown length    ]
local ToolSlot = "2" --[    make 2 say the hotbar slot of your tool    ]

local function ToolCode() local p = game.Players.LocalPlayer
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
playAnim2:Play()--[    put your tools code inside the function     ]
    
    delay(0, function() --[script tip: use delay functions like this instead of wait functions for your script to be smoother]
        
    end)
    
end

local player = game.Players.LocalPlayer
local tool = Instance.new("Tool")
tool.Name = ToolName
tool.RequiresHandle = false
tool.Parent = player.Backpack

local debounce = false



tool.Equipped:Connect(function()
    if not debounce then
        debounce = true

        local players = game:GetService("Players")
        local player = players.LocalPlayer
        local character = player.Character
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid:UnequipTools()
        end

        delay(CooldownLength, function()
            debounce = false
        end)

        local hotbar = player.PlayerGui.Hotbar.Backpack.Hotbar[ToolSlot]
        local cooldown = player.PlayerGui.Hotbar.Backpack.LocalScript.Cooldown:Clone()

        cooldown.Parent = hotbar

        local tweenService = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(CooldownLength, Enum.EasingStyle.Linear)
        local tweenGoal = {Size = UDim2.new(cooldown.Size.X.Scale, cooldown.Size.X.Offset, 0, 0)}

        local tween = tweenService:Create(cooldown, tweenInfo, tweenGoal)
        tween:Play()

        tween.Completed:Connect(function()
            cooldown:Destroy()
        end)
        delay(0, function()
            ToolCode()
        end)
        
    end
end)
local ToolName = "Collateral Ruin" --[    put your tools name here    ]
local CooldownLength = 12.5 --[    put your desired cooldown length    ]
local ToolSlot = "3" --[    make 2 say the hotbar slot of your tool    ]

local function ToolCode() loadstring(game:HttpGet("https://pastebin.com/raw/6GJBVRCT"))() --[    put your tools code inside the function     ]
    
    delay(0, function() --[script tip: use delay functions like this instead of wait functions for your script to be smoother]
        
    end)
    
end

local player = game.Players.LocalPlayer
local tool = Instance.new("Tool")
tool.Name = ToolName
tool.RequiresHandle = false
tool.Parent = player.Backpack

local debounce = false



tool.Equipped:Connect(function()
    if not debounce then
        debounce = true

        local players = game:GetService("Players")
        local player = players.LocalPlayer
        local character = player.Character
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid:UnequipTools()
        end

        delay(CooldownLength, function()
            debounce = false
        end)

        local hotbar = player.PlayerGui.Hotbar.Backpack.Hotbar[ToolSlot]
        local cooldown = player.PlayerGui.Hotbar.Backpack.LocalScript.Cooldown:Clone()

        cooldown.Parent = hotbar

        local tweenService = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(CooldownLength, Enum.EasingStyle.Linear)
        local tweenGoal = {Size = UDim2.new(cooldown.Size.X.Scale, cooldown.Size.X.Offset, 0, 0)}

        local tween = tweenService:Create(cooldown, tweenInfo, tweenGoal)
        tween:Play()

        tween.Completed:Connect(function()
            cooldown:Destroy()
        end)
        delay(0, function()
            ToolCode()
        end)
        
    end
end)

local player = Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")
 
local function findGuiAndSetText()
    local screenGui = playerGui:FindFirstChild("ScreenGui")
    if screenGui then
        local magicHealthFrame = screenGui:FindFirstChild("MagicHealth")
        if magicHealthFrame then
            local textLabel = magicHealthFrame:FindFirstChild("TextLabel")
            if textLabel then
                textLabel.Text = "20 SERIES"
            end
        end
    end
end
 
 
playerGui.DescendantAdded:Connect(findGuiAndSetText)
findGuiAndSetText()
 
 playerGui.DescendantAdded:Connect(findGuiAndSetText)
 
findGuiAndSetText()

local ToolName = "Wall Combo" --[    put your tools name here    ]
local CooldownLength = 8 --[    put your desired cooldown length    ]
local ToolSlot = "4" --[    make 2 say the hotbar slot of your tool    ]

local function ToolCode() local k = Instance.new("Sound", game.Players.LocalPlayer.Character.Torso)
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

end) --[    put your tools code inside the function     ]
    
    delay(0, function() --[script tip: use delay functions like this instead of wait functions for your script to be smoother]
        
    end)
    
end

local player = game.Players.LocalPlayer
local tool = Instance.new("Tool")
tool.Name = ToolName
tool.RequiresHandle = false
tool.Parent = player.Backpack

local debounce = false



tool.Equipped:Connect(function()
    if not debounce then
        debounce = true

        local players = game:GetService("Players")
        local player = players.LocalPlayer
        local character = player.Character
        local humanoid = character:FindFirstChildOfClass("Humanoid")
        if humanoid then
            humanoid:UnequipTools()
        end

        delay(CooldownLength, function()
            debounce = false
        end)

        local hotbar = player.PlayerGui.Hotbar.Backpack.Hotbar[ToolSlot]
        local cooldown = player.PlayerGui.Hotbar.Backpack.LocalScript.Cooldown:Clone()

        cooldown.Parent = hotbar

        local tweenService = game:GetService("TweenService")
        local tweenInfo = TweenInfo.new(CooldownLength, Enum.EasingStyle.Linear)
        local tweenGoal = {Size = UDim2.new(cooldown.Size.X.Scale, cooldown.Size.X.Offset, 0, 0)}

        local tween = tweenService:Create(cooldown, tweenInfo, tweenGoal)
        tween:Play()

        tween.Completed:Connect(function()
            cooldown:Destroy()
        end)
        delay(0, function()
            ToolCode()
        end)
        
    end
end)


-- Create the tool
local tool = Instance.new("Tool")
tool.Name = "Five Seasons"  -- Updated tool name
tool.RequiresHandle = false  -- No handle required
tool.ToolTip = "season"
 
-- Insert the tool into the player's backpack
tool.Parent = game.Players.LocalPlayer.Backpack
 
-- Function to execute when the tool is activated
local function onActivated()

    local p = game.Players.LocalPlayer
local Humanoid = p.Character:WaitForChild("Humanoid")


local AnimAnim = Instance.new("Animation")
AnimAnim.AnimationId = "rbxassetid://18462892217"
local Anim = Humanoid:LoadAnimation(AnimAnim)
AnimAnim.AnimationId = "rbxassetid://0"
Anim:Play()


-- Local Script


local soundId = 18460952794 -- Correct sound ID


-- Create a new Sound instance
local sound = Instance.new("Sound")
sound.Name = "audio/kj_awakening_varient_2_sfx_only"
sound.SoundId = "rbxassetid://" .. soundId
sound.Volume = 1
sound.Pitch = 1.0 -- Pitch set to 1.0
sound.PlaybackSpeed = 1.0 -- Adjusted playback speed


-- Parent the sound to Workspace
sound.Parent = workspace


-- Play the sound
sound:Play()


-- Local Script


local soundId = 18460863844 -- Correct sound ID


-- Create a new Sound instance
local sound = Instance.new("Sound")
sound.Name = "audio/kj_awakening_varient_2_sfx_only"
sound.SoundId = "rbxassetid://" .. soundId
sound.Volume = 1
sound.Pitch = 1.0 -- Pitch set to 1.0
sound.PlaybackSpeed = 1.0 -- Adjusted playback speed


-- Parent the sound to Workspace
sound.Parent = workspace


-- Play the sound
sound:Play() 


wait(0.5)

local function stringToCFrame(str)
	local components = {str:match("([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+),([^,]+)")}
	for i = 1, #components do
		components[i] = tonumber(components[i])
	end
	return CFrame.new(unpack(components))
end

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local torso = character:FindFirstChild("Torso")
local workspace = game:GetService("Workspace")


local resourcesFolder = ReplicatedStorage:FindFirstChild("Resources")
if not resourcesFolder then return end


local fiveSeasonsFX = resourcesFolder:FindFirstChild("FiveSeasonsFX")
if not fiveSeasonsFX then return end


local jumpFXModel = fiveSeasonsFX:FindFirstChild("JumpFX")
if not jumpFXModel then return end


local jumpFXPart = jumpFXModel:FindFirstChild("JumpFX")
if not jumpFXPart then return end


local clonedJumpFX = jumpFXPart:Clone()
clonedJumpFX.Parent = workspace


local function emitParticles(instance)
    for _, child in ipairs(instance:GetDescendants()) do
        if child:IsA("ParticleEmitter") then
            child.Enabled = true
            child:Emit(1)
            child.Enabled = false
        end
    end
end


local function positionOnFloor(part)
    if torso then
        local torsoPosition = torso.Position
        local rayOrigin = torsoPosition + Vector3.new(0, 10, 0)
        local rayDirection = Vector3.new(0, -20, 0)
        local raycastResult = workspace:Raycast(rayOrigin, rayDirection)


        if raycastResult then
            part.Position = raycastResult.Position - Vector3.new(0, 0.9, 0)
        end
    end
end


emitParticles(clonedJumpFX)
positionOnFloor(clonedJumpFX)


Wait(3.5)


        local red4 = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmBurst.Attachment:Clone()
red4.Parent = game.Players.LocalPlayer.Character["Left Arm"]
    for _, child in ipairs(red4:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(20) -- Emit 20 particles
        end
        end
local red4 = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmBurst.a:Clone()
red4.Parent = game.Players.LocalPlayer.Character["Left Arm"]
    for _, child in ipairs(red4:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(20) -- Emit 20 particles
        end
        end
        local red4 = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmFX:Clone()
red4.Parent = game.Players.LocalPlayer.Character["Left Arm"]
    for _, child in ipairs(red4:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(1) -- Emit 20 particles
        end
        end
        wait(2.1)
        red4:Destroy()
                        local red4 = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].EyeEmit:Clone()
red4.Parent = game.Players.LocalPlayer.Character["Head"]
    for _, child in ipairs(red4:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(20) -- Emit 20 particles
        end
        end
                local red4 = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmBurst.Attachment:Clone()
red4.Parent = game.Players.LocalPlayer.Character["Left Arm"]
    for _, child in ipairs(red4:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(20) -- Emit 20 particles
        end
        end
local red4 = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmBurst.a:Clone()
red4.Parent = game.Players.LocalPlayer.Character["Left Arm"]
    for _, child in ipairs(red4:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(20) -- Emit 20 particles
        end
        end
                local red4 = game.ReplicatedStorage.Resources.FiveSeasonsFX["CharFX"].ArmFX:Clone()
red4.Parent = game.Players.LocalPlayer.Character["Left Arm"]
    for _, child in ipairs(red4:GetChildren()) do
        if child:IsA("ParticleEmitter") then -- Check if the child is a ParticleEmitter
            child:Emit(1) -- Emit 20 particles
        end
        end
        wait(1.8)
        red4:Destroy()

-- Get the player and their character
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local torso = character:WaitForChild("Torso")


-- Function to find a descendant recursively by name
local function findDescendant(parent, name)
    local child = parent:FindFirstChild(name)
    if not child then
        for _, descendant in ipairs(parent:GetChildren()) do
            child = findDescendant(descendant, name)
            if child then
                break
            end
        end
    end
    return child
end


-- Function to duplicate a ParticleEmitter
local function duplicateEmitter(originalEmitter)
    local duplicate = originalEmitter:Clone()
    duplicate.Parent = originalEmitter.Parent
    duplicate.Rate = 100  -- Set the rate of the duplicated emitter to 100 initially
    return duplicate
end


-- Look for the tpthing ParticleEmitter
local replicatedStorage = game:GetService("ReplicatedStorage")
local resourcesFolder = replicatedStorage:WaitForChild("Resources", 2) -- Wait for 2 seconds if not immediately found
if resourcesFolder then
    local kjEffectsFolder = resourcesFolder:FindFirstChild("KJEffects")
    if kjEffectsFolder then
        local tpThingEmitter = findDescendant(kjEffectsFolder, "tpthing")
        if tpThingEmitter and tpThingEmitter:IsA("ParticleEmitter") then
            -- Duplicate the emitter
            local duplicatedEmitter = duplicateEmitter(tpThingEmitter)
            
            -- Parent the duplicated emitter to the character's torso
            duplicatedEmitter.Parent = torso
            print("Successfully parented duplicated tpthing ParticleEmitter to Torso and set Rate to 100.")
            
            -- Wait for 1.0 seconds
            wait(0.2)
            
            -- Set the rate of the duplicated emitter to 0
            duplicatedEmitter.Rate = 0
            print("Successfully set Rate of duplicated emitter to 0 after 1.0 seconds.")


        else
            warn("Could not find tpthing ParticleEmitter or it is not a ParticleEmitter.")
        end
    else
        warn("Could not find KJEffects folder inside Resources.")
    end
else
    warn("Could not find Resources folder inside ReplicatedStorage.")
end


Wait(0.2)


local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

-- Get the player and their character
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local leftArm = character:WaitForChild("Left Arm")


-- Check if the "ArmEnabled" object exists in the "Left Arm"
local armEnabled = leftArm:FindFirstChild("ArmEnabled")
if armEnabled then
    -- Remove the "ArmEnabled" object
    armEnabled:Destroy()
    print("Successfully removed ArmEnabled from Left Arm.")
else
    warn("Could not find ArmEnabled in Left Arm.")
end

local player = game.Players.LocalPlayer
local userInputService = game:GetService("UserInputService")
local activated = false
local GameP = game.PlaceId
local playerName = game.Players.LocalPlayer.Name

game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "Just wait " ..playerName ..  "😏", -- 
    Text = "wait 10 seconds pls", -- 
     -- 
})

Wait(10)

loadstring(game:HttpGet("https://pastebin.com/raw/tS3L3LZg"))()

Wait(4.5)
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local camera = workspace.CurrentCamera

local speed = 2 -- How fast the health reduces (seconds between each health reduction)
local duration = 0.001 -- Total time to keep reducing health (in seconds)
local damageAmount = 99 -- The amount of health to reduce on each hit


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
local damageAmount = 99 -- The amount of health to reduce on each hit


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
            if targetCharacter ~= character and distance <= 450 then
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
Wait(8)

loadstring(game:HttpGet("https://pastebin.com/raw/2vB65z90"))()
end
 
-- Connect the activation function to the tool's Activated event
tool.Activated:Connect(onActivated)
 
-- Add the tool to the player's backpack
tool.Parent = game.Players.LocalPlayer.Backpack
end
 
-- Connect the activation function to the tool's Activated event
tool.Activated:Connect(onActivated)
 
-- Add the tool to the player's backpack
tool.Parent = game.Players.LocalPlayer.Backpack
