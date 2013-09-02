TwilioApp::Application.routes.draw do
  resources :users

  match 'process_sms' => 'sms_twilio#process_sms'
end
