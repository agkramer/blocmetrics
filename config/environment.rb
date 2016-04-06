# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!


ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => "app49192651@heroku.com",
  :password       => "bs5jtycr7262",
  :domain         => 'heroku.com',
  :enable_starttls_auto => true
}
