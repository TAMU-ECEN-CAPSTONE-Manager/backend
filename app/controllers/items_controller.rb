class ItemsController < ApplicationController
  before_action :current_item, only: [:show, :edit, :update, :destroy]
  before_action :issue_item, only: [:issue, :checkout]
  before_action :return_item, only: [:return, :returning]

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

  def issue
  end

  def checkout
    vars = request.query_parameters
    total = vars['total'].to_i
    checkout = vars['checkout'].to_i
    if checkout > total
      flash[:error] = "#{@item.name} is not possible to do. More number of items requested for checkout, than actually available in inventory"
      redirect_to issue_item_path(@item) and return
    end
    @item.update(:inInventory => total - checkout)
    redirect_to item_path(@item)
  end

  def return
  end

  def returning
    vars = request.query_parameters
    total = vars['quantity'].to_i
    inventory = vars['inInventory'].to_i
    returning = vars['return'].to_i
    if returning + inventory > total
      flash[:error] = "#{@item.name} exceeds the total number of items of this type, return exact number of items"
      redirect_to return_item_path(@item) and return
    end
    @item.update(:inInventory => returning + inventory)
    redirect_to item_path(@item)
  end

  private

  def item_params
    params.require(:item).permit(:name, :category, :quantity, :inInventory, :description)
  end

  def issue_params
    params.require(:item).permit(:total, :checkout)
  end

  def issue_item
    id = params[:id]
    @item = Item.find(id)
  end

  def return_params
    params.require(:item).permit(:quantity, :inInventory, :return)
  end

  def return_item
    id = params[:id]
    @item = Item.find(id)
  end

  def current_item
    id = params[:id] 
    @item = Item.find(id)
  end

end
