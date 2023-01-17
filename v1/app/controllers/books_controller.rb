class BooksController < ApplicationController
  def show 
    if(params[:id]) 
      isbn = params[:id]
      isbn.delete! "-"

      if is_valid_isbn(isbn)
        @book = Book.where(isbn_10: isbn).or(Book.where(isbn_13: isbn)).first
        @authors = get_authors()
        isbn_append_dash()
      end
    end
  end
  
  private
  # DOCU: Validate ISBN-10 or ISBN-13
  # @param isbn string
  # @return boolean
  def is_valid_isbn(isbn)
    if(isbn.length == 13)     
      return Book.check_isbn13(isbn)
    elsif(isbn.length == 10)
      return Book.check_isbn10(isbn)
    end

    return false
  end

  # Append Dash to ISBN 13
  def isbn_append_dash 
    [3, 5, 8, 15].each { |i| @book.isbn_13.insert i, '-' }
  end

  # Get Book Authors Separated by comma
  # @return string
  def get_authors
    return @book.authors.map{ |p| 
      p.first_name + " " + # First Name
      (!(p.middle_name == nil) ? p.middle_name[0].capitalize() + ". " : " ") +  # Check Middle Name then Abbriviate
      p.last_name } # Last Name
      .join(", ") # Combine all with comma
  end
end
