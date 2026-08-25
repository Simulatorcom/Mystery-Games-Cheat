local Rayfield = loadstring(game:HttpGet("https://sirius.menu/rayfield"))()

local Event = game:GetService("ReplicatedStorage")["4123995400"]

local EggInput = "Cracked Egg"
local Triple = false
local Start = false

local Window = Rayfield:CreateWindow({
    Name = "??? Hub",
    Icon = "sparkles",
    LoadingTitle = "??? Hub",
    LoadingSubtitle = "An Exploit Against Mystery Games🔥",
    ShowText = "??? Hub",
    Theme = "Default",
    ToggleUIKeybind = "K",
    DisableRayfieldPrompts = true,
    DisableBuildWarnings = true,
    ConfigurationSaving = {
        Enabled = false
    },
    Discord = {
        Enabled = false
    },
    KeySystem = false
})

local EggsTab = Window:CreateTab("Eggs", "egg")

EggsTab:CreateInput({
    Name = "Egg Name",
    CurrentValue = "Cracked Egg",
    PlaceholderText = "Cracked Egg",
    RemoveTextAfterFocusLost = false,
    Flag = "EggName",
    Callback = function(Text)
        if Text ~= "" then
            EggInput = Text
        end
    end,
})

EggsTab:CreateToggle({
    Name = "Triple",
    CurrentValue = false,
    Flag = "Triple",
    Callback = function(Value)
        Triple = Value
    end,
})

EggsTab:CreateToggle({
    Name = "Start",
    CurrentValue = false,
    Flag = "Start",
    Callback = function(Value)
        Start = Value

        if Start then
            task.spawn(function()
                while Start do
                    Event:InvokeServer(EggInput, Triple)
                    task.wait()
                end
            end)
        end
    end,
})
