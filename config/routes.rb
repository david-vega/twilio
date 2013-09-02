TwilioApp::Application.routes.draw do
  resources :users

  match 'process_sms' => 'sms_twilio#process_sms'
  match 'validate' => 'sms_twilio#validate'
end
