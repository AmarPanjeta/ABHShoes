require 'page_container.rb'

class HomePage < PageContainer

	def loginbtn
		@browser.span(class: "glyphicon glyphicon-log-in")
	end

	def regbtn
		@browser.link(href: "/users/new")
	end

	def username
		@browser.text_field(id: "session_username")
	end

	def logpass
		@browser.text_field(id: "session_password")
	end

	def logsubmit
		@browser.input(name: "commit")
	end

	def regusername
		@browser.text_field(id: "user_username")
	end

	def regemail
		@browser.text_field(id: "user_email")
	end

	def regname
		@browser.text_field(id: "user_name")
	end

	def reglname
		@browser.text_field(id: "user_surname")
	end

	def regpass
		@browser.text_field(id: "user_password")
	end

	def regconfpass
		@browser.text_field(id: "user_password_confirmation")
	end

	def regsubmit
		@browser.input(value: "Kreiraj nalog")
	end

	def diffpass
		@browser.div(class: "alert alert-danger")
	end

	def login usrname, pass
		sleep 7
		loginbtn.click
		username.wait_until_present
		username.set usrname
		logpass.set pass
		logsubmit.when_present.click
	end

	def register rusrnm, rmail, rnm, rlnm, rpass, rcpass
		sleep 3
		regbtn.click
		regusername.wait_until_present
		regusername.set rusrnm
		regemail.set rmail
		regname.set rnm
		reglname.set rlnm
		regpass.set rpass
		regconfpass.set rcpass
		regsubmit.click
	end

end