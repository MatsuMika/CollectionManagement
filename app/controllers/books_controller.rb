class BooksController < ApplicationController

	def new
		@book = Book.new
	end

	def index
		@books = Book.all
	end

	def create
    @book = Book.new(book_params)
    if @book.save
    	redirect_to books_path, notice: "書籍を追加しました"
    else
    	render :new
		end
	end

	def show
		@book = Book.find(params[:id])
	end

	def edit
		@book = Book.find(params[:id])
	end

	def update
    @book = Book.find(params[:id])
    if @book.update(book_params)
    	redirect_to book_path(product.id), notice: "書籍情報を変更しました"
    else
  		render :edit
		end
	end

  def destroy
  	@book = Book.find(params[:id])
  	@book.destroy
  	redirect_to books_path, notice: "削除しました"
  end

	private
	def book_params
	  params.require(:book).permit(:category_id, :image, :title, :book_num, :author_name, :publisher, :memo)
	end
end
