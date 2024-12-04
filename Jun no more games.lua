task.spawn(function()
wait(4.5)
local function GetGitSound(GithubSnd,SoundName)
                local url=GithubSnd
                if not isfile(SoundName..".mp3") then
                    writefile(SoundName..".mp3", game:HttpGet(url))
                end
                local sound=Instance.new("Sound")
                sound.SoundId=(getcustomasset or getsynasset)(SoundName..".mp3")
                return sound
            end
   local Clock = GetGitSound("https://github.com/Skibidicatlol/Skibidicatlol/blob/main/Nomoregames.mp3?raw=true","No_More_Games")

                Clock.Parent = Workspace

                Clock.Volume = 1
                Clock.TimePosition = 0

                Clock:Play()
end)

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
coroutine.wrap(function()
    -- Ensure the necessary services are available
    local ts = game:GetService("TweenService")
    local player = game.Players.LocalPlayer
    local character = player.Character or player.CharacterAdded:Wait()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")

    -- Create the BillboardGui and its components
    local Dialogue = Instance.new("BillboardGui")
    local Chat1 = Instance.new("Frame")
    local Sub = Instance.new("TextLabel")

    -- Configure the BillboardGui
    Dialogue.Active = true
    Dialogue.Size = UDim2.new(15, 0, 15, 0)
    Dialogue.StudsOffset = Vector3.new(0, 0, 2) -- Adjust the offset to make it visible
    Dialogue.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
    Dialogue.Name = "Dialogue"
    Dialogue.Parent = humanoidRootPart

    -- Configure the frame inside the BillboardGui
    Chat1.AnchorPoint = Vector2.new(0.5, 0.5)
    Chat1.BackgroundColor3 = Color3.new(1, 1, 1)
    Chat1.BorderColor3 = Color3.new(0, 0, 0)
    Chat1.BorderSizePixel = 2
    Chat1.Position = UDim2.new(0.600000024, 0, -0.2, 0) -- Adjust the position for visibility
    Chat1.Size = UDim2.new(0.100000001, 0, 0.200000003, 0)
    Chat1.Name = "Chat1"
    Chat1.BackgroundTransparency = 1
    Chat1.Parent = Dialogue

    -- Configure the TextLabel inside the frame
    Sub.FontFace = Font.new("rbxassetid://12187375716", Enum.FontWeight.Bold, Enum.FontStyle.Italic)
    Sub.Text = "No More Games"
    Sub.TextColor3 = Color3.new(0, 0, 0)
    Sub.TextScaled = true
    Sub.TextSize = 14
    Sub.TextWrapped = true
    Sub.AnchorPoint = Vector2.new(0.5, 0.5)
    Sub.BackgroundColor3 = Color3.new(1, 1, 1)
    Sub.TextTransparency = 1
    Sub.BorderColor3 = Color3.new(0, 0, 0)
    Sub.BorderSizePixel = 0
    Sub.Position = UDim2.new(0.5, 0, 0.5, 0)
    Sub.Size = UDim2.new(0.850000024, 0, 0.349999994, 0)
    Sub.Name = "Sub"
    Sub.Parent = Chat1
    Sub.BackgroundTransparency = 1

    -- Ensure cleanup of the BillboardGui elements after some time
    game.Debris:AddItem(Chat1, 25)
    game.Debris:AddItem(Sub, 25)

    -- Define the tweenProperty function if missing
    local function tweenProperty(object, properties, time)
        local tweenInfo = TweenInfo.new(time, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
        local tween = ts:Create(object, tweenInfo, properties)
        tween:Play()
        return tween
    end

    -- Animations for transparency and positioning
    tweenProperty(Chat1, {BackgroundTransparency = 0}, 1)
    tweenProperty(Sub, {TextTransparency = 0}, 1)
    tweenProperty(Chat1, {Position = UDim2.new(0.6, 0, 0.4, 0)}, 1)
    task.wait(1.75)
    tweenProperty(Chat1, {BackgroundTransparency = 1}, 2)
    tweenProperty(Sub, {TextTransparency = 1}, 2)
end)()
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

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://18869769700"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 1

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

wait(0.5)
local animationId = "16552234590"

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://0" .. animationId
local animationTrack = humanoid:LoadAnimation(animation)

animationTrack:play()
wait(0.5)
local animationId = "16552234590"

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")

local animation = Instance.new("Animation")
animation.AnimationId = "rbxassetid://0" .. animationId
local animationTrack = humanoid:LoadAnimation(animation)

animationTrack:play()

wait(0.25)

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://18109164000"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 1

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

task.wait(2.25) --how long the final image is shown
screenGui:Destroy()




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

local soundeffect = Instance.new("Sound")
soundeffect.SoundId = "rbxassetid://17356346310"
soundeffect.Parent = game.Workspace
soundeffect:Play()
soundeffect.Volume = 1
soundeffect.TimePosition = 6.1

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



wait(2)
w:Destroy()
sp:Destroy()
wl:Destroy()
d.Destroy()
n:Destroy()
r:Destroy()
    
