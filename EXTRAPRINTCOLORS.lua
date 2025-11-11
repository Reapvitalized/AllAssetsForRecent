task.spawn(function()
    task.wait(.03)
    if game:GetService("StarterGui"):GetCore("DevConsoleVisible") ~= true then
game:GetService("StarterGui"):SetCore("DevConsoleVisible", true)
task.wait()
game:GetService("StarterGui"):SetCore("DevConsoleVisible", false)
end
  end)
local module={}

getgenv().CONSOLE=getgenv().CONSOLE or{}
for i,v in pairs(getgenv().CONSOLE)do if typeof(v)=="RBXScriptConnection"then v:Disconnect()end end
getgenv().CONSOLE={}

local function AddSignal(c)local k=tostring(math.random())getgenv().CONSOLE[k]=c return c end
local CoreGui=game:GetService("CoreGui")
local DevConsole=CoreGui:WaitForChild("DevConsoleMaster")

local function rgbToHex(c)return string.format("#%02x%02x%02x",c.R*255,c.G*255,c.B*255)end
local StoredMessages={}
local function tryColor(v)
for _,d in ipairs(StoredMessages)do
if v:IsA("Frame")and v:FindFirstChild("msg")then
local m=v.msg
if string.find(m.Text,d.Tag)then
m.RichText=true
m.Text=string.format('<font color="%s">%s</font>',rgbToHex(d.Color),m.Text)
break
end
end
end
end

local function hookClientLog(cl)
for _,v in ipairs(cl:GetChildren())do tryColor(v)end
AddSignal(cl.ChildAdded:Connect(tryColor))
end

local function hookUI(ui)
AddSignal(ui.ChildAdded:Connect(function(v)
if v.Name=="MainView"then
local cl=v:WaitForChild("ClientLog")
hookClientLog(cl)
end
end))
local mv=ui:FindFirstChild("MainView")
if mv and mv:FindFirstChild("ClientLog")then hookClientLog(mv.ClientLog)end
end

local function hookConsole()
local dcon=DevConsole:FindFirstChild("DevConsoleWindow")
if not dcon then return end
local ui=dcon:FindFirstChild("DevConsoleUI")
if not ui then return end
hookUI(ui)
AddSignal(ui.AncestryChanged:Connect(function(_,p)
if not p then
task.defer(function()
local new=DevConsole:FindFirstChild("DevConsoleWindow")
if new and new:FindFirstChild("DevConsoleUI")then hookUI(new.DevConsoleUI)end
end)
end
end))
end

AddSignal(DevConsole.ChildAdded:Connect(function(v)
if v.Name=="DevConsoleWindow"then task.wait(.3) hookConsole()end
end))
hookConsole()

function module.rg(t)
local color=t.MainColor or Color3.new(1,1,1)
local tag=t.Text
print(string.format('<font color="%s">%s</font>',rgbToHex(color),tag))
table.insert(StoredMessages,{Tag=tag,Color=color})
task.defer(function()
local dcon=DevConsole:FindFirstChild("DevConsoleWindow")
local ui=dcon and dcon:FindFirstChild("DevConsoleUI")
local cl=ui and ui:FindFirstChild("MainView")and ui.MainView:FindFirstChild("ClientLog")
if cl then hookClientLog(cl)end
end)
return tag,t
end


return module.rg
