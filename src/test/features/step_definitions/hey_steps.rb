Given /^I visit the main page$/ do
 #puts ENV.inspect
 @driver.navigate.to "http://localhost:8080/resteasy-hey-world/static/index.html"
end
Then /^I should be greeted with "([^"]*)"$/ do |greeting|
  greeting = @driver.find_element(:tag_name, "h1")
  greeting.text.should eq(greeting)
end