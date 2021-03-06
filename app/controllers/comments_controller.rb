class CommentsController < ApplicationController
  http_basic_authenticate_with :name=> "mht", :password=>"rocks"
  # /items/1/comment
  def create
    #why item_id? not :id
    @item = Item.find(params[:item_id])
    @comment = @item.comments.create(params[:comment])
    redirect_to item_path(@item)
  end

  #delete /items/4/comment/4
  def destroy
    @item = Item.find(params[:item_id])
    @comment = @item.comments.find(params[:id])
    @comment.destroy
    redirect_to item_path(@item)
  end

end
