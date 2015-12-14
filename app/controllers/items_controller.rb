class ItemsController < ApplicationController
  def show
    @chapter = Chapter.find(params[:chapter_id])
    @item = Item.find(params[:id])
  end
end