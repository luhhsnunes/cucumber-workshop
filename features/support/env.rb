require 'capybara/cucumber'
require 'capybara/selenium/driver'

Capybara.default_driver = :selenium
Capybara.register_driver :firefox do |app|
  Capybara::Selenium::Driver.new(app, browser: :firefox)
end
