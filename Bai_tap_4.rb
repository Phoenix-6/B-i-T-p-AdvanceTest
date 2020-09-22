require 'selenium-webdriver'
driver = Selenium::WebDriver.for:chrome
begin
driver.get 'http://google.com'
puts driver.current_url
puts driver.title
driver.save_screenshot('./screenshot.png')
driver.quit
end