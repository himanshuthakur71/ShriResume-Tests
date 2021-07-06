require_relative 'experiencelevel_page'

class SelectTemplatePage

    def select_template(template_id)
        wait = Selenium::WebDriver::Wait.new(:timeout => 20)
        wait.until { $driver.find_element(:css, "#mCSB_1_container") }
        xpath = ('a[data-resume_type_id="' + "#{template_id}" + '"]' )
        $driver.execute_script("arguments[0].scrollIntoView();",template = $driver.find_element(:css, xpath))
		sleep(2)
		template.click
		return SelectTemplatePage.new
    end

    def clickOnNext
		next_button = $driver.find_element(css: '[value="Next"]')
		$driver.execute_script("arguments[0].scrollIntoView();",next_button)
		next_button.click
		return ExperienLevelPage.new
	end

end