class ItemsController < ApplicationController
  def show
    @course = Course.friendly.find(params[:course_id])
    @chapter = @course.chapters.friendly.find(params[:chapter_id])
    @item = @chapter.items.friendly.find(params[:id])
  end
end