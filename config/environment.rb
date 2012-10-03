# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
SgOnRails::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => "smtp.sendgrid.net",
  :port => 25,
  :domain => "example.com",
  :authentication => :plain,
  :user_name => ENV['SG_USER'],
  :password => ENV['SG_KEY']
}
