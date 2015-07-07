require 'capybara/cucumber'
require 'capybara/selenium/driver'

Capybara.register_driver :firefox do |app|
  Capybara::Selenium::Driver.new(app, browser: :firefox)
end
