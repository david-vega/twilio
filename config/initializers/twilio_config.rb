TWILIO_CONFIG = YAML.load_file("#{::Rails.root}/config/twilio.yml")[::Rails.env]

TwilioApp::Application.config.account_sid = TWILIO_CONFIG['sid']
TwilioApp::Application.config.auth_token = TWILIO_CONFIG['token']
TwilioApp::Application.config.phone_number = "+#{TWILIO_CONFIG['phone']}"
