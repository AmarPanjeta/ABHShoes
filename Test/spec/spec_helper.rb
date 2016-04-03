require 'rubygems'
require 'rspec'
require 'watir-webdriver'
require 'headless'
require 'page-object'
require 'watir-scroll'
require 'home_page.rb'
require 'user_page.rb'

RSpec.configure do |config|

config.before(:all) {
	@headless = Headless.new
	@headless.start
	@browser = Watir::Browser.start 'http://abh-shoes-2016.herokuapp.com/'
     #@browser = Watir::Browser::new :firefox
     @browser.window.maximize
     #@browser.goto 'http://abh-shoes-2016.herokuapp.com/'
     @homepage = HomePage.new(@browser)
     @userpage = UserPage.new(@browser)
}

config.after(:all) {     
     @browser.close
     @headless.destroy
}
end