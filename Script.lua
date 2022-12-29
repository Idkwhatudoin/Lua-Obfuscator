game:GetService("StarterGui"):SetCore("SendNotification",{

                Title = "Retro Hub";

                Text = "Thanks For Choosing Retro Hub!";

                Duration = 4.1;

            })

wait(3)

game:GetService("StarterGui"):SetCore("SendNotification",{

                Title = "Loading";

                Text = "Launching In 3 Seconds...";

                Duration = 4.1;

            })

wait(3)

local Library = loadstring(game:HttpGet("https://pastebin.com/raw/vff1bQ9F"))()

local Window = Library.CreateLib("Retro Hub | Slap Battles 🖐", "Serpent")

local Tab = Window:NewTab("Main")

local Section = Tab:NewSection("Combat")

Section:NewToggle("Slap Aura", "Auto hit, works best with anticheat bypass", function(state)

    if state then

local LocalPlayer = game.Players.LocalPlayer

local ReplicatedStorage = game:GetService('ReplicatedStorage')

game.RunService.RenderStepped:Connect(function()

   for Index, Player in next, game.Players:GetPlayers() do

       if Player ~= LocalPlayer then

           local Character = Player.Character

           

           if Character:FindFirstChild('HumanoidRootPart') ~= nil and Character:FindFirstChild('Humanoid') ~= nil and Character.Humanoid.Health > 0 then

               local Magnitude = (Character.HumanoidRootPart.Position - LocalPlayer.Character.HumanoidRootPart.Position).Magnitude

               if Magnitude < 35 then

                   ReplicatedStorage.b:FireServer(Character.Head)

               end

           end

       end

   end

end)

        print("slap aura activated ")

    end

end)

Section:NewLabel("Slappee Farm")

Section:NewButton("Slappee Farm", "Click to collect all slappee", function()

local localPlr = game:GetService("Players").LocalPlayer

repeat task.wait() until localPlr.Character ~= nil and localPlr.Character:FindFirstChild("HumanoidRootPart")

if not localPlr.Character:FindFirstChild("entered") and localPlr.Character:FindFirstChild("HumanoidRootPart") then

    repeat wait(15.0)

        firetouchinterest(localPlr.Character.HumanoidRootPart, workspace.Lobby.Teleport1, 0)

        firetouchinterest(localPlr.Character.HumanoidRootPart, workspace.Lobby.Teleport1, 1)

    until localPlr.Character:FindFirstChild("entered") ~= nil

end

for _,v in pairs(workspace.Arena:GetDescendants()) do

    if string.find(v.Name, "Slapple") and v:FindFirstChild("Glove") and v.Glove:FindFirstChildOfClass("TouchTransmitter") then

        firetouchinterest(localPlr.Character.HumanoidRootPart, v.Glove, 0)

        firetouchinterest(localPlr.Character.HumanoidRootPart, v.Glove, 1)

        

        print("Collected")

        

        wait(15.0)

    end

end

end)

Section:NewLabel("Anticheat Bypass & Stuffs")

Section:NewButton("Anticheat Bypass", "Bypass trash anticheat", function()

    local Namecall

Namecall = hookmetamethod(game, '__namecall', function(self, ...)

   if getnamecallmethod() == 'FireServer' and tostring(self) == 'Ban' then

       return

   elseif getnamecallmethod() == 'FireServer' and tostring(self) == 'WalkSpeedChanged' then

       return

   elseif getnamecallmethod() == 'FireServer' and tostring(self) == 'AdminGUI' then

       return

   end

   return Namecall(self, ...)

end)

end)

Section:NewColorPicker("Chams", "Chams ( use to set color)", Color3.fromRGB(0,0,0), function(color)

    local Settings = {

	['Material'] = Enum.Material.Neon, -- Material	['Color'] = color, -- Color

	['Transparency'] = 0.7 -- 0 to 1 Transparency

}

local ScreenGui = Instance.new('ScreenGui', game.CoreGui) -- Create screengui

ScreenGui.IgnoreGuiInset = true

local ViewportFrame = Instance.new('ViewportFrame', ScreenGui) -- Create viewport and define properties

ViewportFrame.CurrentCamera = workspace.CurrentCamera

ViewportFrame.Size = UDim2.new(1,0,1,0)

ViewportFrame.BackgroundTransparency = 1

ViewportFrame.ImageTransparency = Settings.Transparency

local Chasms = {} -- Array for storing parts

function generateChasm(player) -- functions that generates chasms for the player specififed

	local Character = workspace:FindFirstChild(player.Name)

	

	if Character then

		for _,Part in pairs(Character:GetChildren()) do

			if Part:IsA('Part') or Part:IsA('MeshPart') then

				local Chasm = Part:Clone()

				

				for _,Child in pairs(Chasm:GetChildren()) do

					if Child:IsA('Decal') then

						Child:Destroy()

					end

				end

				

				Chasm.Parent = ViewportFrame

				Chasm.Material = Settings.Material

				Chasm.Color = Settings.Color

				Chasm.Anchored = true

				

				table.insert(Chasms, Chasm)

			end

		end

	end

end

function clearChasms() -- remove all chasms

	for _,Chasm in pairs(Chasms) do

		Chasm:Destroy()

	end

	

	Chasms = {}

end

while game:GetService('RunService').RenderStepped:Wait() do -- loop this process

	clearChasms()

	

	for _,Player in pairs(game:GetService('Players'):GetPlayers()) do

		if Player ~= game:GetService('Players').LocalPlayer then

			generateChasm(Player)

		end

	end

end

    -- Second argument is the default color

end)

Frame.Parent.Active = true

Frame.Parent.Draggable = true
