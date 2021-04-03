Config = {}

Config.AllLogs = true											-- Enable/Disable All Logs Channel
Config.postal = false  											-- set to false if you want to disable nerest postal (https://forum.cfx.re/t/release-postal-code-map-minimap-new-improved-v1-2/147458)
Config.username = "Underground Logs" 							-- Bot Username
Config.avatar = "https://grauerdavid.de/7c2109b9cf6cd6249232ff0940d28a8d.png"				-- Bot Avatar
Config.communtiyName = ""					-- Icon top of the Embed
Config.communtiyLogo = "https://via.placeholder.com/30x30"		-- Icon top of the Embed


Config.weaponLog = true  			-- set to false to disable the shooting weapon logs
Config.weaponLogDelay = 1000		-- delay to wait after someone fired a weapon to check again in ms (put to 0 to disable) Best to keep this at atleast 1000

Config.playerID = true				-- set to false to disable Player ID in the logs
Config.steamID = true				-- set to false to disable Steam ID in the logs
Config.steamURL = true				-- set to false to disable Steam URL in the logs
Config.discordID = true				-- set to false to disable Discord ID in the logs


-- Change color of the default embeds here
-- It used Decimal color codes witch you can get and convert here: https://jokedevil.com/colorPicker
Config.joinColor = "3863105" 		-- Player Connecting
Config.leaveColor = "15874618"		-- Player Disconnected
Config.chatColor = "10592673"		-- Chat Message
Config.shootingColor = "10373"		-- Shooting a weapon
Config.deathColor = "000000"		-- Player Died
Config.resourceColor = "15461951"	-- Resource Stopped/Started



Config.webhooks = {
	all = "https://discordapp.com/api/webhooks/742262373481447515/b4WKWnGOpOsSJ0KtVGbc7fqaPnJWK8l_EwP3KSqjfySpwMYcTToyPdz64jUrKErZyh1_",
	chat = "https://discordapp.com/api/webhooks/742262480067362858/mjKvWvOgAphhfAGQkl4T2wAod_rjF-3sb39yLZqmODjl8ru_rFMF7PeioYdyDcLAzOzV",
	joins = "https://discordapp.com/api/webhooks/742262646148956230/Lr_TG-XouD_3bthmIDtFN_vGAFBTb48wU74hjjaoESeFQbUM3zOb2MEGVpOwPsxkXmIn",
	leaving = "https://discordapp.com/api/webhooks/742262554620985366/GwZ-aAbJHm5KSGDJT_IweWWvLPquVYmaNjJ3X_RnysJNL5jDmMX6BkLhle_HhvN2H4iV",
	deaths = "https://discordapp.com/api/webhooks/742262768811507743/dSfWCmtojA10Y87NW8j4TPpqyY0vnrOOTo8xM6IIXjpMF9XHoX4YzrusvTLYQhry6kbY",
	shooting = "https://discordapp.com/api/webhooks/742262853385322536/X4Db-ABw7iaHvK3Azy_ucvNwo4ww9bqw8e2I-aYQkqcYqZKNz3oxQB4voL3LJ_A1xyyx",
	resources = "https://discordapp.com/api/webhooks/742277939730710550/9aYand3hm-M4WZ8i4mPru4Py13qZOYGpCbBx3CkAeWxmygHUvRgwro6LF__Rcu6463sg",

  -- You can add more logs by using exports in other resources
  -- When the action is done call the function below in the script to send the information to JD_logs
  -- exports.JD_logs:discord('<MESSAGE_YOU_WANT_TO_POST_IN_THE_EMBED>', '1752220', '<WEBHOOK_CHANNEL>')
  -- Then create a webhook for the action you just executed
  -- <YOUR NEW WEBHOOK NAME> = "<DISCORD_WEBHOOK>",
  }


 --Debug shizzels :D
Config.debug = false
Config.versionCheck = "1.1.0"
