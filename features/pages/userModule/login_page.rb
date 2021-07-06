require_relative 'deshboard_page'
# require_relative '../abstract_page'

class LoginPage 


	#Sign-IN
	def fillInEmail_login(email)
		$driver.find_element(:css,'#new_user > .s-form > #user_email').send_keys email
		return LoginPage.new	
	end

	def fillInPassword_login(password)
		$driver.find_element(:css,'.s-form:nth-child(4) > #user_password').send_keys password
		return LoginPage.new
	end

	def clickOnSigin
		$driver.find_element(:css,'.ltrm:nth-child(6) > .s-button').click
		return DeshboardPage.new
	end

end