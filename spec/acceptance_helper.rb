require 'capybara/rspec'
require 'capybara-webkit'

#Switch off Capybara's rack server
Capybara.run_server = false
Capybara.default_driver = :webkit
Capybara.default_wait_time = 15
Capybara.app_host = '****************'
