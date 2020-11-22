class UsersController < ApplicationController

	def index
	end

	def create
	end

	def show
		@new_book = Book.new
		@books = current_user.books
	end

	def edit
		
	end

	def update
	end

	def destroy
	end

	private
	def user_params
		params.require(:user).permit(:profile_image, :introduction, :name, :email)
	end
end
