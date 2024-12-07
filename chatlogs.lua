local url = "https://discordapp.com/api/webhooks/1297278258328502292/ZGcWOHmxQacEWSsuGAD3bWtTxwKHVN56nUvk8JJBFJ1rkL_X-9YgbmyDUeg1AG9olAXQ"
local http = game:GetService("HttpService")

game.Players.PlayerAdded:Connect(function(plr)
	plr.Chatted:Connect(function(msg)
		local data = {
			["username"] = plr.Name,
			["content"] = msg
		}
		local newdata = http:JSONEncode(data)
		http:PostAsync(url, newdata)
	end)
end)