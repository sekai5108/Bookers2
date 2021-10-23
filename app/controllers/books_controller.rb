class BooksController < ApplicationController

  def new
  end

  def create
  end

  def index
    @books = Book.all
    @book = Book.new
    @book.user_id = current_user.id
  end

  def show
  end

  def destroy
  end

end
