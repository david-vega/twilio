class SmsTwilioController < ApplicationController

  def process_sms
    send_verification_code
  end

  def validate
    if params[:code] == SmsTwilio.new.random_code(session[:session_id].hex)
      user_id = session[:user_id]
      session.delete :user_id
      session[:verified] = true

      redirect_to "/users/#{user_id}/edit/"
    else
      redirect_to action: 'process_sms'
    end
  end

  private

  def send_verification_code
    twilio = SmsTwilio.new
    code = twilio.random_code session[:session_id].hex
    phone = User.find(session[:user_id]).phone_number
    twilio.send_sms_message phone, "Your verification number is: #{code}"
  end
end
