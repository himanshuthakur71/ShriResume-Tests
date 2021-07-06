require_relative 'home_page'

class AbstractPage

 
 def naviagteToAppRoot(url)
	$driver.navigate.to url
      return HomePage.new
 end	
 
end