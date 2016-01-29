OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, '201323629113-up440ck9trrd8711dhkk34tdagq7srao.apps.googleusercontent.com', 'LAP96oGXFbXoOp26Iqv9_QwY', {client_options: {ssl: {ca_file: Rails.root.join("cacert.pem").to_s}}}
end