class MenuItemsController < ApplicationController
  def index
    @menu_items = MenuItem.all
  end

  def show
    @menu_item = MenuItem.find(params[:id])
  end

  def new
    @menu_item = MenuItem.new
  end

  def create
    @menu_item = MenuItem.new
    @menu_item.restaurant_id = params[:restaurant_id]
    @menu_item.photo = params[:photo]
    @menu_item.availability = params[:availability]
    @menu_item.description = params[:description]
    @menu_item.menu_item_name = params[:menu_item_name]

    if @menu_item.save
      redirect_to "/menu_items", :notice => "Menu item created successfully."
    else
      render 'new'
    end
  end

  def edit
    @menu_item = MenuItem.find(params[:id])
  end

  def update
    @menu_item = MenuItem.find(params[:id])

    @menu_item.restaurant_id = params[:restaurant_id]
    @menu_item.photo = params[:photo]
    @menu_item.availability = params[:availability]
    @menu_item.description = params[:description]
    @menu_item.menu_item_name = params[:menu_item_name]

    if @menu_item.save
      redirect_to "/menu_items", :notice => "Menu item updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @menu_item = MenuItem.find(params[:id])

    @menu_item.destroy

    redirect_to "/menu_items", :notice => "Menu item deleted."
  end
end
