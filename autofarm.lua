local ReplicatedStorage = game:GetService("ReplicatedStorage")
local Events = ReplicatedStorage:WaitForChild("Events")

local args = {"Juniper Road"}
local changeJob = Events:FindFirstChild("ChangeJobSite")
if changeJob then
    changeJob:FireServer(unpack(args))
end

task.spawn(function()
    for i = 1, 4 do
        local args = {"Plus"}
        local diff = Events:FindFirstChild("ChangeDifficulty")
        if diff then
            diff:FireServer(unpack(args))
        end
        task.wait(0.2)
    end
end)

local args = {"super hard"}
local preset = Events:FindFirstChild("ApplyDifficultyPreset")
if preset then
    preset:FireServer(unpack(args))
end

local status = Events:FindFirstChild("ChangeStatus")
if status then
    status:FireServer()
end

local start = Events:FindFirstChild("AttemptStart")
if start then
    start:FireServer()
end

local player = game.Players.LocalPlayer
local character = player.Character or player.CharacterAdded:Wait()
local root = character:WaitForChild("HumanoidRootPart")
task.wait(31)
local ghosts = {"Aswang", "Banshee", "Demon", "Dullahan", "Dybbuk", "Entity", "Ghoul", "Keres", "Leviathan", "Nightmare", "Oni", "Phantom", "Revenant", "Shadow", "Siren", "Skinwalker", "Specter", "Spirit", "Umbra", "Vex", "Wendigo", "The Wisp", "Wraith"}
local randomGhost = ghosts[math.random(1, #ghosts)]

local journal = Events:FindFirstChild("EvidenceMarkedInJournal")
if journal then
    journal:FireServer(randomGhost)
end

local lobby = Events:FindFirstChild("RequestReturnToLobby")
if lobby then
    lobby:FireServer()
end

local queue_on_teleport = syn and syn.queue_on_teleport or queue_on_teleport

queue_on_teleport([[ 
loadstring(game:HttpGet("https://raw.githubusercontent.com/h7705679/demonology-auto-farm/refs/heads/main/autofarm.lua"))()
]])
loadstring(game:HttpGet("https://raw.githubusercontent.com/h7705679/demonology-auto-farm/refs/heads/main/autofarm.lua"))()
