local PabloLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/BatuKvi123/PabloLibV3/main/PabloLibV3"))()
local Window = PabloLib:Create(
"XScript", -- Título da janela
"Enabled", -- Janela arrastável
"p" -- Tecla para abrir/fechar
)

local Main = Window:CreateTab("Main")

-- Slider para WalkSpeed
Main:CreateSlider("WalkSpeed", 0, 1000, function(value)
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = value
end)

-- Slider para JumpPower
Main:CreateSlider("JumpPower", 0, 1000, function(value)
game.Players.LocalPlayer.Character.Humanoid.JumpPower = value
end)

-- Botão XHUB
Main:CreateButton("XHUB", function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/blackheartedcurse/punkz-Scripts/main/SolaraVersionRagdoll.lua"))()
end)

-- Toggle para Shaders
Main:CreateToggle("Shaders", function(state)
if state then
-- Ativar shaders
loadstring(game:HttpGet("https://raw.githubusercontent.com/zenosama404/zeno-shaders/main/shaders.lua"))()
else
-- Desativar shaders (pode ser necessário ajustar conforme o script de shaders usado)
game:GetService("Lighting").Blur.Enabled = false
game:GetService("Lighting").Bloom.Enabled = false
game:GetService("Lighting").ColorCorrection.Enabled = false
game:GetService("Lighting").SunRays.Enabled = false
end
end)

-- Toggle para Troll
Main:CreateToggle("Troll", function(state)
if state then
_G.TrollActive = true
while _G.TrollActive do
AnimationId = "179224234"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1111111111111111111111)
wait(.125)
local Humanoid = game.Players.LocalPlayer.Character.Humanoid

local ActiveTracks = Humanoid:GetPlayingAnimationTracks()

for _,v in pairs(ActiveTracks) do
v:Stop()
end
wait()
if game.Players.LocalPlayer.Character.Humanoid.Health == 0 then
_G.TrollActive = false
end
end
else
_G.TrollActive = false
end
end)

-- Botão Twerk
Main:CreateButton("Twerk", function()
AnimationId = "179224234"
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://"..AnimationId
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play()
k:AdjustSpeed(1)
end)

PabloLib:Init()
