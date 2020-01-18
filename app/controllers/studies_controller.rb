class StudiesController < ApplicationController

  def index
    @study = Study.new
  end

  def create
    @study = Study.create(study_params)
    @study.save
  end

  def study_params
    params.require(:study).permit(:book, :details, :url)
  end

end
