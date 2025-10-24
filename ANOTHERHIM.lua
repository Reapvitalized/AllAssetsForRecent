
local lp = game.Players.LocalPlayer
local char = lp.Character
local hrp = char.HumanoidRootPart

function Grab(user)
local args = {
	{
		Function = "Skill Replication",
		SkillToReplicate = "Twin Fangs",
		User = game:GetService("Players").LocalPlayer.Character,
		Part = "Hit",
		HitTarget = user,
		TimePosition = 15
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ServerClientCommunication"):FireServer(unpack(args))

task.wait(.4)
local args = {
	{
		Function = "Skill Replication",
		SkillToReplicate = "Twin Fangs",
		User = game:GetService("Players").LocalPlayer.Character,
		Part = "End",
		HitTarget = user
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ServerClientCommunication"):FireServer(unpack(args))
end
function Dmg(user)
local args = {
	{
		Function = "Skill Replication",
		SkillToReplicate = "Twin Fangs",
		User = game:GetService("Players").LocalPlayer.Character,
		Part = "Hit",
		HitTarget = user,
		TimePosition = 15
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ServerClientCommunication"):FireServer(unpack(args))

local args = {
	{
		Function = "Skill Replication",
		SkillToReplicate = "Twin Fangs",
		User = game:GetService("Players").LocalPlayer.Character,
		Part = "End",
		HitTarget = user
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ServerClientCommunication"):FireServer(unpack(args))
end

function Kill(user)
local args = {
    {
        Function = "Skill Replication",
        Camera = false,
        SkillToReplicate = "AtomicSlash",
        User = game:GetService("Players").LocalPlayer.Character,
        Part = "Hit",
        HitTarget = user
    }
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ServerClientCommunication"):FireServer(unpack(args))
end

function randomstring()
	local e = {}
	for i = 1,math.random(140,180) do
		table.insert(e,#e+1,utf8.char(math.random(1111,1112)))
	end
	return table.concat(e)
end
getgenv().uiconnections = getgenv().uiconnections or {}
local function DestroySignals()
    for i,v in pairs(getgenv().uiconnections) do
        if typeof(v) == "RBXScriptConnection" then
					warn('\nDUPLICATE FOUND!\nDisconnected! '..i)
            v:Disconnect()
        end
    end
end
local function SetupSignals()
    if getgenv().uiconnections then
        DestroySignals()
    else
        getgenv().uiconnections = {}
    end
end
SetupSignals()
getgenv().uiconnections = nil 
getgenv().uiconnections = getgenv().uiconnections or {}
local function AddSignal(connection, name)
local str = randomstring()
warn('CONNECTION ADDED! '..name..'\nUNIQUE CONNECTION ID: '..str)

if getgenv().uiconnections then
getgenv().uiconnections[name..str or #getgenv().uiconnections + 1] = connection
return connection
end
end
local mouse = game.Players.LocalPlayer:GetMouse()
    AddSignal(
mouse.KeyDown:Connect(function(k)
    if k == "z" then
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://127852147362591"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play(.3)
k.Priority = Enum.AnimationPriority.Action2
k:AdjustSpeed(1)

task.delay(.6,function()
local Anim = Instance.new("Animation")
Anim.AnimationId = "rbxassetid://112494861599100"
local k = game.Players.LocalPlayer.Character.Humanoid:LoadAnimation(Anim)
k:Play(.3)
k.Priority = Enum.AnimationPriority.Action3
k:AdjustSpeed(1)
k.TimePosition = 2.7
task.wait(1.2)
k:Stop(.4)
end)

local args = {
	{
		Function = "Skill Replication",
		SkillToReplicate = "Earth Splitting Strike",
		User = game:GetService("Players").LocalPlayer.Character,
		Part = "ReplicateVFX",
		Run = true
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ServerClientCommunication"):FireServer(unpack(args))

local args = {
	{
		Function = "Skill Replication",
		SkillToReplicate = "Earth Splitting Strike",
		User = game:GetService("Players").LocalPlayer.Character,
		Part = "ReplicateVFX",
		Run = false
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ServerClientCommunication"):FireServer(unpack(args))

task.wait(.4)
local args = {
	{
		Function = "Skill Replication",
		SkillToReplicate = "Earth Splitting Strike",
		User = game:GetService("Players").LocalPlayer.Character,
		Part = "ReplicateVFX",
		Run = false
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ServerClientCommunication"):FireServer(unpack(args))

task.wait(.5) local r = 0
for i = 1,15 do r=r+.5
local gay = hrp.CFrame*CFrame.new(0,-10.1,0)
        *CFrame.Angles(0,math.rad(180)+i/2,0)*CFrame.new(15+i,0,0)
for _,rv in pairs(game.Players:GetChildren()) do 
    local v = rv.Character
local tor = v:FindFirstChild('Torso');local hum = v:FindFirstChildOfClass('Humanoid')
if tor and hum and v ~= char then 
if (tor.Position - gay.p).magnitude <= 35 then
Kill(v)
end end end
        local args = {
	{
		Function = "Skill Replication",
		SkillToReplicate = "Earth Splitting Strike",
		User = game:GetService("Players").LocalPlayer.Character,
		Part = "Shockwave",
		shockwave = hrp.CFrame*CFrame.new(0,-10.1,0)
        *CFrame.Angles(0,i/2,0)*CFrame.new(15+i,0,0)
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ServerClientCommunication"):FireServer(unpack(args))
   
           local args = {
	{
		Function = "Skill Replication",
		SkillToReplicate = "Earth Splitting Strike",
		User = game:GetService("Players").LocalPlayer.Character,
		Part = "Shockwave",
		shockwave = hrp.CFrame*CFrame.new(0,-10.1,0)
        *CFrame.Angles(0,math.rad(180)+i/2,0)*CFrame.new(15+i,0,0)
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ServerClientCommunication"):FireServer(unpack(args))
   

           local args = {
	{
		Function = "Skill Replication",
		SkillToReplicate = "Earth Splitting Strike",
		User = game:GetService("Players").LocalPlayer.Character,
		Part = "Shockwave",
		shockwave = hrp.CFrame*
        CFrame.new(
        math.random(-88,88),
        math.random(-3,88),
        math.random(-88,88))
        *CFrame.Angles(i,i/2,i*3)
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ServerClientCommunication"):FireServer(unpack(args))
   

      if r == 2 then 
          r = 0
          
           local args = {
	{
		Function = "Skill Replication",
		SkillToReplicate = "Earth Splitting Strike",
		User = game:GetService("Players").LocalPlayer.Character,
		Part = "Shockwave",
		shockwave = char['Right Leg'].CFrame*CFrame.new(0,-i*8,0)
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ServerClientCommunication"):FireServer(unpack(args))
   
      end
        local args = {
	{
		Function = "Skill Replication",
		SkillToReplicate = "Earth Splitting Strike",
		User = game:GetService("Players").LocalPlayer.Character,
		Part = "Shockwave",
		shockwave = hrp.CFrame*CFrame.new(0,5,-i*9)
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ServerClientCommunication"):FireServer(unpack(args))
        local args = {
	{
		Function = "Skill Replication",
		SkillToReplicate = "Earth Splitting Strike",
		User = game:GetService("Players").LocalPlayer.Character,
		Part = "Shockwave",
		shockwave = hrp.CFrame*CFrame.new(0,2,-i*9)*CFrame.Angles(math.rad(180),0,0)
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ServerClientCommunication"):FireServer(unpack(args))


        local args = {
	{
		Function = "Skill Replication",
		SkillToReplicate = "Earth Splitting Strike",
		User = game:GetService("Players").LocalPlayer.Character,
		Part = "Shockwave",
		shockwave = hrp.CFrame*CFrame.new(math.sin(i/5)*45,2,-i*9)*CFrame.Angles(math.rad(180),0,0)
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ServerClientCommunication"):FireServer(unpack(args))

        local args = {
	{
		Function = "Skill Replication",
		SkillToReplicate = "Earth Splitting Strike",
		User = game:GetService("Players").LocalPlayer.Character,
		Part = "Shockwave",
		shockwave = hrp.CFrame*CFrame.new(-math.sin(i/5)*45,2,-i*9)*CFrame.Angles(math.rad(180),0,0)
	}
}
game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("ServerClientCommunication"):FireServer(unpack(args))

task.wait(.02)
 end

end end), 'KEY MASTER')
