Given 'I am on the Google search page' do
  visit('http://www.google.com/')
end

When /I search for "(.*)"/ do |query|
  fill_in('q', :with => query)
  click_button 'Google Search'
  selenium.wait_for_page_to_load
end

Then /I should see a link to "(.*)"/ do |expected_url|
  contain expected_url
end

Then /the page should contain the phrase "(.*)"/ do |text|
  contain(text)
end

And /I click on the link "(.*)"/ do |url|
  click_link url
end