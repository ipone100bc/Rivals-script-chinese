local Rayfield = loadstring(game:HttpGet('https://sirius.menu'))()

local Window = Rayfield:CreateWindow({
   Name = "Rivals Skin Changer | Xeno Support",
   LoadingTitle = "Se încarcă interfața...",
   LoadingSubtitle = "by YourName",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = "RivalsConfig",
      FileName = "Skins"
   }
})

local Tab = Window:CreateTab("Skin Changer", 4483362458) -- Iconiță

Tab:CreateSection("Personalizare Armă (Client-Side)")

Tab:CreateColorPicker({
    Name = "Culoare Armă",
    Color = Color3.fromRGB(255, 0, 0),
    Callback = function(Value)
        -- Codul de schimbare a culorii (le vezi doar tu)
        local viewmodel = game:GetService("Workspace").Camera:FindFirstChild("ViewModel")
        if viewmodel then
            for _, part in pairs(viewmodel:GetDescendants()) do
                if part:IsA("MeshPart") or part:IsA("Part") then
                    part.Color = Value
                end
            end
        end
    end,
})

Tab:CreateDropdown({
   Name = "Material Skin",
   Options = {"ForceField", "Neon", "Glass", "Plastic"},
   CurrentOption = {"Plastic"},
   MultipleOptions = false,
   Callback = function(Option)
      local viewmodel = game:GetService("Workspace").Camera:FindFirstChild("ViewModel")
      if viewmodel then
          for _, part in pairs(viewmodel:GetDescendants()) do
              if part:IsA("MeshPart") or part:IsA("Part") then
                  part.Material = Enum.Material[Option[1]]
              end
          end
      end
   end,
})

Rayfield:Notify({
   Title = "Succes!",
   Content = "Scriptul a fost executat în Xeno.",
   Duration = 5,
   Image = 4483362458,
})
