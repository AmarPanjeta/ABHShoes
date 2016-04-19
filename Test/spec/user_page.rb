require 'page_container.rb'

class UserPage < PageContainer

	def loginmsg
		@browser.h2
	end

	def h3msg
		@browser.h3
	end

	def hmpg
		@browser.link(class: "navbar-brand")
	end

	def mo
		@browser.li(text: "Muska obuca")
	end

	def zo
		@browser.li(text: "Zenska obuca")
	end

	def djo
		@browser.li(text: "Djecija obuca")
	end

	def menu
		@browser.link(class: "dropdown-toggle")
	end

	def lgout
		@browser.link(rel: "nofollow")
	end

	def wmsg
		@browser.div(class: "alert alert-danger")
	end

	def wtmsg
		@browser.div(class: "toast-message")
	end

	def shoe
		@browser.div(class: "col-lg-3 col-md-4 col-xs-6 thumb shoe-box")
	end

	def shoe_i_1
		@browser.div(class: "col-lg-3 col-md-4 col-xs-6 thumb shoe-box",:index => 1)
	end

	def shoe_i_2
		@browser.div(class: "col-lg-3 col-md-4 col-xs-6 thumb shoe-box",:index => 2)
	end

	def shoe_i_3
		@browser.div(class: "col-lg-3 col-md-4 col-xs-6 thumb shoe-box",:index => 3)
	end

	def shoe_i_4
		@browser.div(class: "col-lg-3 col-md-4 col-xs-6 thumb shoe-box",:index => 4)
	end

	def addtocart
		@browser.button(class: "btn add-to-cart")
	end

	def addtocart_1
		@browser.button(value: "Dodaj u korpu",:index =>1)
	end

	def addtocart_3
		@browser.button(value: "Dodaj u korpu",:index =>3)
	end

	def addtocart_4
		@browser.button(value: "Dodaj u korpu",:index =>4)
	end

	def addtocarts5
		@browser.button(id: "shoe_5")
	end

	def addtocarts7
		@browser.button(id: "shoe_7")
	end

	def inpquanty
		@browser.div(class: "form-group").input(id: "quantity")
	end

	def inpquant
		@browser.div(class: "modal-body").div(class: "form-group").input(id: "quantity")
	end

	def clsmodal
		@browser.div(class:"modal-header").button(class: "close")
	end

	def addquant
		@browser.div(class: "modal-content").div(class: "modal-footer").button(id: "zatvori")
	end

	def colred 
		@browser.div(id: "color_1")
	end

	def colred1
		@browser.div(id: "color-boxies").div(id: "color_1")
	end

	def colblue 
		@browser.div(id: "color_2")
	end

	def collightblue 
		@browser.div(id: "color_3")
	end

	def colyellow 
		@browser.div(id: "color_4")
	end

	def colwhite 
		@browser.div(id: "color_5")
	end

	def colorange
		@browser.div(id: "color_6")
	end

	def colorange1
		@browser.div(id: "color-boxies").div(id: "color_6")
	end

	def colgreen
		@browser.div(id: "color_7")
	end

	def colbrown1
		@browser.div(id: "color-boxies").div(id: "color_8")
	end

	def colpurple1
		@browser.div(id: "color-boxies").div(id: "color_9")
	end

	def size
		@browser.select(id: "sizes")
	end

	def cartbadge
		@browser.span(id: "cart-badge")
	end

	def cart
		@browser.span(class: "glyphicon glyphicon-shopping-cart")
	end

	def cartprod
		@browser.h1(class: "page-header")
	end

	def btnNast
		@browser.button(text: "Nastavi")
	end

	def btnDelProd
		@browser.span(class: "glyphicon glyphicon-remove")
	end

	def delName
		@browser.text_field(id: "info_name")
	end

	def delSurname
		@browser.text_field(id: "info_surname")
	end

	def delAddress
		@browser.text_field(id: "info_address")
	end

	def delCity
		@browser.text_field(id: "info_city")
	end

	def delCountry
		@browser.text_field(id: "info_country")
	end

	def delSubmit
		@browser.input(value: "Potvrdi")
	end

	def stripepay
		@browser.button(class: "stripe-button-el")
	end

	def stripemail
		@browser.iframe(class: "stripe_checkout_app").body(class: "stripeInFrame appView iframe desktop en").div(class: "emailInput input").input(id: "email")
	end

	def stripecard
		@browser.iframe(class: "stripe_checkout_app").body(class: "stripeInFrame appView iframe desktop en").div(class: "cardNumberInput input top").input(id: "card_number")
	end

	def stripeexpcard
		@browser.iframe(class: "stripe_checkout_app").body(class: "stripeInFrame appView iframe desktop en").div(class: "cardExpiresInput input left bottom").input(id: "cc-exp")
	end

	def stripecvc
		@browser.iframe(class: "stripe_checkout_app").body(class: "stripeInFrame appView iframe desktop en").div(class: "cardCVCInput input right bottom").input(id: "cc-csc")
	end

	def stripesubmit
		@browser.iframe(class: "stripe_checkout_app").body(class: "stripeInFrame appView iframe desktop en").div(class: "buttonsView").button(id: "submitButton")
	end

	def logout
		menu.wait_until_present
		menu.click
		lgout.when_present.click
	end

	def add1 sizval
		hmpg.when_present.click
		shoe_i_1.when_present.click
		colblue.when_present.click
		sleep 2
		size.select_value sizval
		sleep 2
		addtocart.when_present.click
		sleep 2
	end

	def add2 q
		hmpg.when_present.click
		shoe_i_4.hover
		addtocart_4.when_present.click
		inpquant.send_keys :backspace
		inpquant.send_keys q
		colpurple1.when_present.click
		sleep 2
		addquant.when_present.click
		sleep 2
	end

	def add_mo_1
		mo.when_present.click
		shoe_i_1.hover
		addtocart_1.when_present.click
		colbrown1.when_present.click
		sleep 2
		addquant.when_present.click
		sleep 2
	end

	def add_mo_11
		mo.when_present.click
		shoe_i_3.hover
		addtocart_3.when_present.click
		addquant.when_present.click
		sleep 2
		clsmodal.when_present.click
		sleep 2
	end

	def add_mo_2 qy, szvl
		mo.when_present.click
		shoe.when_present.click
		colblue.when_present.click
		sleep 3
		inpquanty.send_keys :backspace
		inpquanty.send_keys qy
		size.select_value szvl
		@browser.scroll.to :top 
		addtocart.when_present.click
		sleep 2
	end

	def add_zo_1 qy1
		zo.when_present.click
		shoe_i_3.hover
		addtocart_3.when_present.click
		sleep 3
		inpquant.send_keys :backspace
		inpquant.send_keys qy1
		colorange1.when_present.click
		sleep 2
		addquant.when_present.click
		sleep 2
	end

	def add_zo_2 szvl1
		zo.when_present.click
		shoe_i_1.when_present.click
		colorange.when_present.click
		sleep 2
		size.select_value szvl1
		addtocart.when_present.click
		sleep 2
	end

	def add_do_1
		djo.when_present.click
		shoe_i_3.hover
		addtocart_3.when_present.click
		colorange1.when_present.click
		sleep 2
		addquant.when_present.click
		sleep 2
	end

	def add_do_2 qy2
		djo.when_present.click
		shoe_i_1.when_present.click
		collightblue.when_present.click
		sleep 2
		inpquanty.send_keys :backspace
		inpquanty.send_keys qy2
		addtocart.when_present.click
		sleep 2
	end

	def deleteproducts
		cart.when_present.click
		btnDelProd.when_present.click
		btnDelProd.when_present.click
		sleep 2
	end

	def inputPersonalData name, lname, addrss, cty, cntry
		cart.when_present.click
		btnNast.when_present.click
		delName.set name
		delSurname.set lname
		delAddress.set addrss
		delCity.set cty
		delCountry.set cntry
		delSubmit.click
	end

	def pay mail, crd, crd2, crd3, crd4, exp, exp1, cvc
		stripepay.when_present.click
		stripemail.wait_until_present
		stripemail.send_keys mail
		stripecard.send_keys crd
		stripecard.send_keys crd2
		stripecard.send_keys crd3
		stripecard.send_keys crd4
		stripeexpcard.send_keys exp
		stripeexpcard.send_keys exp1
		stripecvc.send_keys cvc
		stripesubmit.when_present.click
		sleep 6
	end

end