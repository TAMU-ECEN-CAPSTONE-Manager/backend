Given('I am at home') do
  visit '/' # Write code here that turns the phrase above into concrete actions
end

When('I click on studenthome button') do
  visit '/welcome/studenthome'# Write code here that turns the phrase above into concrete actions
end

Then('I should see studenthome page') do
  expect(page).to have_current_path("/welcome/studenthome") # Write code here that turns the phrase above into concrete actions
end
