require_relative '../pages/home_page'
File.join(File.dirname(__FILE__), "testdata")

Given("I am on the loginpage") do
@app = AbstractPage.new
  .naviagteToAppRoot(BASEURL)
  .visitLogin
end                                                                          

When("I log in") do
@app = LoginPage.new
  .fillInEmail_login(USER_EMAIL)
  .fillInPassword_login(USER_PASSWORD)                                            
  .clickOnSigin
end                                                                           

Then("I should see Deshboard Page") do
@app = DeshboardPage.new
  .verifyUserLogin("Himanshu")
end 

Then("I should see validation error") do
  sleep(2)                  
  $driver.page_source.to_s.include? "Invalid Email or password."
end 

When("I try invaild log in") do
@app = LoginPage.new
  .fillInEmail_login(USER_EMAIL)
  .fillInPassword_login("INVAILD PASSWORD")                                            
  .clickOnSigin
end                                                                       
