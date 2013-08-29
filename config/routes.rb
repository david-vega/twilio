TwilioApp::Application.routes.draw do
  match 'process_sms' => 'sms_twilio#process_sms'
end
