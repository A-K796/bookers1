class BooksController < ApplicationController
	def index
		@book = Book.new
		@books = Book.all
	end

	def show
		@book = Book.find(params[:id])
	end

	def edit
		@book = Book.find(params[:id])
	end

	def destroy
		@book = Book.find(params[:id])
		book.destroy
		redirect_to books_path
	end
end
