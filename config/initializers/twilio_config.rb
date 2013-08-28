TWILIO_CONFIG = YAML.load_file("#{::Rails.root}/config/twilio.yml")[::Rails.env]

CarterRails::Application.config.account_sid = TWILIO_CONFIG['sid']
CarterRails::Application.config.auth_token = TWILIO_CONFIG['token']
CarterRails::Application.config.phone_number = TWILIO_CONFIG['phone']
