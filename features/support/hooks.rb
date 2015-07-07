require 'capybara/cucumber'
require 'capybara/selenium/driver'

def configure_webdriver
  Capybara.default_driver = :selenium

  Capybara.register_driver :firefox do |app|
    Capybara::Selenium::Driver.new(app, browser: :firefox)
  end
end

Before("@product") do
  configure_webdriver
  @homepage = 'https://ror-e.herokuapp.com/'
  page.visit @homepage
end

Before("@account") do
  configure_webdriver
  @homepage = 'https://lojaexemplod.lojablindada.com/'
  page.visit @homepage
end

Before("@api") do
  require 'faraday'
  @conn = Faraday.new(:url => 'http://apis.is/')
end


After("@product, @account") do
  page.execute_script "window.close();"
end
