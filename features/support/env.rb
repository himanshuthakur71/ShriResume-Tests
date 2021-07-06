require "selenium-webdriver"




Before do
	options = Selenium::WebDriver::Chrome::Options.new(args: ['start-maximized', '--ignore-certificate-errors', '--disable-popup-blocking', '--disable-translate',   '--incognito'])
	$driver = Selenium::WebDriver.for(:chrome, options: options)
end

After do
	$driver.quit
end

# 'user-data-dir=/tmp/temp_profile',  '--incognito', '--headless', '--verbose',