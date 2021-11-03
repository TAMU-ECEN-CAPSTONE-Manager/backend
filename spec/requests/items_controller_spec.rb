require 'rails_helper'

RSpec.describe "ItemsControllers", type: :request do
  describe 'Inventory Management Page' do
    render_views
    it 'Inventory Populates properly into the index page if there is a match for an inventory item' do
      item1 = Item.create({:name => 'Stepper Motor', :category => 'Motors', :quantity => '5', :inInventory => '5', :description => 'brushless, synchronous electric motor that converts digital pulses to mechanical shaft rotation'})
      item2 = Item.create({:name => 'Raspberry Pi', :category => 'Microprocessors', :quantity => '3', :inInventory => '3', :description => 'low cost, credit-card sized computer that plugs into a computer monitor or TV'})
      get :show, :id => item1.id
      expect(response).to be_successful
      expect(response.body).to include("Raspberry Pi")
    end
    it 'Redirects to Inventory Page if there are no matches for the item being queried' do
      item1 = Item.create({:name => 'Raspberry Pi', :category => 'Microprocessors', :quantity => '3', :inInventory => '3', :description => 'brushless, synchronous electric motor that converts digital pulses to mechanical shaft rotation'})
      get :show, :id => item1.id
      response.code.should == "302"
      response.should redirect_to(items_path)
    end
  end
end
