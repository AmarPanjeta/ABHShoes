require "rubygems"
require 'watir-webdriver'
require "rspec"
require 'spec_helper.rb' #Including the spec helper which contains the before and after methods

describe "Basic functionality of ABH Shoes app" do
	
	it "Log in as a registered user" do
		@homepage.login "arntas", "lozinka"
		expect(@userpage.loginmsg.text).to eq("Uspjesan login!")
	end

	it "Select product and add it to cart" do
		@userpage.add1 "48"
		expect(@userpage.cartbadge.text).to eq("1")
	end

	it "Add another product to cart" do
		@userpage.add2 "3"
		expect(@userpage.cartbadge.text).to eq("2")
	end

	it "Input personal data for delivery" do
		@userpage.inputPersonalData "Tester", "AtlantBH", "Milana Preloga 12A", "Sarajevo", "Bosna i Hercegovina"
		expect(@userpage.cartprod.text).to eq("Podaci o dostavi")
	end

	it "Pay the order" do
		@userpage.pay "arnel.taslaman.apilab@gmail.com", "4012", "8888", "8888", "1881", "10", "16", "4444"
		expect(@userpage.h3msg.text).to eq("Trenutno nemate artikala u korpi.")
	end
end