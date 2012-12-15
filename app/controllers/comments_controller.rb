class CommentsController < ApplicationController
  # /items/1/comment
  def create
    #why item_id? not :id
    @item = Item.find(params[:item_id])
    @comment = @item.comments.create(params[:comment])
    redirect_to item_path(@item)
  end
end
