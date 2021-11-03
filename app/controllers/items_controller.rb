class ItemsController < ApplicationController
  before_action :current_item, only: [:show, :edit, :update, :destroy]

  def index
    @items = Item.all
  end

  def show
  end

  def new
    @items = Item.new
  end

  def create
    item = Item.create(item_params)
    redirect_to item_path(item)
  end

  def destroy
    @item.destroy
    flash[:notice] = "#{@item.name} deleted"
    redirect_to items_path
  end

  def update
    @item.update(item_params)
    flash[:notice] = "#{@item.name} was successfully updated"
    redirect_to item_path(@item)
  end

  def edit
  end

  private

  def item_params
    params.require(:item).permit(:name, :category, :quantity, :inInventory, :description)
  end

  def current_item
    id = params[:id] 
    @item = Item.find(id)
  end

end
