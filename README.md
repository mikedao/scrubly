# Set Up

1. clone this repo
2. `git switch send_mike_a_reminder_text_to_wash_his_hands`
3. `bundle install`
4. `rails db:{create,migrate}`
5. `bundle exec figaro install`
  * In `application.yml` add the following values: TWILIO_ACCOUNT_SID, TWILIO_AUTH_TOKEN, MIKES_PHONE_NUMBER (set this as your number)
6. In the `TwilioService`, set the `from` variable to be your Twilio number 

