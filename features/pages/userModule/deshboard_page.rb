

class DeshboardPage

	def verifyUserLogin(username)
		sleep(2)                  
		$driver.page_source.to_s.include? username
		return DeshboardPage.new
	end

	def clickOnResumeNew
		newbtn = $driver.find_element(:css, ".pull-left a")
		$driver.execute_script("arguments[0].click();", newbtn)
	end

end