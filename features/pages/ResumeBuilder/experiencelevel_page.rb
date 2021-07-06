# require_relative 'contact_information_for_header_page'

class ExperienLevelPage


	def selectExperienLevel(experience_level)
		sleep(3)
		if experience_level == 'Student'
		$driver.find_element(:xpath, '//label[@for="resume_experiencelevel_id_1"]').click
		elsif experience_level == 'Entry Level'
		$driver.find_element(:xpath, '//label[@for="resume_experiencelevel_id_2"]').click
		elsif experience_level == 'Intern'
		$driver.find_element(:xpath, '//label[@for="resume_experiencelevel_id_3"]').click
		elsif experience_level == 'Experienced'
		$driver.find_element(:xpath, '//label[@for="resume_experiencelevel_id_4"]').click
		elsif experience_level == 'Fresher'
		$driver.find_element(:xpath, '//label[@for="resume_experiencelevel_id_5"]').click
		elsif experience_level == 'Manager'
		$driver.find_element(:xpath, '//label[@for="resume_experiencelevel_id_6"]').click
		elsif experience_level == 'Executive'
		$driver.find_element(:xpath, '//label[@for="resume_experiencelevel_id_7"]').click
		end	
		return ExperienLevelPage.new
	end
	
	def selectFunctionalArea(value)
		@@functional_area = value
		if value != 'Other'
			dropdown = $driver.find_element(id: "resume_functional_area_id")
			  select_list = Selenium::WebDriver::Support::Select.new(dropdown)
			  select_list.select_by(:text, "#{value}")
		else 
			textfield = $driver.find_element(:id, 'resume_functional_area_value')
			textfield.clear
			textfield.send_keys "Functional Area Other"
		end	
		return ExperienLevelPage.new
	end
	
	def selectSubFunctionalArea(value)
		sleep(3)
		if @@functional_area != 'Other'
			dropdown = $driver.find_element(id: "resume_sub_functional_area_id")
			  select_list = Selenium::WebDriver::Support::Select.new(dropdown)
			  select_list.select_by(:text, "#{value}")			
			sleep(2)
		else 
			textfield = $driver.find_element(:id, 'resume_sub_functional_area_value')
			textfield.clear
			textfield.send_keys "Functional Area Other"
		end	
		return ExperienLevelPage.new	
	end
	
	def clickOnNext
		next_button = $driver.find_element(css: '.save-btn-next')
		$driver.execute_script("arguments[0].scrollIntoView();",next_button)
		next_button.click
		# return ContactInformationForHeaderPage.new
	end
	


end