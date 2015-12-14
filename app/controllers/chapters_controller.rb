class ChaptersController < ApplicationController

  def show
    @course = Course.find(params[:course_id])
    @chapter = Chapter.find(params[:id])
  end
end
