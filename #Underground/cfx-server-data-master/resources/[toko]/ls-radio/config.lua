Config = {}

Config.RestrictedChannels = 10 -- channels that are encrypted (EMS, Fire and police can be included there) if we give eg 10, channels from 1 - 10 will be encrypted
Config.enableCmd = false --  /radio command should be active or not (if not you have to carry the item "radio") true / false

Config.messages = {

  ['not_on_radio'] = 'Du bist in keinem Funk',
  ['on_radio'] = 'Du bist derzeit im Funk : <b>',
  ['joined_to_radio'] = 'Du bist dem Funk : <b> beigetreten',
  ['restricted_channel_error'] = 'Du kannst keine Private Funks benutzen',
  ['you_on_radio'] = 'Du bist im Funk : <b>',
  ['you_leave'] = 'Du verlässt den Funk: <b>'

}
