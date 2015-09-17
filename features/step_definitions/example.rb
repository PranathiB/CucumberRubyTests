require_relative '../../features/my_example'

Given(/^I open the browser and navigate to google$/) do
  @my_example =MyExample.new
  @my_example.open 'http://www.google.com'
end


When(/^I enter "([^"]*)"$/) do |queryString|
  # @driver.find_element(:id, 'lst-ib').send_key queryString
  @my_example.enter_query queryString

end


Then(/^I should see results related to "([^"]*)"$/) do |queryString|
  @my_example.click_on_first_result
  @my_example.get_page_title.eql? 'Agile Development and Experience Design | ThoughtWorks'

end