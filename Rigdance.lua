-- Function to clone the avatar of a specified player and apply an animation
local function cloneAndAnimate(targetName, animationId)
    -- Find the player by username
    local targetPlayer = game.Players:FindFirstChild(targetName)
    if not targetPlayer then
        print("Player not found")
        return
    end

    -- Clone the player's character
    local targetCharacter = targetPlayer.Character
    if targetCharacter then
        local clone = targetCharacter:Clone()
        clone.Parent = game.Workspace

        -- Apply the animation to the cloned character
        local humanoid = clone:FindFirstChild("Humanoid")
        if humanoid then
            local animation = Instance.new("Animation")
            animation.AnimationId = "rbxassetid://" .. animationId
            local animationTrack = humanoid:LoadAnimation(animation)
            animationTrack:Play()
        end
    else
        print("Player's character not found")
    end
end

-- Example usage:
local targetPlayerName = "nuc2222" -- Replace with the target player's username
local animationId = "5917570207" -- Replace with the animation ID
cloneAndAnimate(targetPlayerName, animationId)
