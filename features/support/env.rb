require 'capybara'
require 'capybara/cucumber'
require 'cpf_faker'
require "rspec"
require 'rspec/retry'
require "faker"
require 'site_prism'
require 'selenium-webdriver'
require 'awesome_print'

Capybara.configure do |config|
    config.default_driver = :selenium_chrome
    config.default_max_wait_time = 45
end

Capybara.page.driver.browser.manage.window.maximize
Capybara.ignore_hidden_elements = false

RSpec.configure do |config|
  config.verbose_retry = true
  config.default_retry_count = 2
  config.exceptions_to_retry = [Net::ReadTimeout]
end

