
------------------------important varibles------------------------------------------------------------

rbxname = "mAdman60122"
local prefix = ">"
local LPlayer = game.Players.mAdman60122 -- your name on my name (maxbrh1)
speed = 1 --how fast tweengoto is 
render1 = false --if alts auto unrender when excuted



---------------------commands--------------------------------------------------------------------------
--bring teleports alts to you
--msg says message
--sit sits alts
--unsit unsits alts
--re resets alts
--fling 
--exit makes alts leave 
--float floats alts
--unfloat unfloats alts
--say makes alts say a message
--noclip  noclips
--clip no noclip
--roast roast people with custum text 
--compliment Love and compliments

---------------grapics commands-------------------------------------------------------------------------

--gr1 reduces grapics on alts more cpu power and gpu
--gr2 same as gr1 just much more 
--fps - number fps cap 
--norender REALLY good for performance 
--render renders 
--------------------------------------------------------------------------------------------------------

LPlayer.Chatted:Connect(function(msg)
	msg = msg:lower()
	if string.sub(msg,1,3) == "/e " then
		msg = string.sub(msg,4)
	end
	if string.sub(msg,1,1) == prefix then
		local cmd
		local space = string.find(msg," ")
		if space then
			cmd = string.sub(msg,2,space-1)
		else
			cmd = string.sub(msg,2)
		end
		
--------------------------------commands scripts----------------------------------------------------------
		
		if cmd == "bring" then
		    local p1 = game.Players.LocalPlayer.Character.HumanoidRootPart
local p2 = rbxname
local pos = p1.CFrame

p1.CFrame = game.Players[p2].Character.HumanoidRootPart.CFrame
local BeenASecond, V3 = false, Vector3.new(0, 0, 0)
	delay(1, function()
		BeenASecond = true
	end)
	while not BeenASecond do
		for _, v in ipairs(game.Players.LocalPlayer.Character:GetDescendants()) do
			if v.IsA(v, "BasePart") then
				v.Velocity, v.RotVelocity = V3, V3
			end
		end
		wait()
	end
	end
		if cmd == "sit" then
		    game.Players.LocalPlayer.Character.Humanoid.Sit = true
    end
		if cmd =="unsit" then
		    game.Players.LocalPlayer.Character.Humanoid.Sit = false
    end 
		if cmd == "re" then
    local OldCF = game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame
    game.Players.LocalPlayer.Character.Humanoid.Health = 0
    wait(game.Players.RespawnTime + 0.75)
    game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").CFrame = OldCF
    end
		if cmd == "fling" then
		    --Not Done
		    local var1 = string.sub(msg,space+1)

end
		if cmd == "exit" then
		    game:Shutdown()
		end
				if cmd == "rj" then
		    game:GetService("TeleportService"):Teleport(game.PlaceId, game:GetService("Players").LocalPlayer);
				syn.queue_on_teleport("loadstring(game:HttpGet('https://raw.githubusercontent.com/NotOven/Stuff/main/Alt/Controls.lua',true))();")
				end

if cmd =="unsit" then
		    game.Players.LocalPlayer.Character.Humanoid.Sit = false
    end 
        if cmd == "float" then
            oldHH = game.Players.LocalPlayer.Character.Humanoid.HipHeight
            game.Players.LocalPlayer.Character.Humanoid.HipHeight = 10
        end

        if cmd == "unfloat" then
            	    game.Players.LocalPlayer.Character.Humanoid.HipHeight = oldHH
        end
		if cmd == "say" then
            		    local var = string.sub(msg,space+1)
		                game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(var, "All")
    end
        	if cmd == "antikill" then
    game.StarterGui:SetCore("SendNotification", {
    Title = 'Anti Void/Kill';
    Text = '- Have Fun -';
    Duration = 20;
  }) 

local RunService = game:GetService("RunService")
local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local Mouse = Player:GetMouse()
local UserInputService = game:GetService("UserInputService")
local TempConnections = {}
    function AntiVoid()
        local AntiKill = function()
            if Player.Character and Player.Character:FindFirstChildWhichIsA("Humanoid") and Player.Character:FindFirstChildWhichIsA("Humanoid").RootPart and workspace.CurrentCamera then
                local Humanoid = Player.Character:FindFirstChildWhichIsA("Humanoid")
                local RootPart = Humanoid.RootPart
                if UserInputService.MouseBehavior == Enum.MouseBehavior.LockCenter and not RootPart:FindFirstChildWhichIsA("BodyMover") then
                    local X, Y, Z = workspace.CurrentCamera.CFrame:ToEulerAnglesYXZ()
                    RootPart.CFrame = CFrame.new(RootPart.Position) * CFrame.Angles(0, Y, 0)
                end
                Humanoid.Sit = true
                Humanoid:SetStateEnabled("Seated", false)
                TempConnections["Humanoid"] = Humanoid
            end
        end
        local WhitelistedTools = {}
        local AntiVoid = function(Character)
            table.foreach(Player.Backpack:GetChildren(), function(_, x)
                if x:IsA("Tool") then
                    table.insert(WhitelistedTools, x)
                end
            end)
            TempConnections["AntiTool"] = Character.ChildAdded:Connect(function(Tool)
                local Humanoid = Character and Character:FindFirstChildWhichIsA("Humanoid") or false
                local PrimaryPart = Character and Character.PrimaryPart or false
                local CurrentPosition = PrimaryPart and PrimaryPart.CFrame or false
                if Tool:IsA("Tool") and not table.find(WhitelistedTools, Tool) then
                    if workspace["FallenPartsDestroyHeight"] ~= 0/0 then workspace["FallenPartsDestroyHeight"] = 0/0 end
                    coroutine.wrap(function()
                        repeat task.wait() until Tool
                        Tool.Parent = Player.Backpack
                    end)()
                    if Character and PrimaryPart and Humanoid and CurrentPosition then
                        task.wait()
                        Character:SetPrimaryPartCFrame(CurrentPosition)
                        PrimaryPart.Velocity = Vector3.new()
                        Humanoid:ChangeState("GettingUp")
                    end
                    table.insert(WhitelistedTools, Tool)
                end
            end)
        end
    TempConnections["AntiKill"] = RunService.RenderStepped:Connect(AntiKill)
    AntiVoid(Player.Character)
    TempConnections["ReAntiVoid"] = Player.CharacterAdded:Connect(AntiVoid)
end
AntiVoid()
Player.CharacterAdded:Connect(function(Character)
    Character:WaitForChild('HumanoidRootPart')
    AntiVoid()
end)
end
        	if cmd == "antifling" then
    loadstring(game:HttpGet("https://raw.githubusercontent.com/LegoHacker1337/legohacks/main/PhysicsServiceOnClient.lua"))()

    local PhysicsService = game:GetService("PhysicsService")
    PhysicsService:CreateCollisionGroup("Players")
    PhysicsService:CollisionGroupSetCollidable("Players", "Players", false)
    
    local function OnCharacterAdded(Chr)
        coroutine.resume(coroutine.create(function()
            repeat wait() until Chr:FindFirstChild("HumanoidRootPart") ~= nil
            Chr:WaitForChild("Humanoid")
            wait()
            for i,v in pairs(Chr:GetDescendants()) do
                if v:IsA("BasePart") then
                    PhysicsService:SetPartCollisionGroup(v, "Players")
                end
            end
        end))
    end
    local function OnPlayerAdded(Plr)
        Plr.CharacterAdded:Connect(OnCharacterAdded)
        if Plr.Character then
            Plr.Character:WaitForChild("Humanoid")
            OnCharacterAdded(Plr.Character)
        end
    end
    
    game:GetService("Players").PlayerAdded:Connect(OnPlayerAdded)
    
    for i,v in pairs(game:GetService("Players"):GetPlayers()) do
        OnPlayerAdded(v)
    end
    end
        if cmd== "noclip" then
            local Players = game:GetService("Players")
local Player = Players.LocalPlayer
local name = Player.Name
local Character = Player.Character

local ST = game:GetService('RunService').Stepped

function CanCollideOff(Char)

    for i, v in pairs(Char:GetDescendants()) do
        if v:IsA('BasePart') or v:IsA('Union') and v.Name ~= "HumanoidRootPart" then
            v.CanCollide = false
        end
    end
end

ST:Connect(function()
    if game:GetService("Workspace"):FindFirstChild(name) then
        CanCollideOff(game:GetService("Workspace")[name])
    end
end)
    end

        if cmd == "roast" then
            local Roast = {"You bring everyone so much joy! You know, when you leave the room. But, still",
            "If your brain was dynamite, there wouldn’t be enough to blow your hat off.",
            "You are like a cloud. When you disappear, it’s a beautiful day.",
            "I thought of you today. It reminded me to take out the trash.",
            "Don’t be ashamed of who you are. That’s your parent’s job.",
            "You’re my favorite person… besides every other person I’ve ever met.",
            "You are proof that evolution can go in reverse.",
            "If I throw a stick, will you leave?",
            "Were you born this stupid or did you take lessons?",
            "You are proof that god has a sense of humour.",
            "if i had a face like yours, id sue my parents",
            "If I had a dollar every time you shut up, I would give it back as a thank you.",
            "Yes, I’m fully vaccinated, but I will still not hang out with you.",
            "Earth is full. Go home.",
            "A glowstick has a brighter future than you. Lasts longer in bed, too.",
            "Taking a picture of you would put a virus on my phone",
            }

            local Result = Roast[math.random(1, #Roast)]
            game:service('ReplicatedStorage').DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Result,"All")
    end
        if cmd == "compliment" then
            local love = {"You just light up the room.",
            "You are more fun than anyone or anything I know, including bubble wrap.",
            "Your inside is even more beautiful than your outside.",
            "You inspire me.",
            "You are the reason I am smiling today.",
            "I bet you make small animals happy.",
            "Colors seem brighter when you're around.",
            "Your eyes are breathtaking.",
            "On a scale from 1 to 10, you're an 11.",
            "You are an incredible human.",
            "Thank you for being you.",
            }

            local Result1 = love[math.random(1, #love)]
            game:service('ReplicatedStorage').DefaultChatSystemChatEvents.SayMessageRequest:FireServer(Result1,"All")
    end


-----------------------------grapics and sound scripts-----------------------------------------------------------------------------------
		if cmd =="volume" then
		    local level = string.sub(msg,space+1)
		    UserSettings():GetService("UserGameSettings").MasterVolume = level
    end 

if cmd == "gr1" then
    local a = game

local b = a.Workspace

local c = a.Lighting

local d = b.Terrain

d.WaterWaveSize = 0

d.WaterWaveSpeed = 0

d.WaterReflectance = 0

d.WaterTransparency = 0

c.GlobalShadows = false

c.FogEnd = 9e9

c.Brightness = 0

settings().Rendering.QualityLevel = "Level01"

for e, f in pairs(a:GetDescendants()) do

if f:IsA("Part") or f:IsA("Union") or f:IsA("CornerWedgePart") or f:IsA("TrussPart") then

f.Material = "Plastic"

f.Reflectance = 0

elseif f:IsA("Decal") or f:IsA("Texture") then

f.Transparency = 0

elseif f:IsA("ParticleEmitter") or f:IsA("Trail") then

f.Lifetime = NumberRange.new(0)

elseif f:IsA("Explosion") then

f.BlastPressure = 0

f.BlastRadius = 0

elseif f:IsA("Fire") or f:IsA("SpotLight") or f:IsA("Smoke") or f:IsA("Sparkles") then

f.Enabled = false

elseif f:IsA("MeshPart") then

f.Material = "Plastic"

f.Reflectance = 0

f.TextureID = 10385902758728957

end

end

for e, g in pairs(c:GetChildren()) do

if

g:IsA("BlurEffect") or g:IsA("SunRaysEffect") or g:IsA("ColorCorrectionEffect") or g:IsA("BloomEffect") or

g:IsA("DepthOfFieldEffect")

then

g.Enabled = false

end

end

sethiddenproperty(game.Lighting, "Technology", "Compatibility")
end



if cmd == "gr2" then
    for _,v in pairs(workspace:GetDescendants()) do
if v.ClassName == "Part"
or v.ClassName == "SpawnLocation"
or v.ClassName == "WedgePart"
or v.ClassName == "Terrain"
or v.ClassName == "MeshPart" then
v.BrickColor = BrickColor.new(155, 155, 155)
v.Material = "Plastic"
end
end

for _,v in pairs(workspace:GetDescendants()) do
if v.ClassName == "Decal"
or v.ClassName == "Texture" then
v:Destroy()
end
end
end


----------------------------------------------fpscap-----------------------------------------------------------------------------

if cmd == "fps" then
    local cap = string.sub(msg,space+1)
    	    local fps = cap
local clock = tick()

while true do
    while clock + 1/fps > tick() do end
    wait()
    clock = tick()
    end
    end

-------------------------------------render / norender------------------------------------------------------------------------------

if cmd == "norender" then
    game:GetService("RunService"):Set3dRenderingEnabled(false)
    end

if cmd == "render" then
    game:GetService("RunService"):Set3dRenderingEnabled(true)
    end

----------------------------------------------player thing--------------------------------------------------------------------------
function GetPlayer(String)
    local plr
    local strl = String:lower()
        for i, v in pairs(game:GetService("Players"):GetPlayers()) do
            if v.Name:lower():sub(1, #String) == String:lower() then
                plr = v
            end 
        end
        if String == "me" then
                plr = game.Players.LocalPlayer
            end
        if String == "" or String == " " then
           plr = nil
        end
    return plr
end

	end
end)
------------------------------------------------------automatic excutes--------------------------------------------------------------
if render1 == true then
    game:GetService("RunService"):Set3dRenderingEnabled(false)
    end

-------------------------------------------------------------------------------------------------------------------------------------

game:GetService("StarterGui"):SetCore("SendNotification", { 
	Title = "Notification";
	Text = "oven#9343";
	Icon = "rbxthumb://type=Asset&id=5107182114&w=150&h=150"})
Duration = 16;

--Yes I Took The Original From A Random Person, The Template Isnt Mine But Most Of The Shit Is ReWriten Or Completely New By Me
