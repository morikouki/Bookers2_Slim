class BooksController < ApplicationController

	def index
		@books = Book.all
		@new_book = Book.new
	end

	def show
	end

	def create
		book = current_user.books.new(book_params)
		book.save
		redirect_to user_path(current_user)
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
	def book_params
		params.require(:book).permit(:title, :body, :user_id)
	end
end
