Given('I am at the inventory management page') do
  visit '/items'
end

When('I click on add items to inventory') do
  visit '/items/new'
end

Then('I should be able to see add items to inventory page') do
  expect(page).to have_current_path("/items/new")
end
