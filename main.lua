local executorname = getexecutorname()

if executorname == 'Xeno' or executorname == 'Solara' or executorname == 'Rebel' or executorname == 'Delta' then
    loadstring(game:HttpGet('https://api.luarmor.net/files/v3/loaders/b95e8fecdf824e41f4a030044b055add.lua'))()
else
    --// loadstring(game:HttpGet('https://cdn.luarmor.net/verified/thunderclient.lua'))()
    loadstring(game:HttpGet('https://api.luarmor.net/files/v3/loaders/83ad6a18b56205830d2a1f7266b5ca10.lua'))()
end
