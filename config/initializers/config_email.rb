Rails.application.configure do
config.user_mailer.delivery_method = :smtp
 config.user_mailer.smtp_settings = {
 :authentication => :plain,
 :address => ENV["garyhbk@gmail.com"],
 :port => ENV["587"],
 :domain =>ENV["smtp.gmail.com"],
 :user_name => ENV["garyhbk@gmail.com"],
 :password => ENV["12345"]
 :SMTPSecure => ENV["tls"]
 }
end
