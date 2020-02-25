class ReprintController < ApplicationController

  def index
    @reprint = Reprint.new
    @reprints = Reprint.all
  end

  def list
  end

  def create
    @reprint = Reprint.create(reprint_params)
    
    if @reprint.save
      redirect_to reprint_index_path, notice: "登録に成功しました"
    else
      redirect_to reprint_index_path, notice: "登録に失敗しました"
    end
  end

  def destroy
    reprint = Reprint.find(params[:id])
    if reprint.delete
      redirect_to reprint_index_path, alert: '削除しました'
    else
      redirect_to reprint_index_path, alert: '削除できませんでした'
    end
  end

  def reprint_params
    params.require(:reprint).permit(:author, :book, :company, :year)
  end

end
