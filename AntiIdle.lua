local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function simulateKeyPress()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, "Z", false, game)
    wait(0.1)
    game:GetService("VirtualInputManager"):SendKeyEvent(false, "Z", false, game)
end

local function teleportPlayer()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    local currentPosition = humanoidRootPart.Position
    local origPosition = currentPosition
    local currentRotation = humanoidRootPart.CFrame.Rotation
    local function setPositionKeepRotation(newPosition)
        humanoidRootPart.CFrame = CFrame.new(newPosition) * currentRotation
    end
    setPositionKeepRotation(currentPosition + Vector3.new(0, 0.01, 0))
    wait()
    setPositionKeepRotation(currentPosition + Vector3.new(0.01, 0.01, 0))
    wait()
    setPositionKeepRotation(currentPosition + Vector3.new(-0.01, 0.01, 0))
    wait()
    setPositionKeepRotation(currentPosition + Vector3.new(-0.01, 0.01, 0))
    wait()
    setPositionKeepRotation(currentPosition + Vector3.new(0.01, 0.01, 0))
    wait()
    setPositionKeepRotation(currentPosition + Vector3.new(0, 0.01, 0.01))
    wait()
    setPositionKeepRotation(currentPosition + Vector3.new(0, 0.01, -0.01))
    wait()
    setPositionKeepRotation(currentPosition + Vector3.new(0, 0.01, -0.01))
    wait()
    setPositionKeepRotation(currentPosition + Vector3.new(0, 0.01, 0.01))
    wait(0.05)
    setPositionKeepRotation(origPosition)
end

while true do
    local RNG = Random.new()
    if RNG:NextInteger(1, 20) == 1 then
        simulateKeyPress()
        wait()
        teleportPlayer()
    end
    wait(3)
end
