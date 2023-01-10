require 'twilio-ruby'

class TwilioService 
    def self.send_text(name)
        name = "an anonymous human" if name.empty?
        account_sid = ENV['TWILIO_ACCOUNT_SID']
        auth_token = ENV['TWILIO_AUTH_TOKEN']
        client = Twilio::REST::Client.new(account_sid, auth_token)

        from = '+18456403940' # Your Twilio number
        to = ENV['MIKES_PHONE_NUMBER'] # Your mobile phone number
        sleep(10)
        client.messages.create(
        from: from,
        to: to,
        body: "Hey Mike, #{name.capitalize} wants to remind you to wash your hands 🧼. Have a great day, and stay healthy 😊 "
        )
    end
end 
