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

When(/^I choose Paper!$/) do
	click_link('Paper!')
end

# Had to use string instead of interpolated regex-return to make it work

Given(/^I am on the page "(.*?)"$/) do |page|
	visit page
end

Then(/^I can click the button "(.*?)"$/) do |button|
	click_button (button)
end

When(/^I choose Rock!$/) do
	save_and_open_page
	expect(page).to have_content("Rock")
end

When(/^I win$/) do
	
end

When(/^I loose$/) do
  pending # express the regexp above with the code you wish you had
end