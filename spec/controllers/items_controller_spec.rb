require 'rails_helper'

RSpec.describe ItemsController, type: :controller do
  render_views
  describe 'Inventory Management Page' do
    it 'Data Populates properly into the inventory page' do
      Item.create({:name => 'Stepper Motor', :category => 'Motors', :quantity => '5', :inInventory => '5', :description => 'brushless, synchronous electric motor that converts digital pulses to mechanical shaft rotation'})
      get :index
      expect(response).to be_successful
      expect(response.body).to include("Stepper Motor")
    end

    it 'Inventory displays all elements in order of database entry' do
      item1 = Item.create({:name => 'Stepper Motor', :category => 'Motors', :quantity => '5', :inInventory => '5', :description => 'brushless, synchronous electric motor that converts digital pulses to mechanical shaft rotation'})
      item2 = Item.create({:name => 'Raspberry Pi', :category => 'Microprocessors', :quantity => '3', :inInventory => '3', :description => 'low cost, credit-card sized computer that plugs into a computer monitor or TV'})
      get :index
      expect(response).to be_successful
      expect(response.body).to include("Stepper Motor")
      expect(response.body).to include("Raspberry Pi")
      expect(response.body.index("Stepper Motor") < response.body.index("Raspberry Pi"))
    end

    it 'Should delete an inventory item based on parameters passed and then redirect to inventory page' do
      item = Item.create({:name => 'Raspberry Pi', :category => 'Microprocessors', :quantity => '3', :inInventory => '3', :description => 'brushless, synchronous electric motor that converts digital pulses to mechanical shaft rotation'})
      get :destroy, params: { id: item.id }
      response.code.should == "302"
      response.should redirect_to(items_path)
    end
  end
end
