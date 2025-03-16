if not loadstring or not request then
    return game:GetService('Players').LocalPlayer:Kick('Your executor is not supported.')
end

local url = 'https://api.luarmor.net/files/v3/loaders/d911fd2915ce2e7fc4a104a28d00c9b4.lua'

if not clonefunction or not hookfunction or not isfunctionhooked then
    url = 'https://api.luarmor.net/files/v3/loaders/b95e8fecdf824e41f4a030044b055add.lua'
end

loadstring(game:HttpGet(url))()
