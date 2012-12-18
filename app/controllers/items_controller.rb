#get /items
class ItemsController < ApplicationController
  http_basic_authenticate_with :name=> "mht", :password=>"rocks", :except=>[:index,:item]
def index
  @items = Item.all
  respond_to do |format|
    format.html
  end
end 

  #get /items/1
  def show
    @item = Item.find(params[:id])
    respond_to do |format|
      format.html
    end
  end

  #get /items/1/edit
  def edit
    #why the respond_to is not needed, how does rails know which view it redirects to
    @item = Item.find(params[:id])
  end

  #get /items/new
  def new
    @item = Item.new

    respond_to do |format|
      format.html
    end
  end

  #put /items/1
  def update
    @item = Item.find(params[:id])
    respond_to do |format|  
      if @item.update_attributes(params[:item])
        format.html { redirect_to @item }
      end  
    end
  end

  def create
    @item = Item.create(params[:item])
    respond_to do |format|
      if @item.save
        format.html { redirect_to @item }
      end
    end
  end

  #delete /items/1
  def destroy
    @item = Item.find(params[:id])
    @item.destroy
    respond_to do |format|
      format.html {redirect_to items_url }
    end
  end
end
