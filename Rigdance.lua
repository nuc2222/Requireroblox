-- Replace this with the Animation ID of the dance you want to use
local danceAnimationId = 5917570207

local function makePlayerDance(player)
    local character = player.Character
    if character then
        local humanoid = character:FindFirstChild("Humanoid")
        if humanoid then
            local animation = Instance.new("Animation")
            animation.AnimationId = "rbxassetid://" .. danceAnimationId
            local animationTrack = humanoid:LoadAnimation(animation)
            animationTrack:Play()
        end
    end
end

-- Example: make a specific player (by username) dance
local targetPlayerName = "Nuc2222" -- Replace with the player's username
local targetPlayer = game.Players:FindFirstChild(targetPlayerName)
if targetPlayer then
    makePlayerDance(targetPlayer)
end

