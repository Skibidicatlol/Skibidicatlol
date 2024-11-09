
        
   
       
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
local Players = game:GetService("Players")
local RunService = game:GetService("RunService")
local Debris = game:GetService("Debris")
local TweenService = game:GetService("TweenService")

local player = Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local humanoid = character:WaitForChild("Humanoid")
local primaryPart = character.PrimaryPart or character:WaitForChild("HumanoidRootPart")

local targetFolder = Instance.new("Folder")
targetFolder.Name = "locatingtarg"
targetFolder.Parent = character
Debris:AddItem(targetFolder, 1)

local cameraPart = Instance.new("Part")
cameraPart.Transparency = 1
cameraPart.CanCollide = true
cameraPart.Size = Vector3.new(10, 10, 10)
cameraPart.CanTouch = false
cameraPart.CanQuery = false

local bodyVelocity = Instance.new("BodyVelocity")
bodyVelocity.MaxForce = Vector3.new(1, 1, 1) * 100000
bodyVelocity.Velocity = Vector3.new(0, 0, 0)
bodyVelocity.Parent = cameraPart
cameraPart.CFrame = workspace.CurrentCamera.CFrame
cameraPart.Parent = workspace

local currentCamera = workspace.CurrentCamera
currentCamera.CameraType = Enum.CameraType.Scriptable
local rotationValue = Instance.new("NumberValue")
rotationValue.Value = 0
local heightValue = Instance.new("NumberValue")
heightValue.Value = -95
local upForceValue = Instance.new("NumberValue")
upForceValue.Value = 95

TweenService:Create(upForceValue, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Value = 0}):Play()
TweenService:Create(heightValue, TweenInfo.new(10, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Value = 0}):Play()
TweenService:Create(rotationValue, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {Value = -110}):Play()
TweenService:Create(currentCamera, TweenInfo.new(1, Enum.EasingStyle.Quad, Enum.EasingDirection.InOut), {FieldOfView = 40}):Play()

local startTime = tick()
local moveLoop = RunService.Heartbeat:Connect(function()
    local deltaTime = tick() - startTime
    startTime = tick()
    currentCamera.CameraType = Enum.CameraType.Scriptable
    bodyVelocity.Velocity = bodyVelocity.Velocity:lerp(
        humanoid.MoveDirection * heightValue.Value + Vector3.new(0, upForceValue.Value, 0), 
        1 - 5e-7 ^ deltaTime
    )
end)

local renderLoop = RunService.RenderStepped:Connect(function(delta)
    currentCamera.CFrame = currentCamera.CFrame:lerp(
        cameraPart.CFrame * CFrame.Angles(math.rad(rotationValue.Value), 0, 0),
        1 - 5e-5 ^ delta
    )
end)

local shadowCache = {}
for _, part in pairs(character:GetDescendants()) do
    if part:IsA("BasePart") then
        shadowCache[part] = part.CastShadow
        part.CastShadow = false
    end
end

task.delay(1, function()
    for part, shadow in pairs(shadowCache) do
        part.CastShadow = shadow
    end
                            
                        
    moveLoop:Disconnect()
    renderLoop:Disconnect()
    rotationValue:Destroy()
    heightValue:Destroy()
    bodyVelocity:Destroy()
    cameraPart:Destroy()
    currentCamera.CameraType = Enum.CameraType.Custom
end)
				wait(0.95)
            humanoid.AutoRotate = false
            
            local camera = game.Workspace.CurrentCamera
            local fixedYPosition = 600.716 -- Y konumu sabit
            camera.CameraType = Enum.CameraType.Scriptable
            
            
            local duration = 3.375
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
            wait(17.2)
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
fxUi:Destroy()
lastImageLabel:Destroy()
imageLabel:Destroy()
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
        wait(0.275)
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
wait(0.7975)
        Cinematic(loadstring(game:HttpGet('https://raw.githubusercontent.com/AlperPro/shhh/main/cutscene'))())
		wait(0.75)
		loadstring(game:HttpGet("https://pastebin.com/raw/EFiFYBmW"))()
wait(1.75)
loadstring(game:HttpGet("https://pastebin.com/raw/EFiFYBmW"))()
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
        
        character.HumanoidRootPart.Anchored = true
        character["Left Arm"].ArmFX:Destroy()
        wait(1.25)
        character.HumanoidRootPart.Anchored = false
            end)
