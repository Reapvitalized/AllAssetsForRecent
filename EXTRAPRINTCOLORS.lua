local module = {}
local function randomstring() local e,en={},8777 for i=1,math.random(140,180) do table.insert(e,utf8.char(math.random(en,en+1))) end return table.concat(e) end
getgenv().CONSOLE=getgenv().CONSOLE or {}
local function DestroySignals() for i,v in pairs(getgenv().CONSOLE) do if typeof(v)=="RBXScriptConnection" then v:Disconnect() end end end
local function SetupSignals() if getgenv().CONSOLE then DestroySignals() else getgenv().CONSOLE={} end end
SetupSignals()
getgenv().CONSOLE=nil
getgenv().CONSOLE={}
local function AddSignal(c) local s=randomstring() if getgenv().CONSOLE then getgenv().CONSOLE[s or tostring(#getgenv().CONSOLE+1)] = c return c end end
local dcon = game:GetService("CoreGui").DevConsoleMaster.DevConsoleWindow.DevConsoleUI

local function rgbToHex(c)
return string.format("#%02x%02x%02x",c.R*255,c.G*255,c.B*255)
end

local function recolorMessages(cl,tag,mainColor)
for _,v in pairs(cl:GetChildren()) do
if v:IsA("Frame") and v:FindFirstChild("msg") then
pcall(function()
if string.find(v.msg.Text,tag) then
v.msg.RichText = true
v.msg.Text = string.format('<font color="%s">%s</font>',rgbToHex(mainColor),v.msg.Text)
end
end)
end
end
end

local function enableRichText(cl)
AddSignal(cl.ChildAdded:Connect(function(v)
if v:IsA("Frame") and v:FindFirstChild("msg") then
v.msg.RichText = true
end
end),'RichText Enable')
for _,v in pairs(cl:GetChildren()) do
if v:IsA("Frame") and v:FindFirstChild("msg") then
pcall(function() v.msg.RichText = true end)
end
end
end

local function handleClientLog(cl,tag,mainColor)
enableRichText(cl)
task.wait(.05)
recolorMessages(cl,tag,mainColor)
AddSignal(cl.ChildAdded:Connect(function()
task.wait(.05)
recolorMessages(cl,tag,mainColor)
end),'Reapply On New')
end

AddSignal(dcon.ChildAdded:Connect(function(v)
if v.Name == "MainView" then
local cl = v:FindFirstChild("ClientLog")
if cl then handleClientLog(cl,_G._lastTag,_G._lastMainColor) end
end
end),'MainView Check')

function module.rg(t)
local msgTag = string.format('<font color="%s">%s</font>',rgbToHex(t.MainColor),t.Text)
print(msgTag)
task.defer(function()
local cl = dcon.MainView and dcon.MainView:FindFirstChild("ClientLog")
if cl then handleClientLog(cl,t.Text,t.MainColor) end
end)
return t.Text,t
end

return module.rg
