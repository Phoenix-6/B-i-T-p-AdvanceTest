require 'rubygems'
require 'selenium-webdriver'
driver = Selenium::WebDriver.for:chrome
driver.get 'http://www.practiceselenium.com/check-out.html'
dropdowns = driver.find_element(id: "card_type")
puts dropdowns.inspect
select_object = Selenium::WebDriver::Support::Select.new(dropdowns)
select_object.select_by(:index, 0)
sleep 5
driver.quit