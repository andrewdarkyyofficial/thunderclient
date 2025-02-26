if not loadstring or not request then
    return game:GetService('Players').LocalPlayer:Kick('Your executor is not supported.')
end

local url = 'https://cdn.luarmor.net/verified/thunderclient.lua'

if not clonefunction or not hookfunction or not isfunctionhooked then
    url = 'https://api.luarmor.net/files/v3/loaders/b95e8fecdf824e41f4a030044b055add.lua'
end

--// discord.gg/K8gdWHthVw

loadstring(game:HttpGet(url))()
