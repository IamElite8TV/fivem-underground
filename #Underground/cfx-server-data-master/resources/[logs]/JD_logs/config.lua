Config = {}

Config.AllLogs = true											-- Enable/Disable All Logs Channel
Config.postal = false  											-- set to false if you want to disable nerest postal (https://forum.cfx.re/t/release-postal-code-map-minimap-new-improved-v1-2/147458)
Config.username = "Underground Logs" 							-- Bot Username
Config.avatar = "https://grauerdavid.de/adbc893525cf3966268105a5985f0f6b.png"				-- Bot Avatar
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
	all = "https://discordapp.com/api/webhooks/746764729963511922/4IslaPS_xPpKWT9d-VzvjOIgNxTmx9gYTMrNit9KpAvGpzIhQmxtJuSLsFHxWIof0dK6",
	chat = "https://discordapp.com/api/webhooks/746764802071855185/Bdk3pm6I4DPqIZsampsCZuxrG-3_QPSWUUUmbpFRR0wU62HDyO6lvIwGw942oIIVExY4",
	joins = "https://discordapp.com/api/webhooks/746764994716106812/Srp1aRRwsImv47vCM6hjSb9ar_gE8L1bCcMdmD5QEnjiQ0QWHEEd7rMX1WTJYRmpPkxd",
	leaving = "https://discordapp.com/api/webhooks/746765078522495056/DeVIkxIGQhfeHQipsHEiYiM6he2ahXKnPQSTTvHsjfe87H_stJOI7A4FW_BHsNQt5A1E",
	deaths = "https://discordapp.com/api/webhooks/746764884288471151/SwPbbnV29rs1tc_pCdFI4PgXBfJzi1266EOVSo1eb93eUC56aGRDIAtZD-ZWkM47Hkcn",
	shooting = "https://discordapp.com/api/webhooks/746765236996145202/iGI4Q29quNCcLHFnHLChT6yssOzu2w8tzxGAGR9_K9oHvf06DV7vGLjLJdXB2EudiOLb",
	resources = "https://discordapp.com/api/webhooks/746765151503515768/yOKA8ZU5A-Y5LfAONCPO4LzVLqkI9EophAWYWdDFZZsp3oZfpaclRG6eZ9HviLr3Dbtv",

  -- You can add more logs by using exports in other resources
  -- When the action is done call the function below in the script to send the information to JD_logs
  -- exports.JD_logs:discord('<MESSAGE_YOU_WANT_TO_POST_IN_THE_EMBED>', '1752220', '<WEBHOOK_CHANNEL>')
  -- Then create a webhook for the action you just executed
  -- <YOUR NEW WEBHOOK NAME> = "<DISCORD_WEBHOOK>",
  }


 --Debug shizzels :D
Config.debug = false
Config.versionCheck = "1.1.0"
