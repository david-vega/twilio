TwilioApp::Application.routes.draw do
  match 'twilio/process_sms' => 'twilio#process_sms'
end
