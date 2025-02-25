if not loadstring or not request then
    return game:GetService('Players').LocalPlayer:Kick('Your executor is not supported.')
end

local url = 'https://cdn.luarmor.net/verified/thunderclient.lua'

if not clonefunction or not hookfunction or not isfunctionhooked then
    url = 'https://api.luarmor.net/files/v3/loaders/b95e8fecdf824e41f4a030044b055add.lua'
end

pcall(function()
	request({
		Url = 'http://127.0.0.1:6463/rpc?v=1',
		Method = 'POST',
		Headers = {
			['Content-Type'] = 'application/json',
			Origin = 'https://discord.com'
		},
		Body = game:GetService('HttpService'):JSONEncode({
			cmd = 'INVITE_BROWSER',
			nonce = game:GetService('HttpService'):GenerateGUID(false),
			args = {
				code = 'K8gdWHthVw'
			}
		})
	})
end)

loadstring(game:HttpGet(url))()
