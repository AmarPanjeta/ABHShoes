require "rubygems"
require 'watir-webdriver'
require "rspec"
require 'spec_helper.rb' #Including the spec helper which contains the before and after methods

describe "Register Behavior" do
 
    it "Register on ABH Shoes with valid data" do
    TimeStamp = Time.new.strftime("%Y-%m-%d_%H:%M:%S")
	@homepage.register TimeStamp, TimeStamp+"@mail.com", 'Ime', 'Prezime', TimeStamp, TimeStamp
    expect(@userpage.loginmsg.text).to eq("Uspjesna registracija")
	end

    it "Register on ABH Shoes with valid data" do
    TimeStamp1 = Time.new.strftime("%Y-%m-%d_%H:%M:%S")
    @homepage.register TimeStamp1, TimeStamp1+"@mail.com", 'Ime', 'Prezime', TimeStamp1, TimeStamp1
    expect(@userpage.loginmsg.text).to eq("Uspjesna registracija")
    end

	it "Register on ABH Shoes with invalid email address" do
    TimeStamp2 = Time.new.strftime("%Y-%m-%d_%H:%M:%S")
    @homepage.register TimeStamp2, TimeStamp2+"mail.com", 'Ime', 'Prezime', TimeStamp2, TimeStamp2
    expect(@homepage.diffpass.text).to include("[Email] Niste unijeli validan mail!")
	end

	it "Register on ABH Shoes with invalid data / different passwords" do
    TimeStamp3 = Time.new.strftime("%Y-%m-%d_%H:%M:%S")
	@homepage.register TimeStamp3, TimeStamp3+"@mail.com", 'Ime', 'Prezime', TimeStamp3, 'lozinka'
    expect(@homepage.diffpass.text).to include('[Potrvrda sifre] Polja "Sifra" i "Potrvrda sifre" nisu ista!')
	end

    it "Register on ABH Shoes with invalid data / leave empty field for Ime" do
    TimeStamp4 = Time.new.strftime("%Y-%m-%d_%H:%M:%S")
    @homepage.register TimeStamp4, TimeStamp4+"@mail.com", '', 'Prezime', TimeStamp4, TimeStamp4
    expect(@homepage.diffpass.text).to include('[Ime] Polje "Ime" ne smije biti prazno!')
    end

end

describe "Login Behavior" do

    it "Log in to ABH Shoes with invalid username and password" do
    @homepage.login Time.now.strftime('%Y-%m-%d_%H-%M'), Time.now.strftime('%Y-%m-%d_%H-%M')
    expect(@userpage.wmsg.text).to include("Greska! Pogresna username/password kombinacija")
    end

    it "Log in to ABH Shoes with invalid password" do
    @homepage.login 'arntas', TimeStamp
    expect(@userpage.wmsg.text).to include("Greska! Pogresna username/password kombinacija")
    end

    it "Log in to ABH Shoes with valid data 1" do
    @homepage.login 'arntas', 'lozinka'
    expect(@userpage.loginmsg.text).to eq("Uspjesan login!")
    @userpage.logout
    expect(@userpage.wtmsg.text).to include("Uspjesno ste se odjavili!")
    end

    it "Log in to ABH Shoes with valid data 2" do
    @homepage.login TimeStamp, TimeStamp
    expect(@userpage.loginmsg.text).to eq("Uspjesan login!")
    @userpage.logout
    expect(@userpage.wtmsg.text).to include("Uspjesno ste se odjavili!")
    end

    it "Log in to ABH Shoes with valid data 3" do
    @homepage.login TimeStamp1, TimeStamp1
    expect(@userpage.loginmsg.text).to eq("Uspjesan login!")
    @userpage.logout
    expect(@userpage.wtmsg.text).to include("Uspjesno ste se odjavili!")
    end

end