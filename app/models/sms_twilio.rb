class SmsTwilio
  def send_sms_message phone, msg
    begin
      client = Twilio::REST::Client.new TWILIO_SID, TWILIO_TOKEN
      client.account.sms.messages.create({from: TWILIO_PHONE,
                                          to: phone,
                                          body: msg})

      response = {sent: true, msg: "Your message has been sent to #{phone}"}
      Rails.logger.info "Message sent to #{phone}"
    rescue Twilio::Rest::RequestError => e
      response = {sent: false, msg: e.message}
      Rails.logger.warn "Mesage not sent to #{phone}"
    end
    response
  end

  def random_code seed
    Random.new(TWILIO_SECRET).rand(seed).to_s[2...10]
  end
end
