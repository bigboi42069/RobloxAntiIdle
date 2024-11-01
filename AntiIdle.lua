local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()

local function teleportPlayer()
    local humanoidRootPart = character:WaitForChild("HumanoidRootPart")
    local currentPosition = humanoidRootPart.Position
    local origPosition = currentPosition
    local currentRotation = humanoidRootPart.CFrame.Rotation
    local function setPositionKeepRotation(newPosition)
        humanoidRootPart.CFrame = CFrame.new(newPosition) * currentRotation
    end

    setPositionKeepRotation(currentPosition + Vector3.new(0, 0.1, 0))
    wait()
    setPositionKeepRotation(currentPosition + Vector3.new(0.1, 0.1, 0))
    wait()
    setPositionKeepRotation(currentPosition + Vector3.new(-0.1, 0.1, 0))
    wait()
    setPositionKeepRotation(currentPosition + Vector3.new(-0.1, 0.1, 0))
    wait()
    setPositionKeepRotation(currentPosition + Vector3.new(0.1, 0.1, 0))
    wait()
    setPositionKeepRotation(currentPosition + Vector3.new(0, 0.1, 0.1))
    wait()
    setPositionKeepRotation(currentPosition + Vector3.new(0, 0.1, -0.1))
    wait()
    setPositionKeepRotation(currentPosition + Vector3.new(0, 0.1, -0.1))
    wait()
    setPositionKeepRotation(currentPosition + Vector3.new(0, 0.1, 0.1))
    wait(0.01)
    setPositionKeepRotation(origPosition)
end

while true do
    teleportPlayer()
    wait(300)
end
