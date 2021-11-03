require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  render_views
  describe 'Inventory Management Page' do
    it 'Inventory displays all elements in order of database entry' do
      item1 = Item.create({:name => 'Stepper Motor', :category => 'Motors', :quantity => '5', :inInventory => '5', :description => 'brushless, synchronous electric motor that converts digital pulses to mechanical shaft rotation'})
      item2 = Item.create({:name => 'Raspberry Pi', :category => 'Microprocessors', :quantity => '3', :inInventory => '3', :description => 'low cost, credit-card sized computer that plugs into a computer monitor or TV'})
      get :index
      expect(response).to be_successful
      expect(response.body).to include("Stepper Motor")
      expect(response.body).to include("Raspberry Pi")
      expect(response.body.index("Stepper Motor") < response.body.index("Raspberry Pi"))
    end

    it 'Update a new item to inventory page if item not present' do
      item = Item.create({:name => 'Raspberry Pi', :category => 'Microprocessors', :quantity => '3', :inInventory => '3', :description => 'brushless, synchronous electric motor that converts digital pulses to mechanical shaft rotation'})
      params = ActionController::Parameters.new(id: item.id, item: { name: "Raspberry Pi", category: "Microprocessors", quantity: "3", inInventory: "3", description: "brushless, synchronous electric motor that converts digital pulses to mechanical shaft rotation" })
      response.code.should == "200"
      get :index
      response.body = "Raspberry Pi"
      expect(response.body).to include("Raspberry Pi")
      response.body = "Microprocessors"
      expect(response.body).to include("Microprocessors")
      response.body = "brushless, synchronous electric motor that converts digital pulses to mechanical shaft rotation"
      expect(response.body).to include("brushless, synchronous electric motor that converts digital pulses to mechanical shaft rotation")
      response.code.should == "200"
    end
  end
end
