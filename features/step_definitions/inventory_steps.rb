Given('I am at the main website') do
  visit '/'
end

When('I click on inventorymanagement button') do
  visit '/items'
end

Then('I should see items page') do
  expect(page).to have_current_path("/items")
end
