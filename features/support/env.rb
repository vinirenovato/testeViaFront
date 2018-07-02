require 'capybara'
require 'capybara/dsl'
require 'capybara/rspec/matchers'
require 'rspec'
require 'selenium-webdriver'

World(Capybara::DSL)
World(Capybara::RSpecMatchers)

Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(
        app,
        browser: :firefox,
        desired_capabilities: Selenium::WebDriver::Remote::Capabilities.firefox(
            'firefoxOpitions' => {'args' => ['--disable-infobars',
                                           'window-size=1600,1024']}
        )
    )
end    

Capybara.configure do |config|
    config.default_driver = :selenium
    config.default_max_wait_time = 10
    config.app_host = 'https://www.extra.com.br/'
end    