local PabloLib = loadstring(game:HttpGet("https://raw.githubusercontent.com/BatuKvi123/PabloLibV3/main/PabloLibV3"))()
local Window = PabloLib:Create(
"XScript", -- Título da janela
"Enabled", -- Janela arrastável
"p" -- Tecla para abrir/fechar
)

local Main = Window:CreateTab("Main")

-- Label
Main:CreateLabel("Made by Zythronis, Issac")

-- TextBox para WalkSpeed
local walkSpeedBox = Main:CreateTextBox("WalkSpeed", "Digite a velocidade", function() end)

-- Botão para confirmar WalkSpeed
Main:CreateButton("Confirm Speed", function()
local walkSpeed = tonumber(walkSpeedBox:GetText())
if walkSpeed then
game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = walkSpeed
end
end)

-- TextBox para JumpPower
local jumpPowerBox = Main:CreateTextBox("JumpPower", "Digite o pulo", function() end)

-- Botão para confirmar JumpPower
Main:CreateButton("Confirm Jump", function()
local jumpPower = tonumber(jumpPowerBox:GetText())
if jumpPower then
game.Players.LocalPlayer.Character.Humanoid.JumpPower = jumpPower
end
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
if game.Players.LocalPlayer.Character.Humanoid.Health == 0 então
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

-- Botão Fling
Main:CreateButton("Fling", function()
local player = game.Players.LocalPlayer
local char = player.Character
local hrp = char:FindFirstChild("HumanoidRootPart")

if hrp then
hrp.Velocity = Vector3.new(0, 0, 0)
hrp.RotVelocity = Vector3.new(100000, 100000, 100000)
end
end)

PabloLib:Init()
