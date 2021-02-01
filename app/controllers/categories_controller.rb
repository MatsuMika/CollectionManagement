class CategoriesController < ApplicationController

  def index
    @category = Category.new
    @categories = Category.all
  end

  def create
    @category = Category.new(category_id)
    if @category.save
       redirect_to category_path(@category_id), notice: "ジャンルを追加しました"
    else
      @categories = Category.all
      render :index
    end
  end

  def edit
  	@category = Category.find(params[:id])
  end

  def update
  	@category = Category.find(params[:id])
  	if @category.update(category_params)
  	   redirect_to category_path(@category_id), notice: "ジャンルを変更しました"
  	else
  	  render :edit
  	end
  end

  def destroy
  	@category = Category.find(params[:id])
  	@category.destroy
  	redirect_to admins_categories_path, notice: "削除しました"
  end

  private

  def category_params
  	params.require(:category).permit(:category_name, :is_active)
  end
end
