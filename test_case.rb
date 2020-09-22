#test_case_1
require 'selenium-webdriver'
driver = Selenium::WebDriver.for:chrome
driver.get 'http://google.com'
sleep 4
driver.quit
#test_case_2
require 'selenium-webdriver'
driver = Selenium::WebDriver.for:chrome
driver.get 'http://google.com'
driver.manage.window.maximize
sleep 4
driver.quit
#test_case_3
require 'selenium-webdriver'
driver = Selenium::WebDriver.for:chrome
driver.get 'http://google.com'
driver.manage.window.maximize
puts driver.title
sleep 4
driver.quit
#test_case_4
require 'selenium-webdriver'
driver = Selenium::WebDriver.for:chrome
driver.get 'http://google.com'
driver.manage.window.maximize
puts driver.current_url
sleep 4
driver.quit
#test_case_5
require 'selenium-webdriver'
driver = Selenium::WebDriver.for:chrome
driver.get 'http://google.com'
driver.manage.window.maximize
puts driver.page_source
sleep 4
driver.quit
#test_case_6
require 'selenium-webdriver'
driver = Selenium::WebDriver.for:chrome
driver.get 'http://google.com'
#size
driver.manage.window.maximize
#get_page_title
puts driver.title
# search_with_send_keys
texbox = driver.find_element(:name, "q")
texbox.send_keys("iTMS Coaching")
sleep 4
driver.quit
#test_case_7
require 'selenium-webdriver'
driver = Selenium::WebDriver.for:chrome
driver.get 'https://itmscoaching.herokuapp.com/form?fbclid=IwAR1QS-ypN6kfLN1ctYSaHt0cT1WY-B8wG4fnTv5iUyg8WWkCz0rO2wEd9S4'
#size
driver.manage.window.maximize
# search_with_send_keys
#first_name
texbox = driver.find_element(:id, "first-name")
texbox.send_keys("iTMS")
#last_name
texbox_1 = driver.find_element(:id, "last-name")
texbox_1.send_keys("Coaching")
#job
texbox_2 = driver.find_element(:id, "job-title")
texbox_2.send_keys("QA")
#level
level = driver.find_element(:id,'radio-button-2').click
#sex
sex = driver.find_element(:id,'checkbox-1').click
#drop_down_list
dropdowns = driver.find_element(id: "select-menu")
puts dropdowns.inspect
select_object = Selenium::WebDriver::Support::Select.new(dropdowns)
select_object.select_by(:text, "2-4")
#date
date = driver.find_element(:id,'datepicker')
date.send_keys '27/10/2025'
#submit
submit = driver.find_element(:link_text,'Submit').click
sleep 4
driver.quit