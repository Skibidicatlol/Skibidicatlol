local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://18440861190"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 1

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

local m = require(game.ReplicatedStorage.Cutscenes["Special"])

local d = m
if d then
    s(d)
end

local animationId = "18440389930"

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://" .. animationId
local animationTrack = humanoid:LoadAnimation(animation)

animationTrack:play()
                        
wait(6)

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local hotbar = playerGui:WaitForChild("Hotbar")

hotbar.Enabled = false

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local ult = playerGui:WaitForChild("ScreenGui")

ult.Enabled = false

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local TopbarPlus = playerGui:WaitForChild("TopbarPlus")

TopbarPlus.Enabled = false

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local Chat = playerGui:WaitForChild("Chat")

Chat.Enabled = false

-- Function that uses a coroutine to wait without blocking other code
local function asyncWait(seconds, callback)
    coroutine.wrap(function()
        wait(seconds)
        if callback then callback() end
    end)()
end

asyncWait(5, function() --change 5 to the end of yo cutscene or smth
    hotbar.Enabled = true
    ult.Enabled = true
    TopbarPlus.Enabled = true
    Chat.Enabled = true
end)

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ImageLabelGui"
screenGui.Parent = playerGui

local imageLabel = Instance.new("ImageLabel")
imageLabel.Size = UDim2.new(1.35, 3.5, 1.35, 3.5)
imageLabel.Position = UDim2.new(-0.2, -0.2, -0.2, -0.2)
imageLabel.SliceScale = 2
imageLabel.ZIndex = 2
imageLabel.TileSize = UDim2.new(1, 1, 1, 1)
imageLabel.BackgroundTransparency = 1
imageLabel.Parent = screenGui

local imageIds = {
    "rbxassetid://70513376860819",
    "rbxassetid://106979825920875",
    "rbxassetid://120758132218200",
    "rbxassetid://121912626338840",
    "rbxassetid://123842843972112",
    "rbxassetid://120758132218200",
      "rbxassetid://121912626338840",
      "rbxassetid://120758132218200" -- to add more images just add another one thats before final image
}


local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17293944193"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 1

local function cycleImages()
    for i, imageId in ipairs(imageIds) do
        imageLabel.Image = imageId
        task.wait(0.075) --chooses how fast it goes trough the anims
    end
end

cycleImages()

animationTrack:Stop()

task.wait(0.75) --how long the final image is shown
screenGui:Destroy()

wait(0.25)
soundeffect:Stop()

task.spawn(function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    local teleportDistance = 0.2 -- The distance to teleport forward each step
    local teleportInterval = 0 -- Time interval between each teleport (in seconds)
    local totalDuration = 1.35 -- Total duration of the teleportation (in seconds)

    local timeElapsed = 0
    local startTime = tick() -- Record the start time

    while timeElapsed < totalDuration do
        humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.new(0, 0, -teleportDistance)
        wait(teleportInterval)
        timeElapsed = tick() - startTime -- Update the elapsed time
    end
end)

local animationId = "15962326593"

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://0" .. animationId
local animationTrack = humanoid:LoadAnimation(animation)

animationTrack:play()
message = "No more games"
game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(message, "All")
local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://7455224490"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 2.5
wait(0.75)
local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://7455224490"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 2.5
wait(0.75)
local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://7455224490"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 2.5

animationTrack:Stop()

task.spawn(function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    local teleportDistance = 0.2 -- The distance to teleport forward each step
    local teleportInterval = 0 -- Time interval between each teleport (in seconds)
    local totalDuration = 0.35 -- Total duration of the teleportation (in seconds)

    local timeElapsed = 0
    local startTime = tick() -- Record the start time

    while timeElapsed < totalDuration do
        humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.new(0, 0, -teleportDistance)
        wait(teleportInterval)
        timeElapsed = tick() - startTime -- Update the elapsed time
    end
end)

local vfx = game.ReplicatedStorage.Resources.Sunrise["FireStuff"].Stomp.Attachment:Clone()
vfx.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(vfx:GetChildren()) do
        if child:IsA("ParticleEmitter") then
child:Emit(10)
        end
end

local vfx = game.ReplicatedStorage.Resources.Sunrise["Final"].Final.Another:Clone()
vfx.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(vfx:GetChildren()) do
        if child:IsA("ParticleEmitter") then
child:Emit(10)
        end
end

local vfx = game.ReplicatedStorage.Resources.Sunrise["AtomicSlash2"].Part.Attachment:Clone()
vfx.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(vfx:GetChildren()) do
        if child:IsA("ParticleEmitter") then
