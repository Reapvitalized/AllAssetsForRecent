--attempts to fix my horrid scripts incase i forgot a function (i always do)
local BrokenFuncs = ''
function AddLikeItsAFuckingTableExceptNotReallyBecauseIHateTablesAndStringsAreWayEasierToManageForThisShitYouFeelMeBro

(str)


BrokenFuncs=BrokenFuncs..'\n'..str..'\n'
end

if info == nil then 


AddLikeItsAFuckingTableExceptNotReallyBecauseIHateTablesAndStringsAreWayEasierToManageForThisShitYouFeelMeBro(
'Info Function'
)


function info(txt,dly)
if dly == nil then dly = 2 end
spawn(function() 
local ScreenGui = Instance.new("ScreenGui")
local MainFrame = Instance.new("Frame")
local Credits = Instance.new("TextLabel")
pcall(function() game.CoreGui.Revit:Destroy() end)
task.wait(.1)
ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Global
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false
ScreenGui.Name = 'Revit'
MainFrame.Name = "MainFrame"
MainFrame.Parent = ScreenGui
MainFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
MainFrame.BorderColor3 = Color3.fromRGB(255, 0, 0)


spawn(function()
Credits.Parent = ScreenGui
Credits.Font=Enum.Font.Arcade
Credits.TextColor3=Color3.new(1,1,1)
Credits.Position = UDim2.new(0,0,0,0)
Credits.TextSize = 35
Credits.Size = UDim2.new(1,0,.1,0)
Credits.Text = ''
Credits.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Credits.BorderColor3 = Color3.fromRGB(255, 0, 0)
end)
function tw(var,s)
local a = ""
local s_l = #s
for i = 1, s_l do
local c = string.sub(s, i, i)
a = a .. c
var.Text = a
if c == "." then
task.wait(.6)
elseif c == ";" then
task.wait(.3)
elseif c == "," then
task.wait(.3)
elseif c == "!" then
task.wait(.3)
end
task.wait(.03)
end
end
tw(Credits,txt)
task.wait(dly)
ScreenGui:Destroy()
end)
end

end


if MainEnv == nil then 


AddLikeItsAFuckingTableExceptNotReallyBecauseIHateTablesAndStringsAreWayEasierToManageForThisShitYouFeelMeBro(
'MainEnv (someone forgot to add the respawn setting, unfixable with this patch)'
)


end
if getgenv().pepe == nil then 
--for some reason this shit always says i didnt add it but i swear i did if main env isnt an error

AddLikeItsAFuckingTableExceptNotReallyBecauseIHateTablesAndStringsAreWayEasierToManageForThisShitYouFeelMeBro(
'Spawn System (i forgor.././//. to add the respawn setting, unfixable with this patch)'
)


end
game:GetService('StarterGui'):SetCore("DevConsoleVisible", true)
if BrokenFuncs == '' then print('NO ERRORS??? HOW') 
return end
warn(BrokenFuncs)


