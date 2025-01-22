if not request or not loadstring then
    return game:GetService('Players').LocalPlayer:Kick('Executor not supported.')
end

local unsupported = not isfunctionhooked or not getreg or ({
    Unknown = true,
    Delta = true,
    Fluxus = true,
    Rebel = true,
    Solara = true,
    Xeno = true
})[identifyexecutor and identifyexecutor() or 'Unknown']

if unsupported then
    loadstring(game:HttpGet('https://api.luarmor.net/files/v3/loaders/b95e8fecdf824e41f4a030044b055add.lua'))()
else
    loadstring(game:HttpGet('https://cdn.luarmor.net/verified/thunderclient.lua'))()
end
