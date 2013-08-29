class SmsTwilioController < ApplicationController

  def process_sms
    twilio = SmsTwilio.new
    response = twilio.send_sms_message phone, 'Hello World'
    render text: response
  end
end