child:Emit(10)
        end
end

local animationId = "17464923657"

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://0" .. animationId
local animationTrack = humanoid:LoadAnimation(animation)

animationTrack:play()
wait(1.25)

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

local m = require(game.ReplicatedStorage.Cutscenes["Atomic Slash"])

local d = m
if d then
    s(d)
end

animationTrack:Stop()
local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://3755636438"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 2.5
local animationId = "13532562418"

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://0" .. animationId
local animationTrack = humanoid:LoadAnimation(animation)

animationTrack:play()



Wait(0.5)

animationTrack:Stop()
local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://3755636438"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 2.5

local animationId = "13532600125"

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://0" .. animationId
local animationTrack = humanoid:LoadAnimation(animation)

animationTrack:play()

Wait(0.5)

animationTrack:Stop()

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://3755636438"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 2.5

local animationId = "13532604085"

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://0" .. animationId
local animationTrack = humanoid:LoadAnimation(animation)

animationTrack:play()

wait(0.5)

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

local m = require(game.ReplicatedStorage.Cutscenes["Sunrise User"])

local d = m
if d then
    s(d)
end

animationTrack:Stop()

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://3755636438"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 2.5

local animationId = "13532562418"

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://0" .. animationId
local animationTrack = humanoid:LoadAnimation(animation)

animationTrack:play()

Wait(0.5)

animationTrack:Stop()

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://3755636438"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 2.5

local animationId = "13532600125"

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://0" .. animationId
local animationTrack = humanoid:LoadAnimation(animation)

animationTrack:play()

Wait(0.5)

animationTrack:Stop()

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://3755636438"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 2.5

local animationId = "13532604085"

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://0" .. animationId
local animationTrack = humanoid:LoadAnimation(animation)

animationTrack:play()

wait(0.5)

animationTrack:Stop()

task.spawn(function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    local teleportDistance = 0.35 -- The distance to teleport forward each step
    local teleportInterval = 0 -- Time interval between each teleport (in seconds)
    local totalDuration = 2.85 -- Total duration of the teleportation (in seconds)

    local timeElapsed = 0
    local startTime = tick() -- Record the start time

    while timeElapsed < totalDuration do
        humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.new(0, 0, -teleportDistance)
        wait(teleportInterval)
        timeElapsed = tick() - startTime -- Update the elapsed time
    end
end) 

local animationId = "18896229321"

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://0" .. animationId
local animationTrack = humanoid:LoadAnimation(animation)

animationTrack:play()

wait(3)

task.spawn(function()
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    local teleportDistance = 0.2 -- The distance to teleport forward each step
    local teleportInterval = 0 -- Time interval between each teleport (in seconds)
    local totalDuration = 0.4 -- Total duration of the teleportation (in seconds)

    local timeElapsed = 0
    local startTime = tick() -- Record the start time

    while timeElapsed < totalDuration do
        humanoidRootPart.CFrame = humanoidRootPart.CFrame * CFrame.new(0, 0, -teleportDistance)
        wait(teleportInterval)
        timeElapsed = tick() - startTime -- Update the elapsed time
    end
end) 

wait(0.25)

local player = game.Players.LocalPlayer
local playerGui = player:WaitForChild("PlayerGui")

local screenGui = Instance.new("ScreenGui")
screenGui.Name = "ImageLabelGui"
screenGui.Parent = playerGui

local imageLabel = Instance.new("ImageLabel")
imageLabel.Size = UDim2.new(1.35, 3.5, 1.35, 3.5)
imageLabel.Position = UDim2.new(-0.2, -0.2, -0.2, -0.2)
imageLabel.SliceScale = 2
imageLabel.ZIndex = 2
imageLabel.TileSize = UDim2.new(1, 1, 1, 1)
imageLabel.BackgroundTransparency = 1
imageLabel.Parent = screenGui

local imageIds = {
    "rbxassetid://93115404147562",
    "rbxassetid://93115404147562",
      "rbxassetid://123644348590702",
    "rbxassetid://110802704506889" -- to add more images just add another one thats before final image
}
local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17293944193"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 1

local function cycleImages()
    for i, imageId in ipairs(imageIds) do
        imageLabel.Image = imageId
        task.wait(0.125) --chooses how fast it goes trough the anims
    end
end

cycleImages()

animationTrack:Stop()

task.wait(1) --how long the final image is shown
screenGui:Destroy()

wait(0.5)
soundeffect:Stop()

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17356346310"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 1

wait(3.5)

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://3755636438"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 2.5

