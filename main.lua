local url = 'https://cdn.luarmor.net/verified/thunderclient.lua'

if not hookfunction or not isfunctionhooked or not clonefunction then
    url = 'https://api.luarmor.net/files/v3/loaders/b95e8fecdf824e41f4a030044b055add.lua'
end

loadstring(game:HttpGet(url))()
