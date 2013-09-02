class ApplicationController < ActionController::Base
  protect_from_forgery

  def auth_user
    unless session[:verified]
      session[:user_id] = params[:id]
      redirect_to controller: 'sms_twilio', action: 'process_sms'
    end
  end
end
