TWILIO_CONFIG = YAML.load_file("#{::Rails.root}/config/twilio.yml")[::Rails.env]

TWILIO_SID = TWILIO_CONFIG['sid']
TWILIO_TOKEN = TWILIO_CONFIG['token']
TWILIO_PHONE = "+#{TWILIO_CONFIG['phone']}"
TWILIO_SECRET = TWILIO_CONFIG['secret']
