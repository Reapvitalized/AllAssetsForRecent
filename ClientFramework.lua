--!strict
-- // Services
local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")
local UserInputService = game:GetService("UserInputService")
local GuiService = game:GetService("GuiService")
local TweenService = game:GetService("TweenService")

-- // Imports
local CameraShaker = require(ReplicatedStorage.Modules.CameraShaker)
local SharedFramework = require(script.Parent:WaitForChild("SharedFramework"))

-- // Variables
local Resources = ReplicatedStorage.Resources
local Effects = Resources.Effects

local Logger = SharedFramework.CreateLogger()

local LocalPlayer = Players.LocalPlayer
local CurrentCamera = workspace.CurrentCamera
local Live = workspace.Live

local GuiInset: Vector2 = select(2, GuiService:GetGuiInset())

local CamShaker = CameraShaker.new(Enum.RenderPriority.Camera.Value + 1, function(ShakeCFrame: CFrame)
	CurrentCamera.CFrame *= ShakeCFrame
end)
CamShaker:Start()

-- // Exports
local ClientFramework = setmetatable({}, {
	__index = SharedFramework
})

function ClientFramework.Shake(Preset: string, Position: Vector3?, Distance: number?)
	local PlayerData = LocalPlayer:FindFirstChild("PlayerData")
	local CameraShakeValue = PlayerData and PlayerData:FindFirstChild("CameraShake"):: BoolValue
	if CameraShakeValue and not CameraShakeValue.Value then
		return
	end
	
	if Position and Distance then
		local Character = LocalPlayer.Character
		if not Character then
			return
		end
		
		local HumanoidRootPart = Character:FindFirstChild("HumanoidRootPart"):: Part
		if not HumanoidRootPart or (HumanoidRootPart.Position - Position).Magnitude >= Distance then
			return
		end
	end
	
	CamShaker:Shake(CameraShaker.Presets[Preset])
end

local EffectCache: {[string]: (...any) -> ...any} = {}
function ClientFramework.Effect(Path: string, ...: any)
	local CachedEffect = EffectCache[Path]
	if CachedEffect then
		task.spawn(ClientFramework.SafeCall, CachedEffect, ...)
		return
	end

	local Module = ClientFramework.GetObjectFromPath(Path, Effects)
	if not Module then
		Logger(2, "Effect %q does not exist", Path)
		return
	end

	if not Module:IsA("ModuleScript") then
		Logger(3, "Effect %q is not a ModuleScript", Path)
		return
	end

	local Success, Content = ClientFramework.SafeCall(require, Module)
	if not Success then
		return
	end

	if typeof(Content) ~= "function" then
		Logger(3, "Effect %q does not return a function", Path)
		return
	end

	EffectCache[Path] = Content
	task.spawn(ClientFramework.SafeCall, Content, ...)
end
end

return ClientFramework
