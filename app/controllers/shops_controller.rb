class ShopsController < ApplicationController
  #/shops
  def index
    @shops = Shop.all

    respond_to do |format|
      format.html
    end
  end

  #/shops/new
  def new
    @shop = Shop.new

    respond_to do |format|
      format.html
    end
  end

  #/shops/create
  def create
    @shop = Shop.new(params[:shop])

    respond_to do |format|
      if @shop.save
        format.html { redirect_to(@shop,
                      :notice => 'shop is succesfully created.')
                    }
      else
        format.html {
                      render :action => 'new'                 
                    }
      end
    end
  end

  def show
    @shop = Shop.find(params[:id])

    respond_to do |format|
      format.html
    end
  end

  def destroy
    @shop = Shop.find(params[:id])
    @shop.destroy
    
    respond_to do |format|
      format.html {redirect_to shops_url}
    end
  end
end
