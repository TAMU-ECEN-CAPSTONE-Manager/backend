Given('I am at homepage') do
  visit '/' # Write code here that turns the phrase above into concrete actions
end

When('I click on Sponsor Student Project button') do
  visit '/welcome/sponsorprojectsubmission'# Write code here that turns the phrase above into concrete actions
end

Then('I should see sponsor student project page') do
  expect(page).to have_current_path("/welcome/sponsorprojectsubmission") # Write code here that turns the phrase above into concrete actions
end