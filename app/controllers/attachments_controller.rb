class AttachmentsController < ApplicationController
  def create
    @item = Item.find(params[:item_id])
    @attachment = @item.attachments.create(params[:attachment])
    redirect_to item_path(@item)
  end

  #/items/7/attachments/5
  def destroy
    @item = Item.find(params[:item_id])
    @attachment = @item.attachments.find(params[:id])
    @attachment.destroy
    redirect_to item_path(@item)
  end
end
