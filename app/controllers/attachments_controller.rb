class AttachmentsController < ApplicationController
  def create
    @item = Item.find(params[:item_id])
    @attachment = @item.attachments.create(params[:attachment])
    redirect_to item_path(@item)
  end
end
