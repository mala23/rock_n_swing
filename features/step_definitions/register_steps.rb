Given(/^I see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

Given(/^I fill in the form "(.*?)"$/) do |field|
  fill_in (field), :with => 'Jimmy'
end

When(/^I click the button "(.*?)"$/) do |button|
  click_button (button)
end

Then(/^I should see "(.*?)"$/) do |text|
  expect(page).to have_content(text)
end

When(/^I choose "(.*?)"$/) do |link|
  click_link(link)
end

Then(/^I can click on "(.*?)"$/) do |arg1|
  pending # express the regexp above with the code you wish you had
end

Given(/^I am on the page "(.*?)"$/) do |page|
	visit page
end