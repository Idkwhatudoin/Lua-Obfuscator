local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("SSR Loader", "Synapse")

local Tab = Window:NewTab("Scripts")

local Section = Tab:NewSection("Scripts u can load made by SSR.")

Section:NewButton("Load SSR Weapon Sim 2", "Loads weapon sim 2 gui", function()

local Library = loadstring(game:HttpGet("https://raw.githubusercontent.com/xHeptc/Kavo-UI-Library/main/source.lua"))()

local Window = Library.CreateLib("SSR Loader", "Synapse")

local Tab = Window:NewTab("Farms")

local Tab2 = Window:NewTab("Misc")

local Section = Tab:NewSection("Automation, thats absolutely it.")

local Section2 = Tab2:NewSection("Other bits, just incase h need it.")

Section:NewButton("Sword Farm", "Auto swings ur sword", function()

while true do wait(0.1)

game:GetService("Players").LocalPlayer.Character.sword.Handle.pr.RemoteEvent:FireServer()

end

end)

Section2:NewSlider("Walkspeed", "Adjusts the speed of ur walk", 350, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)

    game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = s

end)

Section2:NewSlider("Jumpspeed", "Adjusts the speed of ur jump", 350, 0, function(s) -- 500 (MaxValue) | 0 (MinValue)

    game.Players.LocalPlayer.Character.Humanoid.JumpSpeed = s

end)

end)
