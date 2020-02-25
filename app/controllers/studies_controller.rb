class StudiesController < ApplicationController

  def index
    @study = Study.new
    @studies = Study.all
  end

  def create
    @study = Study.create(study_params)
    if @study.save
      redirect_to studies_path, notice: "登録完了しました。"
    else 
    end
  end

  def destroy
    study = Study.find(params[:id])
    if study.delete
      redirect_to studies_path, alert: '削除完了しました。'
    else

    end
  end

  def study_params
    params.require(:study).permit(:book, :details, :url)
  end

end
