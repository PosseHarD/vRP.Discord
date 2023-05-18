Citizen.CreateThread(function()
	while true do
		Citizen.Wait(10000)
		players = {}
		for _, player in ipairs(GetActivePlayers()) do
			table.insert(players, player)
        end
		SetDiscordAppId()
		SetDiscordRichPresenceAsset('')
		SetDiscordRichPresenceAssetText('')
        SetRichPresence("Jogadores na cidade: "..#players )
	end
end)