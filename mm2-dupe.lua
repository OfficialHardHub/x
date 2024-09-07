local Library = loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()

local PhantomForcesWindow = Library:NewWindow("🔥  HARDHUB-MM2")

local KillingCheats = PhantomForcesWindow:NewSection("💠  DUPE")

KillingCheats:CreateButton("Dupe 2X", function()
game:GetService("StarterGui"):SetCore("SendNotification", {
    Title = "✅ Starting Dupe!";
    Text = "⏳ Wait 1 Minute, " .. players.LocalPlayer.DisplayName;
    Icon = "rbxthumb://type=AvatarHeadShot&id=" .. players.LocalPlayer.UserId .. "&w=180&h=180 true"; "
    Duration = 30
})

wait(60)
local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer

local UIPath

if LocalPlayer.PlayerGui.MainGUI.Game:FindFirstChild("Inventory") ~= nil then
    UIPath = LocalPlayer.PlayerGui.MainGUI.Game.Inventory.Main
else
    UIPath = LocalPlayer.PlayerGui.MainGUI.Lobby.Screens.Inventory.Main
end

local function Dupe()
    for i,v in pairs(UIPath.Weapons.Items.Container:GetChildren()) do
        for i,v in pairs(v.Container:GetChildren()) do
            if v.Name == "Christmas" or v.Name == "Halloween" or v.Name == "Classic" or v.Name == "Tier 1" then
                for i,v in pairs(v.Container:GetChildren()) do
                    if v:IsA("Frame") then
                        if v.ItemName.Label.Text ~= "Default Knife" and v.ItemName.Label.Text ~= "Default Gun" then
                            local amount = v.Container.Amount.Text
                            if amount == "" or amount == "None" then
                                v.Container.Amount.Text = "x2"
                            else
                                local num = tonumber(amount:match("x(%d+)"))
                                if num then
                                    v.Container.Amount.Text = "x" .. tostring(num * 2)
                                end
                            end
                        end
                    end
                end
            else
                if v:IsA("Frame") then
                    if v.ItemName.Label.Text ~= "Default Knife" and v.ItemName.Label.Text ~= "Default Gun" then
                        local amount = v.Container.Amount.Text
                        if amount == "" or amount == "None" then
                            v.Container.Amount.Text = "x2"
                        else
                            local num = tonumber(amount:match("x(%d+)"))
                            if num then
                                v.Container.Amount.Text = "x" .. tostring(num * 2)
                            end
                        end
                    end
                end
            end
        end
    end
    for i,v in pairs(UIPath.Pets.Items.Container.Current.Container:GetChildren()) do
        if v:IsA("Frame") then
            local amount = v.Container.Amount.Text
            if amount == "" or amount == "None" then
                v.Container.Amount.Text = "x2"
            else
                local num = tonumber(amount:match("x(%d+)"))
                if num then
                    v.Container.Amount.Text = "x" .. tostring(num * 2)
                end
            end
        end
    end
end
Dupe()
        
print("Sucessfully Duped 2X Times!")
end)
