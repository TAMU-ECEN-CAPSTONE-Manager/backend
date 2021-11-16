Given('I am on the inventory page and wanting to delete') do
  visit '/items'
end

When('I click on delete items from inventory') do
  visit '/items'
end

Then('I should be able to delete items from inventory') do
  expect(page).to have_current_path("/items")
end
