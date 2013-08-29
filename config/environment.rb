# Load the rails application
require File.expand_path('../application', __FILE__)

require 'twilio-ruby'

# Initialize the rails application
TwilioApp::Application.initialize!
