repeat wait() until game.Loaded and game.Players.LocalPlayer and game.Players.LocalPlayer.PlayerGui
if game.PlaceId ~= 3198259055 then return end
task.wait(1)
local mouse = game.Players.LocalPlayer:GetMouse()
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local lp = game.Players.LocalPlayer
task.delay(12,function()--if ur wondering wtf this is then its just so that you can hide ur details n shit
local mt = getrawmetatable(game)
local oldIndex = mt.__index
local oldRequest = request

setreadonly(mt, false)
mt.__index = newcclosure(function(self, key)
if self == lp then
if key == "UserId" then return 'AVARAGE_NAN_ENJOYER' end
if key == "CharacterAppearanceId" then return 'DEFAULT' end
if key == "DisplayName" then return "I_LOVE_STAR_GLITCHER_SO_MUCH_I_WANT_TO_BREED_WITH_MAYHEM" end
if key == "AccountAge" then return '-1' end
if key == "MembershipType" then return "1 dolar" end

end
return oldIndex(self, key)
end)
setreadonly(mt, true)

getgenv().identifyexecutor = function() return "STAR GLITCHER REVITALIZED" end
getgenv().getexecutorname = function() return "STAR GLITCHER REVITALIZED" end

end)
local notif = loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMinisterq/Notification-Library/Main/Library.lua"))()
pcall(function() getgenv().ModeSwitch:Disconnect() end)
function randomstring()
	local e = {}
	for i = 1,math.random(140,180) do
		table.insert(e,#e+1,utf8.char(math.random(1111,1112)))
	end
	return table.concat(e)
end
getgenv().connections = getgenv().connections or {}
local function DestroySignals()
    for i,v in pairs(getgenv().connections) do
        if typeof(v) == "RBXScriptConnection" then
					warn('\nDUPLICATE FOUND!\nDisconnected! '..i)
            v:Disconnect()
        end
    end
end
local function SetupSignals()
    if getgenv().connections then
        DestroySignals()
    else
        getgenv().connections = {}
    end
end
SetupSignals()
getgenv().connections = nil 
getgenv().connections = getgenv().connections or {}
local function AddSignal(connection, name)
local str = randomstring()
warn('CONNECTION ADDED! '..name..'\nUNIQUE CONNECTION ID: '..str)
notif:SendNotification("Warning", 'CONNECTION ADDED! \n ~ '..'"'..name..'"', 3)
if getgenv().connections then
getgenv().connections[name..str or #getgenv().connections + 1] = connection
return connection
end
end

local function DestroySignal(name)
if getgenv().connections then
for key, connection in pairs(connections) do
if key:match(name) == name then
warn('CONNECTION REMOVED! '..name)
getgenv().connections[key]:Disconnect()
return connection
else 
warn('NOT A VALID CONNECTION! '..name)
end end
end end
spawn(function()
while true do 
pcall(function()
for _,v in pairs(game:GetService("CoreGui").ExperienceChat.bubbleChat:GetChildren()) do

pcall(function()
    v.Enabled = false
end)

end
end)
 task.wait(4) end end)

function clientsfx(id,vol,sp)
task.spawn(function()
local v = Instance.new('Sound',workspace)
v.SoundId = id
v.Volume = vol
v:Play()
v.PlaybackSpeed = sp
task.wait(5) v:Destroy()
end)
end

local notif = loadstring(game:HttpGet("https://raw.githubusercontent.com/IceMinisterq/Notification-Library/Main/Library.lua"))()
function info(t_ype, txt,dly)
notif:SendNotification(t_ype, txt, dly)
end
makefolder('SS')
function GetFile(filename,filetype)
local result
local success, response = pcall(function()
result = readfile('SS/'..filename..filetype)
end)
if success then

else
info('Info','Downloading '..filename..filetype,7)
local filep = game:HttpGet('https://github.com/Reapvitalized/AllAssetsForRecent/raw/refs/heads/main/'..filename..filetype)
writefile('SS/'..filename..filetype,filep)
if response ~= nil then 
info('Success','Downloaded '..filename..filetype..'!',7)
else 
info('Error','URL does not exist or path is wrong.',7)
end
end
end
local path = 'SS/'
local Info = {
[1] = {
    title = "grayscale downpour",
    artist = "ivy sinthetic",
    mp3name = 'downpour',
    pngname = 'downpour'
},
[2] = {
    title = "[ Shattered ]",
    artist = "Riya 440Hz",
    mp3name = 'Shattered',
    pngname = 'Shattered'
},
[3] = {
    title = "Lucidive",
    artist = "chilldive",
    mp3name = 'Lucidive',
    pngname = 'Lucidive'
},
[4] = {
    title = "Rainy Garden",
    artist = "Astolsko",
    mp3name = 'RainyGarden',
    pngname = 'Garden'
},
[5] = {
    title = "Nightlight",
    artist = "Saruky",
    mp3name = 'Nightlight',
    pngname = 'Nightlight'
},
[6] = {
    title = "Icyxis ~True Ending~",
    artist = "Raimukun",
    mp3name = 'Icyxis',
    pngname = 'Icyxis'
},
[7] = {
    title = "Clyncye Quivale Elle Didalia Kapa, Ooizumihara [complete]",
    artist = "Emelia K.",
    mp3name = 'Clyncye',
    pngname = 'Clyncye'
},

}
for i = 1,#Info do
GetFile(Info[i].mp3name,'.mp3')
GetFile(Info[i].pngname,'.png')
end
GetFile('beneaththeveil','.mp3')
local Players = game:GetService("Players")
local lp = game.Players.LocalPlayer
local pg = lp:WaitForChild("PlayerGui",10)
local repl = game:GetService("ReplicatedStorage")
local remotes = repl:WaitForChild("Remotes",10)

function spityoshit() 
pcall(function() pg.Menu:Destroy() end)
game:GetService("Players").LocalPlayer.PlayerScripts.Music.MenuMusic:ClearAllChildren()
local CS = false
clientsfx("rbxassetid://6874964659",5,1)
local yes = game:GetService("ReplicatedStorage").UI.MainMenu:Clone() 
yes.Name = 'Menu'
yes.ResetOnSpawn = false
local Players = game:GetService("Players")
local lp = game.Players.LocalPlayer
local pg = lp:WaitForChild("PlayerGui",10)
local repl = game:GetService("ReplicatedStorage")
local remotes = repl:WaitForChild("Remotes",10)
local frame = lp:WaitForChild("PlayerScripts",10):WaitForChild("LocalScript",10):WaitForChild("CharacterSelection",10):WaitForChild("Frame",10)
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = yes
MainFrame.ZIndex = 999
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderColor3 = Color3.fromRGB(255, 255, 0)
MainFrame.Position = UDim2.new(0,0,0,0)
MainFrame.Size = UDim2.new(1,0,1,0)
game.TweenService:Create(MainFrame,TweenInfo.new(.6),{Transparency = 1}):Play()
task.delay(2,function() MainFrame:Destroy() end)
yes.Parent = pg 
yes.DisplayOrder = 2
local Config = {
["Custom"] = {
["Character1"] = {
Name = "Character1",
Value = "Betty"
},
["Character2"] = {
Name = "Character2",
Value = "Betty"
},
["Character3"] = {
Name = "Character3",
Value = "Betty"
},
["Character4"] = {
Name = "Character4",
Value = "Betty"
},


}}

function AddCharacterScript(name)

if name == 'Character1' then 
print('yaya') --run stuff here

end
end
for _, folder in pairs(frame:GetChildren()) do
if folder.Name == "Characters" then
for groupName, groupData in pairs(Config) do
local groupFolder = folder:FindFirstChild(groupName)
or Instance.new("Folder", folder)
groupFolder.Name = groupName
for entryName, entryData in pairs(groupData) do
local charSV = groupFolder:FindFirstChild("character")
or Instance.new("StringValue", groupFolder)
charSV.Name  = "Character"
charSV.Value = entryData.Name
charSV:SetAttribute("TrueValue", entryData.Value)
spawn(function() repeat wait(.2) until yes.Parent ~= pg charSV:Destroy() end)
local tv = charSV:FindFirstChild("TrueValue")
or Instance.new("StringValue", charSV)
tv.Name  = "TrueValue"
tv.Value = entryData.Value
end
end
elseif folder.Name == "Gui" then
local template = folder:FindFirstChildWhichIsA("TextButton")
for groupName, _ in pairs(Config) do
if not folder:FindFirstChild(groupName) then
local btn = template:Clone()
btn.Text = groupName
local lbl = btn:FindFirstChildWhichIsA("TextLabel")
if lbl then
lbl.Text = groupName
end
btn.Parent = folder
end
end
end
end
spawn(function()
task.wait(.5)
local sg = Instance.new('ScreenGui') sg.Parent = game.CoreGui sg.Name = 'DustHandler'
local fol = Instance.new('Folder')
fol.Parent = sg;fol.Name = 'Dust Particles'

spawn(function() repeat wait() until yes.Parent ~= pg sg:Destroy() end)
for i = 1,99999945 do if yes.Parent ~= pg then sg:Destroy()
break end

local d = Instance.new("Frame")
d.Parent = fol

spawn(function()
d.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
d.BorderColor3 = Color3.fromRGB(255, 255, 255)
d.Position = UDim2.new(math.random(0,15)/15,0,1.2,0)
d.Size = UDim2.new(.005,0,.01,0)
local t = TweenInfo.new(3, Enum.EasingStyle.Linear)
local p = UDim2.new(math.random(), 0, -0.2, 0)
local s = UDim2.new(0, math.random(5, 10), 0, math.random(5, 10))
local tt = 1
local r = math.random(90,270)
local tween = game:GetService("TweenService"):Create(d, t, {
Position = p,
Size = s,
BackgroundTransparency = tt,
Rotation = r
})
tween:Play()
task.delay(3,function()  d:Destroy() end)
end)

task.wait(.08) end
end)
spawn(function()
local csgo = pg.CharacterSelection
 repeat wait() until csgo.Parent ~= pg 
yes:Destroy() end)
local cs = yes.CharacterSelect
local au = cs.Universe
local cselect = yes.CharacterSelect
cselect.Visible = true 
local r = 0
game:GetService("Players").LocalPlayer.PlayerGui.CharacterSelection.Enabled = false
local oneuse = game:GetService("Players").LocalPlayer.PlayerGui.CharacterSelection.Frame.Characters
local lol = yes.CharacterSelect:GetChildren()[9]
--lol:SetAttribute('gay',tumblrsexyman) 
--wtfs with executors and not being able to
--set attributes??
local ButtonTemplate = lol:Clone()
lol:Destroy()
local MusicPlay
function StartMusic(t_ype)
local s = pcall(function() readfile('SS/LastMusicPlayed.lua') end) 
local s2 = pcall(function() readfile('SS/Settings.lua') end) 
if s2 == false then writefile('SS/Settings.lua','Random') end
if s == false then writefile('SS/LastMusicPlayed.lua','1') end
print(s) print(s2)
if s and s2 == true then
if tostring(readfile('SS/Settings.lua')) == 'Fixed' then 
MusicPlay = tonumber(readfile('SS/LastMusicPlayed.lua'))
print('getting from fixed file')
else 
if t_ype ~= nil then 
MusicPlay = tonumber(t_ype)
print('getting from fixed')
else
MusicPlay = math.random(1,#Info) 
print('getting from random')
end 
end 
print(MusicPlay)
writefile('SS/LastMusicPlayed.lua',tostring(MusicPlay))
end
pcall(function() game.CoreGui.ScreenGui:Destroy() end)
pcall(function() game.CoreGui.ScreenGui:Destroy() end)
pcall(function() game.CoreGui.MusicDial:Destroy() end)


print(MusicPlay)
local vr = Instance.new('ScreenGui')
vr.IgnoreGuiInset = true 
vr.Parent = game.CoreGui spawn(function()
repeat wait() until yes.Parent ~= pg 
if _G.InSpectate == true then return end
vr:Destroy() end)
local fol = Instance.new('Folder')
 fol.Name = 'MusicDial'
fol.Parent = vr

vr.Parent = nil
vr = Instance.new('ScreenGui')
vr.IgnoreGuiInset = true 
vr.Parent = game.CoreGui
local fol = Instance.new('Folder')
 fol.Name = 'MusicDial'
fol.Parent = vr
local parts = fol:GetDescendants()
for i, part in ipairs(parts) do
if part:IsA('Sound') then
part:Destroy() 
end end
print(Info[MusicPlay].mp3name)
local s= Instance.new('Sound')
s.SoundId = getcustomasset(path..Info[MusicPlay].mp3name..'.mp3')
s.Parent = fol
s.Volume = 1
s.Looped = true
s.Name = '1'
s:Play()
_G.Main = s 
local themainshit = s

local m = Instance.new("Frame")--main
m.Name = "m"
m.Parent = vr
m.ZIndex = 0
m.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
m.BorderSizePixel = 0
m.Position = UDim2.new(1.2,0,.7,0)
m.Size = UDim2.new(.12,0,.15,0)
local ver = Instance.new('UIGradient')
local mm = Instance.new("Frame")--visualizer
spawn(function()--made by reap4985 fuck off skids

mm.Name = "mm"
mm.Parent = vr
mm.ZIndex = 0
mm.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
mm.BorderSizePixel = 0
mm.Position = UDim2.new(0,0,.7,0)
mm.Size = UDim2.new(1,0,.5,0)
 ver.Parent = mm
ver.Rotation = -90
ver.Transparency = 
 NumberSequence.new{
    NumberSequenceKeypoint.new(0, .7),
    NumberSequenceKeypoint.new(1, 1),
}
ver.Color = ColorSequence.new{ColorSequenceKeypoint.new(0.00, 
Color3.fromRGB(45, 0, 0)), ColorSequenceKeypoint.new(.9,
Color3.fromRGB(0, 255, 255)),
ColorSequenceKeypoint.new(1.00,
Color3.fromRGB(255, 0, 255)

)}
end)
game.TweenService:Create(m,TweenInfo.new(2,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),{
Position = UDim2.new(-.03+.85,0,.7,0)}):Play()
local ag = game:GetService("ReplicatedStorage").UI.MainMenu.CharacterSelect.DiamondEdge:Clone() 
ag.Parent = m
local g= 0
for _,v in pairs(ag:GetChildren()) do
g=g+1 if g >= 3 then v:Destroy() end
v.Size=UDim2.new(0, 6, 0, 6)   
local old = UDim2.new(.85,0,.7,0)

local np = Instance.new("TextLabel")--title/artist/time
np.Parent = m 
np.Text = ''
np.Font = Enum.Font.Arcade
np.ZIndex = 2
np.TextSize = 15
np.Position = UDim2.new(-.9,0,.7,0)
np.Size=UDim2.new(1,0,1,0)
np.TextColor3=Color3.new(1,1,1)
np.BackgroundTransparency = 1
game.TweenService:Create(np,TweenInfo.new(2,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),
{Position = UDim2.new(0,0,.7,0)}):Play()
spawn(function()
for i = 1,999999999 do    if yes.Parent ~= pg then
game.TweenService:Create(themainshit,TweenInfo.new(2),{Volume = 0}):Play()
task.delay(2,function() themainshit:Destroy() end) fol:Destroy()

 break end
np.Text = 'Title: '..Info[MusicPlay].title..'\nArtist: '..Info[MusicPlay].artist..'\n'..string.format("%i:%02i - %i:%02i",
math.floor(s.TimePosition / 60), s.TimePosition % 60,
math.floor(s.TimeLength / 60), s.TimeLength % 60)
m.Rotation = math.sin(i/33)*3
ver.Transparency = 
 NumberSequence.new{
    NumberSequenceKeypoint.new(0, -s.PlaybackLoudness/500+.8+math.sin(i/15)/45),
    NumberSequenceKeypoint.new(1, 1),
}

mm.Size = UDim2.new(1,0,.5+s.PlaybackLoudness/(1500+math.random(-300,700)),0)
task.delay(1.7,function()
m.Position = old+UDim2.new(-.03+math.sin(i/35)/255,0,math.cos(i/66)/155,0)
end)
v.Rotation = -i*3
task.wait(.02) end end) end
local np = Instance.new("TextLabel")--nowplaying
np.Parent = m 
np.Text = 'Now Playing.. '
np.Font = Enum.Font.Arcade
np.ZIndex = 2
np.TextSize = 15
np.Position = UDim2.new(.2,0,-.6,0)
np.Size=UDim2.new(1,0,1,0)
np.TextColor3=Color3.new(1,1,1)
np.BackgroundTransparency = 1
game.TweenService:Create(np,TweenInfo.new(2,Enum.EasingStyle.Quint,Enum.EasingDirection.Out),
{Position = UDim2.new(-.2,0,-.6,0)}):Play()


local img = Instance.new("ImageLabel")
img.Name = "img"
img.Parent = m
img.Size = UDim2.new(1,0,1,0)
img.Transparency = 1
img.Image = getcustomasset(path..Info[MusicPlay].pngname..'.png')

local cr = Instance.new("UICorner")
cr.Parent = img


local j = yes.CharacterSelect.Back.Button
j.Text = 'Music'
j.MouseEnter:connect(function()
j.TextColor3=Color3.new(1,1,0)
clientsfx("rbxassetid://5361201812",8,1.3)
end)
j.MouseLeave:connect(function()
j.TextColor3=Color3.new(1,1,1)
end)

local ye3 = ButtonTemplate:Clone()
ye3.Parent = yes
ye3.Button.Text = 'S\n\np\n\ne\n\nc\n\nt\n\na\n\nt\n\ne'
ye3.Position = ye3.Position+UDim2.new(.95,0,-.3,0)
ye3.Size=UDim2.new(.05,0,.5,0)
ye3.Button.TextSize = 25
ye3.Button.TextScaled = false
ye3.Button.MouseEnter:connect(function()
ye3.Button.TextColor3=Color3.new(1,1,0)
clientsfx("rbxassetid://5361201812",.7,1)
end)
ye3.Button.MouseLeave:connect(function()
ye3.Button.TextColor3=Color3.new(1,1,1)
end)
_G.InSpectate = false 
local lig = game:GetService('Lighting')
ye3.Button.MouseButton1Click:Connect(function()
if _G.InSpectate == true then return end 
_G.InSpectate = true
clientsfx("rbxassetid://5361201812",5,2)
clientsfx("rbxassetid://5670209472",4,1)
local vr = Instance.new('ScreenGui') spawn(function() repeat wait() until _G.InSpectate == false vr:Destroy() end)
vr.IgnoreGuiInset = true 
vr.Parent = game.CoreGui
local m = Instance.new("Frame")
m.Name = "m"
m.Parent = vr
m.ZIndex = 9999
m.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
m.BorderColor3 = Color3.fromRGB(255, 255, 0)
m.Position = UDim2.new(0,0,0,0)
m.Size = UDim2.new(1,0,1,0)
m.Transparency = 1
game.TweenService:Create(m,TweenInfo.new(1),{Transparency = 0}):Play()
task.wait(1)
yes.Enabled = false
lig.FogStart = 5;lig.FogEnd = 455
lig.FogColor = Color3.fromRGB(55,0,55)
pcall(function() lig.Atmosphere.Parent = workspace end)
pcall(function() game.Players.LocalPlayer.PlayerGui.CharacterSelection.Enabled = false end)
game.TweenService:Create(m,TweenInfo.new(1),{Transparency = 1}):Play()
local np = Instance.new("TextLabel")--nowplaying
np.Parent = vr
np.Text = 'Spectating: user'
np.Font = Enum.Font.Arcade
np.ZIndex = 2
np.TextSize = 15
np.Position = UDim2.new(.25,0,-.2,0)
np.Size= UDim2.new(.5,0,.5,0)
np.TextColor3=Color3.new(1,1,1)
np.BackgroundTransparency = 1
local cam = workspace.CurrentCamera
local m = lp:GetMouse();local key
local function spectate(num,tab)
    if #tab > 0 then

cam.CameraType = 'Custom';cam.CameraSubject = tab[num]
 np.Text = tab[num].Parent.Name..'\n'..'(F to Unspectate) (Q/E to change spectate.)'
lp.Character = tab[num].Parent
 else 
     np.Text = 'No Players Available'..'\n'..'(F to Unspectate)'
     end
end

local function getchars()
    local tab ={}
for _,v in pairs(game.Players:GetChildren()) do 
   if v.Character and v.Character:FindFirstChild('Humanoid') and v ~= lp then
    table.insert(tab,v.Character.Humanoid)
    v.Character.Humanoid.DisplayDistanceType = Enum.HumanoidDisplayDistanceType.None
    end
end
    return tab
end
spectate(1,getchars())
local i = 1
local mouse = game.Players.LocalPlayer:GetMouse()
AddSignal(
mouse.KeyDown:Connect(function(k) 
if k == "e" then
if _G.InSpectate == false then return end 
i=i+1
local tab = getchars();local cap = #tab 
if i > cap then i = 1 end
spectate(i,getchars())

end end),'Move Spectate Forward')
AddSignal(
mouse.KeyDown:Connect(function(k) 
if k == "q" then
i=i+-1
if _G.InSpectate == false then return end 
local tab = getchars();local cap = #tab 
if i == 0 then i = cap end
spectate(i,getchars())

end end),'Move Spectate Back')
AddSignal(
mouse.KeyDown:Connect(function(k) 
if k == "f" then
if _G.InSpectate == false then return end 
task.delay(1,function() workspace.Atmosphere.Parent = lig end)
vr:Destroy()
lp.Character = nil
local vr = Instance.new('ScreenGui')
vr.IgnoreGuiInset = true 
vr.Parent = game.CoreGui
local m = Instance.new("Frame")
m.Name = "m"
m.Parent = vr
m.ZIndex = 9999
m.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
m.BorderColor3 = Color3.fromRGB(255, 255, 0)
m.Position = UDim2.new(0,0,0,0)
m.Size = UDim2.new(1,0,1,0)
m.Transparency = 1
game.TweenService:Create(m,TweenInfo.new(1),{Transparency = 0}):Play()
task.wait(1)
_G.InSpectate = false
workspace.CurrentCamera.CameraType = 'Scriptable'
workspace.CurrentCamera.CFrame = CFrame.new(0,10^10,0)

workspace.CurrentCamera.CameraSubject = nil
yes.Enabled = true
game.TweenService:Create(m,TweenInfo.new(1),{Transparency = 1}):Play()

end end),'Exit Spectate')
task.wait(.5)
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
end)
local style = 'Random'
local ye3 = ButtonTemplate:Clone()
ye3.Parent = yes
local s = pcall(function()
readfile('SS/settings.lua')
end)
if s == true  then 
ye3.Button.Text = 'Music Order: '..tostring(readfile('SS/settings.lua'))
style = tostring(readfile('SS/settings.lua'))
else
ye3.Button.Text = 'Music Order: '..style
end
ye3.Position = ye3.Position+UDim2.new(.5,0,0,0)
ye3.Button.MouseEnter:connect(function()
ye3.Button.TextColor3=Color3.new(1,1,0)
clientsfx("rbxassetid://5361201812",.7,1)
end)
ye3.Button.MouseLeave:connect(function()
ye3.Button.TextColor3=Color3.new(1,1,1)
end)

ye3.Button.MouseButton1Click:Connect(function()
clientsfx("rbxassetid://5361201812",2,2)
clientsfx("rbxassetid://5670209472",1,1)
if style == 'Random' then style = 'Fixed'
else style = 'Random' end 
ye3.Button.Text = 'Music Order: '..style

writefile('SS/settings.lua',style)

end)

local ye3 = ButtonTemplate:Clone()
ye3.Parent = yes
ye3.Button.Text = 'Rejoin'
ye3.Position = ye3.Position
ye3.Button.MouseEnter:connect(function()
ye3.Button.TextColor3=Color3.new(1,1,0)
clientsfx("rbxassetid://5361201812",.7,1)
end)
ye3.Button.MouseLeave:connect(function()
ye3.Button.TextColor3=Color3.new(1,1,1)
end)

ye3.Button.MouseButton1Click:Connect(function()
clientsfx("rbxassetid://5361201812",5,2)
clientsfx("rbxassetid://5670209472",4,1)
game:GetService('TeleportService'):Teleport(game.PlaceId, lp)
end)
local alr = false
local gay = false 
local db = false 
local ges = false 
j.MouseButton1Click:Connect(function()
if db == true then return end 
db = true 
clientsfx("rbxassetid://5361201812",5,2)
clientsfx("rbxassetid://5670209472",4,1)
local ye = ButtonTemplate:Clone()
ye.Parent = yes
ye.Button.Text = Info[MusicPlay].title..' By '..Info[MusicPlay].artist

ye.Button.MouseEnter:connect(function()
ye.Button.TextColor3=Color3.new(1,1,0)
clientsfx("rbxassetid://5361201812",.7,1)
ye.Button.Text = 'Switch Music?'
end)
ye.Button.MouseLeave:connect(function()
ye.Button.TextColor3=Color3.new(1,1,1)
ye.Button.Text = Info[MusicPlay].title..' By '..Info[MusicPlay].artist
end)

ye.Button.MouseButton1Click:Connect(function()
clientsfx("rbxassetid://5361201812",5,2)
clientsfx("rbxassetid://5670209472",4,1)
ye.Button.Text = 'Refreshing..'
StartMusic()
end)
game.TweenService:Create(ye3,TweenInfo.new(1,Enum.EasingStyle.Quad,Enum.EasingDirection.Out),
{Position = ye3.Position+UDim2.new(0,0,-.08,0)}):Play()
local ye2 = ButtonTemplate:Clone()
ye2.Parent = yes
ye2.Button.Text = 'Select Music'
ye2.Position = ye2.Position+UDim2.new(.25,0,0,0)
ye2.Button.MouseEnter:connect(function()
ye2.Button.TextColor3=Color3.new(1,1,0)
clientsfx("rbxassetid://5361201812",.7,1)
end)
ye2.Button.MouseLeave:connect(function()
ye2.Button.TextColor3=Color3.new(1,1,1)
end)

ye2.Button.MouseButton1Click:Connect(function()
clientsfx("rbxassetid://5361201812",5,2)
clientsfx("rbxassetid://5670209472",4,1)
pcall(function()
yes.Music_Select:Destroy() 
end)
local fol = Instance.new('Folder')
fol.Parent = yes fol.Name = 'Music_Select'
local ah = 0
for i = 1,#Info do
ah += 1
local old = ah
local g2 = ButtonTemplate:Clone()
g2.Parent = fol
g2.Name = Info[i].title
g2.Position = UDim2.new(-.3, 0, .85+-ah/#Info/7, 0)
g2.Size=UDim2.new(.19,0,.04-#Info/355,0)
g2.Button.Text = Info[i].title
game.TweenService:Create(g2,TweenInfo.new(.4,Enum.EasingStyle.Quint,
Enum.EasingDirection.Out),{Position = UDim2.new(.01, 0, .85+-ah/#Info/7, 0)}):Play()

g2.Button.MouseEnter:connect(function()
g2.Button.TextColor3=Color3.new(1,1,0)
clientsfx("rbxassetid://5361201812",.7,1)

end)
g2.Button.MouseLeave:connect(function()
g2.Button.TextColor3=Color3.new(1,1,1)
end)

g2.Button.MouseButton1Click:connect(function()
StartMusic(i)
end)
local ag = cselect.DiamondEdge:Clone() 
ag.Parent = g2
local g = 0

for _,v in pairs(ag:GetChildren()) do
g=g+1 if g >= 3 then v:Destroy() end
v.Size=UDim2.new(0, 6, 0, 6)  

spawn(function()
for i = 1,999999999999999 do  
if yes.Parent ~= pg then break end 
v.Rotation = -i*3
task.wait(.02) end end)
end

end end)
end)

end
StartMusic()
local Credits2 = Instance.new("TextLabel")
local Credits = Instance.new("TextLabel")
local hi = Instance.new("TextLabel")
local FR = Instance.new("Frame")
local UG2 = Instance.new('UIGradient')
local FR2 = Instance.new("Frame")
local UG3 = Instance.new('UIGradient')
local UG = Instance.new('UIGradient')



Credits.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Credits.BorderColor3 = Color3.fromRGB(255, 0, 0)
Credits.Parent = yes
Credits.Font=Enum.Font.Arcade
Credits.TextColor3=Color3.new(1,1,1)
Credits.Position = UDim2.new(.3,0,.1,0)
Credits.TextScaled = true
Credits.BackgroundTransparency = 1
Credits.Size = UDim2.new(.4,0,.03,0)
Credits.Text = 'Soulshatters'
Credits.TextStrokeTransparency = .8
Credits.TextStrokeColor3=Color3.new(1,1,1)
Credits.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Credits.BorderColor3 = Color3.fromRGB(255, 0, 0)
Credits.Name = 'Main Title'

FR.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FR.BorderColor3 = Color3.fromRGB(155, 155, 155)
FR.Parent = Credits
FR.Size = UDim2.new(1,0,.01,0)
local ag = cselect.DiamondEdge:Clone() 
ag.Parent = FR
local g = 0

for _,v in pairs(ag:GetChildren()) do
g=g+1 if g >= 2 then v:Destroy() end
v.Size=UDim2.new(0, 6, 0, 6)  

spawn(function()
for i = 1,999999999999 do  
if yes.Parent ~= pg then break end 
v.Rotation = -i*3
task.wait(.02) end end)
end
local ag = cselect.DiamondEdge:Clone() 
ag.Parent = FR2
local g = 0
for _,v in pairs(ag:GetChildren()) do
g=g+1 if g <= 3 then v:Destroy() end
v.Size=UDim2.new(0, 6, 0, 6)  
spawn(function()
for i = 1,999999999999 do  
if yes.Parent ~= pg then break end 
v.Rotation = i*3
task.wait(.02) end end)
end



FR2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
FR2.BorderColor3 = Color3.fromRGB(155, 155, 155)
FR2.Parent = Credits
FR.Position = UDim2.new(0,0,1,0)
FR2.Size = UDim2.new(1,0,.001,0)

spawn(function()
task.wait(.2)
UG2.Parent = FR
UG3.Parent = FR2
for i = 1,999999999999 do  
if yes.Parent ~= pg then break end 
cselect.TextLabel.TextTransparency = .6-_G.Main.PlaybackLoudness/500
UG2.Transparency = 
 NumberSequence.new{
    NumberSequenceKeypoint.new(0.00, 1.00),
    NumberSequenceKeypoint.new(0.4+math.sin(i/15)/15, 0),
    NumberSequenceKeypoint.new(0.5, 0),
    NumberSequenceKeypoint.new(0.6+math.cos(i/15)/15, 0),
    NumberSequenceKeypoint.new(1, 1),
}

UG3.Transparency = NumberSequence.new{
    NumberSequenceKeypoint.new(0.00, 1.00),
    NumberSequenceKeypoint.new(0.5, 0),
    NumberSequenceKeypoint.new(1, 1),
}
task.wait(.02) end end)


game.TweenService:Create(Credits2,TweenInfo.new(1),
{Position = UDim2.new(.7,0,0,0)}):Play()
UG.Transparency = NumberSequence.new{NumberSequenceKeypoint.new(0.00, 0.2),
 NumberSequenceKeypoint.new(0, 0),
  NumberSequenceKeypoint.new(0.18, 0),
  NumberSequenceKeypoint.new(0.44, 0.05), 
  NumberSequenceKeypoint.new(0.60, 0.1),
   NumberSequenceKeypoint.new(0.74, 0.12), 
   NumberSequenceKeypoint.new(0.81, 0.13), 
   NumberSequenceKeypoint.new(0.87, 0.15),
    NumberSequenceKeypoint.new(0.90, 0.25), 
    NumberSequenceKeypoint.new(0.95, .33), 
    NumberSequenceKeypoint.new(1.00, 1)}
UG.Parent = Credits
local vr = Instance.new('Folder') vr.Name = 'Character Select' vr.Parent = cselect
local a = ''
for _,v in pairs(frame.Characters:GetChildren()) do
if v:IsA('Folder') and v.Name ~= 'Hade' and v.Name ~= 'Random' then r=r+1
local g = ButtonTemplate:Clone()
local attri = Instance.new('NumberValue') 
attri.Parent = g attri.Name = "Attribute As A Number Value Because \nExecutors Can't Fucking Support\n SetAttribute()"
attri.Value = r
if r >= 5 then 
g.Parent = vr
g.Position = UDim2.new(-1.23+r/4, 0, 0.6, 0)
g.Button.Text = v.Name
g.Name = v.Name
else 
g.Parent = vr
g.Position = UDim2.new(-.23+r/4, 0, 0.19, 0)
g.Button.Text = v.Name
g.Name = v.Name
end
local ptext = g.Button.Text
g.MouseEnter:connect(function()
g.Button.TextColor3=Color3.new(1,1,0)
clientsfx("rbxassetid://5361201812",8,1.3)
g.Button.Text = '> '..ptext..'  '
end)
g.MouseLeave:connect(function()
g.Button.TextColor3=Color3.new(1,1,1)
g.Button.Text = ptext
end)

local alr = false
local gay = false 
local db = false 
g.Button.MouseButton1Click:Connect(function()
 if db == true then return end
clientsfx("rbxassetid://5361201812",5,2)
clientsfx("rbxassetid://5670209472",4,1)
local tumblrsexyman = 0
for _,v in pairs(g:GetDescendants()) do
if v.Name:match("S_") then 
if alr == true then 
db = true
local yes = g:FindFirstChildWhichIsA('NumberValue').Value
spawn(function()
spawn(function()
for i = 1,2 do 
clientsfx("rbxassetid://5670209472",4,1.4)
task.wait(.04) 
clientsfx("rbxassetid://5670209472",4,1.4)
task.wait(.04) 
end
task.wait(.1)
clientsfx("rbxassetid://5670209472",4,.8)
end)
local old = v.Position
for i = 1,5+math.random(1,15)/25 do 
v.Position = UDim2.new(15,0,0,0)
task.wait(.2-i/9) 
v.Position = old
task.wait(.2-i/9) 
end 
v:Destroy()
task.wait(.2)
db = false 
pcall(function() g.S_FRAME:Destroy() end)
end)

gay = true 
else 

v:Destroy()  end
end end
if gay == true then task.delay(.1,function() gay = false  end) return end
local oneuse = frame.Characters
local Scroll = Instance.new("ScrollingFrame")
Scroll.Parent = g
Scroll.Active = true
Scroll.Name = 'S_FRAME'
Scroll.AutomaticCanvasSize = 'Y'
Scroll.ScrollingDirection = 'Y'
Scroll.ScrollBarThickness = 3 
Scroll.ScrollBarImageColor3=Color3.new(.3,0,.3)
Scroll.BackgroundTransparency = 1
Scroll.Position = UDim2.new(0, 0, 1, 0)
Scroll.Size = UDim2.new(1,0,5,0)
local rnd = math.random(0,2)
local pos
if rnd == 0 then 
pos = UDim2.new(3, 0, tumblrsexyman/5, 0)
elseif rnd == 1 then 
pos = UDim2.new(-3, 0, tumblrsexyman/5, 0)
else
pos = UDim2.new(0, 0, 0, 0)
end
for _,v in pairs(oneuse[v.Name]:GetDescendants()) do
if v.Name == 'TrueValue' then  tumblrsexyman += 1
Scroll.CanvasSize = UDim2.new(1, 0, tumblrsexyman, 0)
spawn(function()
local g2 = ButtonTemplate:Clone()
g2.Parent = Scroll
g2.Name = v.Parent.Value
g2.Size=UDim2.new(.9,0,.15,0)
g2.Button.Text = v.Parent.Value
g2.Position = pos
game.TweenService:Create(g2,TweenInfo.new(.4,Enum.EasingStyle.Quint,
Enum.EasingDirection.Out),{Position = UDim2.new(0.0275, 0, tumblrsexyman/5, 0)}):Play()
clientsfx("rbxassetid://5670209472",8,1)
local ptext = g2.Button.Text
g2.MouseEnter:connect(function()
g2.Button.TextColor3=Color3.new(1,1,0)
clientsfx("rbxassetid://5361201812",8,1.6)
g2.Button.Text = '> '..ptext..'  '
end)
g2.MouseLeave:connect(function()
g2.Button.TextColor3=Color3.new(1,1,1)
g2.Button.Text = ptext
end)
g2.Button.MouseButton1Click:Connect(function()
spawn(function()
gay = true 
local old = g2.Position
for i = 1,2 do 
g2.Position = UDim2.new(15,0,0,0)
task.wait(.1) 
g2.Position = old
g2.Button.TextColor3=Color3.new(1,1,0)
task.wait(.1) 
end 
g2:Destroy()
gay = false
end)
game.Players.LocalPlayer.PlayerGui.CharacterSelection.Character.Value = v.Value
if v.Value == 'Betty' then
spawn(function()
local ch
spawn(function()

local ye = game.Players.LocalPlayer.ChildAdded:Connect(function(pp)

pcall(function()
pp:FindFirstChildWhichIsA('Sound',2).SoundId = getcustomasset('SS/beneaththeveil.mp3')
end)
 end)
task.wait(2)
repeat wait() until ch.Parent ~= workspace.Live ye:Disconnect()

end)


game.Players.LocalPlayer:WaitForChild('StarterPlaylist',15)
ch = game.Players.LocalPlayer.Character
game.Players.LocalPlayer.StarterPlaylist:FindFirstChildWhichIsA('Sound').SoundId = getcustomasset('SS/beneaththeveil.mp3')
end) end
local vr = Instance.new('ScreenGui')
vr.IgnoreGuiInset = true 
vr.Parent = game.CoreGui
local MainFrame = Instance.new("Frame")
MainFrame.Name = "MainFrame"
MainFrame.Parent = vr
MainFrame.ZIndex = 999
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderColor3 = Color3.fromRGB(255, 255, 0)
MainFrame.Position = UDim2.new(0,0,0,0)
MainFrame.Size = UDim2.new(1,0,1,0)
MainFrame.Transparency = 0
clientsfx("rbxassetid://4683811243",8,1)
task.wait(.15)
MainFrame.Transparency = 1
task.wait(.15)
MainFrame.Transparency = 0
clientsfx("rbxassetid://4683811243",8,1)
task.wait(.1)
MainFrame.Transparency = 1
task.wait(.1)
MainFrame.Transparency = 0
clientsfx("rbxassetid://4683811532",8,1)
task.wait(.2)
MainFrame.Transparency = 0
spawn(function()
game.TweenService:Create(MainFrame,TweenInfo.new(1),{Transparency = 0}):Play()
task.wait(1)
game.TweenService:Create(MainFrame,TweenInfo.new(2),{Transparency = 1}):Play()
task.delay(2,function() MainFrame:Destroy() vr:Destroy() end)
end)
if v.Parent.Parent.Name == 'Custom' then 
local sd = v.Parent.Value
task.delay(.5,function() AddCharacterScript(sd) end)
end

yes:Destroy()
game.StarterGui:SetCoreGuiEnabled(Enum.CoreGuiType.Chat, true)
end)
spawn(function()
task.wait(.4)
local rnd = math.random(45,75)
local rnd2 = math.random(99,122)

local e = g2.Position 
for i = 1,88888888888 do 
if yes.Parent ~= pg or gay == true then break end 
g2.Position = e+UDim2.new(math.sin(i/rnd)/77,0,math.cos(i/rnd2)/77,0)
task.wait(.02) end end)
local ag = cselect.DiamondEdge:Clone() 
ag.Parent = g2
local g = 0
for _,v in pairs(ag:GetChildren()) do
g=g+1 if g >= 3 then v:Destroy() end
v.Size=UDim2.new(0, 6, 0, 6) 


end end)
 task.wait(.06) end 

end 
alr = true 
end)
a=a..v.Name..', ' end end 

au.Text = 'AUs: '..string.sub(a, 1, -3)..'.'
end
local egg = pg.ChildAdded:Connect(function(pp)
if pp.Name == 'CharacterSelection' then
if _G.InSpectate == true then print('nah uh') return end
spityoshit()
end end)
if pg:FindFirstChild('CharacterSelection') then 
spityoshit() end





