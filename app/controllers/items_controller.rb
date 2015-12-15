class ItemsController < ApplicationController
  def show
    @chapter = Chapter.find(params[:chapter_id])
    @course = Course.find(params[:course_id])
    @item = Item.find(params[:id])
  end
end