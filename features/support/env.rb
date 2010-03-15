# Load Webrat
require 'webrat'

# Configure our Webrat environment to use Selenium.
# In order to test a non-rails application, we set the application_framework
# to :external.  I increase the selenium browser timeout time just because it can
# take a while to load Firefox on my machine.
Webrat.configure do |config|
  config.mode = :selenium
  config.selenium_server_address = 'localhost'
  config.application_framework = :external
  config.selenium_browser_startup_timeout = 20
end

# This adds Webrat methods to Cucumber.
World do
  session = Webrat::SeleniumSession.new
  session.extend(Webrat::Methods)
  session.extend(Webrat::Selenium::Methods)
  session.extend(Webrat::Selenium::Matchers)
  session
end