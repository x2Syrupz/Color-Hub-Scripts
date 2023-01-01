local Keys_List = loadstring(game:HttpGet('https://pastebin.com/raw/piyYyCBY'))()
---------------------
local Notification_Library = loadstring(game:HttpGet("https://pastebin.com/raw/gex0Tntb"))()
local Notification = Notification_Library.Notify
local Place_ID = game.GameId
local Place_List = {
    [994732206] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/x2Syrupz/Color-Hub-Scripts/main/Scripts/Blox_Fruit.lua'))()",
    [66654135] = "loadstring(game:HttpGet('https://raw.githubusercontent.com/x2Syrupz/Color-Hub-Scripts/main/Scripts/Murder_Mystery_2.lua'))()",
}
local Whitelist_Private_Checked = 1
local Whitelist_Checked
for i,v in pairs(Keys_List) do
    if Whitelist_Private_Checked == #Keys_List and not Place_List[game.GameId] then
    Keys_List = ""
    Instance.new("Sound", game:GetService("SoundService")).SoundId = "rbxassetid://9128519965" game:GetService("SoundService").Sound:Play()
    Notification({Title = "Syrup's Notification Service",Description = "Invalid Key / Place not Supported.",Duration = 3})
    else
        if v == getgenv().Keys and Place_List[game.GameId] then
            Instance.new("Sound", game:GetService("SoundService")).SoundId = "rbxassetid://9128519965" game:GetService("SoundService").Sound:Play()
            Notification({Title = "Syrup's Notification Service",Description = "Loadded Script Successfully!",Duration = 3})
            loadstring(Place_List[tonumber(game.GameId)])()
            Whitelist_Checked = getgenv().Keys
            Keys_List = nil
        else
            Whitelist_Private_Checked = Whitelist_Private_Checked + 1
        end
    end
end
---------------------
