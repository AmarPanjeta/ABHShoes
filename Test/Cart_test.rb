require 'spec_helper.rb' #Including the spec helper which contains the before and after methods

describe "Cart functionality" do

	it "Log in as a registered user" do
		@homepage.login "arntas", "lozinka"
		expect(@userpage.loginmsg.text).to eq("Uspjesan login!")
	end

	it "Add product without choosing its color" do
		@userpage.add_mo_11
		expect(@userpage.wtmsg.text).to include("Niste odabrali boju ni velicinu!")
	end

	it "Add product from 'Muska obuca' to the cart" do
		@userpage.add_mo_1
		expect(@userpage.cartbadge.text).to eq("1")
	end

	it "View and add product from 'Muska obuca' to the cart" do
		@userpage.add_mo_2 "2", "49"
		expect(@userpage.cartbadge.text).to eq("2")
	end

	it "Add product from 'Zenska obuca' to the cart" do
		@userpage.add_zo_1 "4"
		expect(@userpage.cartbadge.text).to eq("3")
	end

	it "View and add product from 'Zenska obuca' to the cart" do
		@userpage.add_zo_2 "40"
		expect(@userpage.cartbadge.text).to eq("4")
	end

	it "Add product from 'Djecija obuca' to the cart" do
		@userpage.add_do_1
		expect(@userpage.cartbadge.text).to eq("5")
	end

	it "View and add product from 'Djecija obuca' to the cart" do
		@userpage.add_do_2 "3"
		expect(@userpage.cartbadge.text).to eq("6")
	end

	it "Delete product from the cart" do
		@userpage.deleteproducts
		expect(@userpage.cartbadge.text).to eq("4")
	end

	it "Input personal data for delivery" do
		@userpage.inputPersonalData "Tester", "AtlantBH", "Milana Preloga 12A", "Sarajevo", "Bosna i Hercegovina"
		expect(@userpage.cartprod.text).to eq("Podaci o dostavi")
	end

	it "Process order to pay" do
		@userpage.pay "arnel.taslaman.apilab@gmail.com", "4012", "8888", "8888", "1881", "10", "16", "4444"
		expect(@userpage.h3msg.text).to eq("Trenutno nemate artikala u korpi.")
	end

end