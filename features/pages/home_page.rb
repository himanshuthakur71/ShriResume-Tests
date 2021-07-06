# require_relative 'userModule/login_page'
# require_relative 'ResumeBuilder/selecttemplate_page'


class HomePage

  def visitLogin
    $driver.find_element(:css, ".plan_btn").click
    return LoginPage.new
  end
 
  def clickBeginMyResume
    $driver.find_element(:css, ".s-button").click
    return SelectTemplatePage.new
  end

end