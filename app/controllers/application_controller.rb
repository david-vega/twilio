class ApplicationController < ActionController::Base
  protect_from_forgery

  def auth_user
    Rails.logger.info '#'*100
  end
end
