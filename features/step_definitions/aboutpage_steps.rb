Given('I am on homepage') do
  visit '/' # Write code here that turns the phrase above into concrete actions
end

When('I click on about button') do
  visit '/welcome/about' # Write code here that turns the phrase above into concrete actions
end

Then('I should see about page') do
  expect(page).to have_current_path("/welcome/about") # Write code here that turns the phrase above into concrete actions
end

Then('I should view about page content') do
  expect(page).to have_content("About ECEN Capstone") # Write code here that turns the phrase above into concrete actions
end