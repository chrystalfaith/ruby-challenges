require 'rubygems'
require 'twilio-ruby'

account_sid = "AC0240f7cc96cb1958fc3eed74de648f19"
auth_token = "38fc35f29cb013f58edcdd777f50151d"

@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.account.messages.create(
:from => "(413)248-4171",
:to => "(719)351-3785",
:body =>

"Look what I can do from my computer!"


)

puts message.to