local animationId = "16552234590"

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://0" .. animationId
local animationTrack = humanoid:LoadAnimation(animation)

animationTrack:play()

wait(1.5)

animationTrack:Stop()

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://3755636438"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 2.5

local animationId = "16552234590"

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://0" .. animationId
local animationTrack = humanoid:LoadAnimation(animation)

animationTrack:play()

wait(0.4)

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://13501856971"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 2.5

local ReplicatedStorage = game:GetService("ReplicatedStorage")
local EmitBatch1 = ReplicatedStorage.Resources.KJEffects["fine...Emit"].EmitBatch1:Clone()
local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

EmitBatch1.Parent = character:WaitForChild("HumanoidRootPart")

for _, child in ipairs(EmitBatch1:GetChildren()) do
    if child:IsA("ParticleEmitter") then
        child:Emit(80) -- Emit 1 particle
    end
end

local vfx = game.ReplicatedStorage.Resources.Sunrise["FinalFX"].Explode.C:Clone()
vfx.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(vfx:GetChildren()) do
        if child:IsA("ParticleEmitter") then
child:Emit(10)
        end
end
local vfx = game.ReplicatedStorage.Resources.Sunrise["FinalFX"].Explode.B:Clone()
vfx.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(vfx:GetChildren()) do
        if child:IsA("ParticleEmitter") then
child:Emit(10)
        end
end

local vfx = game.ReplicatedStorage.Resources.Sunrise["FinalFX"].Explode.A:Clone()
vfx.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(vfx:GetChildren()) do
        if child:IsA("ParticleEmitter") then
child:Emit(10)
        end
end

local vfx = game.ReplicatedStorage.Resources.Sunrise["FinalFX"].Explode.Attachment:Clone()
vfx.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(vfx:GetChildren()) do
        if child:IsA("ParticleEmitter") then
child:Emit(10)
        end
end

local vfx = game.ReplicatedStorage.Resources.Sunrise["Forward"].Part.Flarey:Clone()
vfx.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(vfx:GetChildren()) do
        if child:IsA("ParticleEmitter") then
child:Emit(10)
        end
end

local vfx = game.ReplicatedStorage.Resources.Sunrise["Forward"].Part.Windy:Clone()
vfx.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(vfx:GetChildren()) do
        if child:IsA("ParticleEmitter") then
child:Emit(10)
        end
end

local vfx = game.ReplicatedStorage.Resources.Sunrise["Forward"].Part.Windy:Clone()
vfx.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(vfx:GetChildren()) do
        if child:IsA("ParticleEmitter") then
child:Emit(10)
        end
end

local vfx = game.ReplicatedStorage.Resources.Sunrise["Forward"].Part.Flamey:Clone()
vfx.Parent = game.Players.LocalPlayer.Character["HumanoidRootPart"]
    for _, child in ipairs(vfx:GetChildren()) do
        if child:IsA("ParticleEmitter") then
child:Emit(10)
        end
end



local p = game.Players.LocalPlayer
local c = p.Character or p.CharacterAdded:Wait()
local hrp = c:WaitForChild("HumanoidRootPart")
local rs = game:GetService("ReplicatedStorage")
local ws = game:GetService("Workspace")

local r = rs.Resources
local k = r.KJEffects
local s = k.speedlinesandstuff

local t = ws:FindFirstChild("Thrown") or Instance.new("Folder", ws)
t.Name = "Thrown"

local n = s:Clone()
n.Parent = t
n.Anchored = false
n.CFrame = hrp.CFrame + Vector3.new(0, 15, 0) + hrp.CFrame.LookVector * 167

local w = Instance.new("WeldConstraint")
w.Part0 = n
w.Part1 = hrp
w.Parent = n

for _, descendant in ipairs(n:GetDescendants()) do
    if descendant:IsA("ParticleEmitter") then
        descendant.Rate = 101020228
    end
end

local sp = s:FindFirstChild("thespeedthingunderultik")
if sp then
    local d = sp:Clone()
    d.Parent = t
    d.Anchored = false
    d.CFrame = hrp.CFrame

    local wl = Instance.new("WeldConstraint")
    wl.Part0 = d
    wl.Part1 = hrp
    wl.Parent = d

    for _, descendant in ipairs(d:GetDescendants()) do
        if descendant:IsA("ParticleEmitter") then
            descendant.Rate = 1010192929292939
        end
    end
end

wait(0.4)

animationTrack:Stop()

wait(2)
w:Destroy()
sp:Destroy()
wl:Destroy()
d.Destroy()
    