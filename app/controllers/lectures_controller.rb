class LecturesController < ApplicationController

  # before_action :lecture_params
  
  def index
    # @lecture = Lecture.new
    @period = Period.new

    @name = Lecture.all
    
  end

  def form
    @lecture = Lecture.new
    # @period = Period.new
  end

  def create
    @lecture = Lecture.create(lecture_params)
    if @lecture.save 
      flash.now[:alert] = "ok"
      # console.log("OK")
      render :index
    else
      console.log("NO")
    end
  end

  def new
    # @lecture = Lecture.new
  end

  def lecture_params
    params.require(:lecture).permit(:name, :day, :pdf1, :pdf2, :pdf3, :pdf4, :pdf5).merge(period_id: params[:period_id])
  end

  # def downloadpdf
  #   myfile=Myfile.find(params[:id])
  #   filepath = Rails.root.join('public',file_name)
  #   stat = File::stat(filepath)
  #   send_file(filepath, :filename => file_name, :length => stat.size)
  # end

  private

  # def lecture_params
  #   # params.permit(:name, :day, :pdf1, :pdf2, :pdf3, :pdf4, :pdf5, :period_id)
  #   params.require(:lecture).permit(:name, :day, :pdf1, :pdf2, :pdf3, :pdf4, :pdf5, :period_id)
  # end


end
