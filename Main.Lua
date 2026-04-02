local Library = loadstring(game:HttpGet("https://githubusercontent.com"))()
local Window = Library.CreateLib("ASCIDA REMIX | Keyless Rivals", "BloodTheme")

local Tab = Window:NewTab("Skin Changer")
local Section = Tab:NewSection("Weapon Customization")

Section:NewButton("Neon Forcefield", "Schimba textura armei", function()
    local viewmodel = game:GetService("Workspace").Camera:FindFirstChild("ViewModel")
    if viewmodel then
        for _, v in pairs(viewmodel:GetDescendants()) do
            if v:IsA("MeshPart") or v:IsA("Part") then
                v.Material = Enum.Material.ForceField
                v.Color = Color3.fromRGB(0, 255, 255)
            end
        end
    end
end)

Section:NewColorPicker("Weapon Color", "Alege culoarea", Color3.fromRGB(255,0,0), function(color)
    local viewmodel = game:GetService("Workspace").Camera:FindFirstChild("ViewModel")
    if viewmodel then
        for _, v in pairs(viewmodel:GetDescendants()) do
            if v:IsA("MeshPart") or v:IsA("Part") then
                v.Color = color
            end
        end
    end
end)

local Settings = Window:NewTab("Settings")
Settings:NewSection("Controls")
Settings:NewKeybind("Toggle UI", "Inchide/Deschide", Enum.KeyCode.RightShift, function()
	Library:ToggleUI()
end)
