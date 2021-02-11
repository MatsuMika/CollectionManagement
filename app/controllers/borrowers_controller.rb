class BorrowersController < ApplicationController
  def new
  	@borrower = Borrower.new
  end

  def index
    @borrowers = Borrowers.all
  end

  def create
    @borrower = Borrower.new(category_params)
    if @borrower.save
       redirect_to borrowers_path(@borrower), notice: "会員を登録しました。"
    else
      render :new
    end
  end

  def edit
  	@borrower = Borrower.find(params[:id])
  end

  def update
  	@borrower = Borrower.find(params[:id])
  	if @borrower.update(borrower_params)
  	   redirect_to borrowers_path(@borrower.id), notice: "会員情報を変更しました"
  	else
  	  render :edit
  	end
  end

  def destroy
  	@borrower = Borrower.find(params[:id])
  	@borrower.destroy
  	redirect_to borrowers_path, notice: "会員情報を削除しました"
  end

  private

  def borrower_params
  	params.require(:borrower).permit(:name, :name_kana, :address, :phone, :remarks)
  end
end
