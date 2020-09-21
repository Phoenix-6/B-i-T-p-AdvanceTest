
require 'selenium-webdriver'
driver = Selenium::WebDriver.for:chrome
driver.get 'http://google.com'
TextBox = driver.find_element(name: "q")
TextBox.send_keys("autotest")
Button = driver.find_element(name: "btnK")
Button.click
sleep 4
driver.quit