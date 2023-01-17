class HomeController < ApplicationController
  def index
    rec_books = ["9781603095136", "9781603095099", "9781603093989"] # Recommended Books
    @book_list = Book.where(isbn_13: rec_books[0]).or(Book.where(isbn_13: rec_books[1])).or(Book.where(isbn_13: rec_books[2]))
  end
end
