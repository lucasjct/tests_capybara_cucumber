require 'capybara'
require 'capybara/cucumber'
require 'selenium-webdriver'
require 'site_prism'
#require_relative 'page_helper.rb'


#World(PageObjects)

BROWSER = ENV['BROWSER']
AMBIENTE = ENV['AMBIENTE']
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml")

Capybara.register_driver :selenium do |app|

if BROWSER.eql?('chrome')
  Capybara::Selenium::Driver.new(app,:browser => :chrome)

elsif BROWSER.eql?('chrome_headless')
  Capybara::Selenium::Driver.new(app,:browser => :chrome,desired_capabilities:Selenium::WebDriver::Remote::Capabilities.chrome(
   "goog:chromeOptions" => {'args' =>['--headless', 'disable-gpu',"window-size=1000,800" ]}
  )
)
elsif BROWSER.eql?('firefox')
  Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette => true)

elsif BROWSER.eql?('firefox_headless')
  browser_options = Selenium::WebDriver::Firefox::Options.new(args:['--headless'])
  Capybara::Selenium::Driver.new(app, :browser => :firefox,options: browser_options)
  end
end

Capybara.configure do |config|
    config.default_driver = :selenium #selenium, selenium_chrome_headless
    config.app_host = CONFIG["url_padrao"]
    config.default_max_wait_time = 5
end