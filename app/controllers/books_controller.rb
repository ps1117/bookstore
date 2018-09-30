class BooksController < ApplicationController
  def new
    @page_title = "Add New Book"
    @book = Book.new
    @author = Author.new
  end

  def edit
    @book = Book.find_by(id: params[:id])
  end

  def create
    @book = Book.new(book_params)
    @book.save
    flash[:notice] = "Book Added"
    redirect_to books_path
  end

  def show
    @book = Book.find_by(id: params[:id])
  end

  def destroy
    @book = Book.find_by(id: params[:id])
    @book.destroy
    flash[:notice] = "Books Removed"
    redirect_to books_path
  end

  def index
    @books = Book.all
  end

  def update
    @book = Book.find_by(id: params[:id])
    @book.update_attributes(book_params)
    flash[:notice] = "Books Updated"
    redirect_to books_path
  end

  private

  def book_params
    params.require(:book).permit(:name, :isbn, :price, :published_date, :description, :image)
  end
end
