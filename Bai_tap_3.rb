require 'selenium-webdriver'
driver = Selenium::WebDriver.for:chrome
driver.get 'https://www.seleniumeasy.com/test/javascript-alert-box-demo.html?fbclid=IwAR0Lig3EXQpxc0knNUjHRNaaCiisgHtib95OaIzEIxNeLfCBRHN6Au-_5u4'
button = driver.find_element(:class, "btn btn-default")
alert = driver.switch_to.alert.accept
button_1 = driver.find_element(:class, "btn btn-default btn-lg")
alert = driver.switch_to.alert.dismiss
sleep 5
driver.quit