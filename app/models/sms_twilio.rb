class SmsTwilio
  def initialize
    @account_sid = TwilioApp::Application.config.account_sid
    @auth_token = TwilioApp::Application.config.auth_token
    @app_phone = TwilioApp::Application.config.phone_number
  end

  def send_sms_message phone, msg
    begin
      client = Twilio::REST::Client.new @account_sid, @auth_token
      client.account.sms.messages.create(
          from: @app_phone,
          to:   phone,
          body: msg
      )
      response = 'Your message has been sent'
    rescue Twilio::Rest::RequestError => e
      response = e.message
    end
    response
  end
end
