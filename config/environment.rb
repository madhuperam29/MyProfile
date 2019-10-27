# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!



Rails.application.configure do
config.action_mailer.delivery_method = :smtp
config.action_mailer.default_url_options = { host: 'localhost', port: 3000 }
config.action_mailer.smtp_settings = {
   address:              'smtp.gmail.com',
   port:                 587,
   domain:               'example.com',
   user_name:            'sravikapaluru190719@gmail.com',
   password:             '143@maanas',
   authentication:       'plain',
   enable_starttls_auto: true  
}
end
