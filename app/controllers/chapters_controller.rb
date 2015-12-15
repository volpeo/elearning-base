class ChaptersController < ApplicationController

  def show
    @course = Course.friendly.find(params[:course_id])
    @chapter = @course.chapters.friendly.find(params[:id])
  end
end
