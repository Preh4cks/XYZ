class BooksController < ApplicationController
  def show 
    isbn = params[:id]
    isbn.delete! "-"

    if is_valid_isbn(isbn)
      @book = Book.where(isbn_10: isbn).or(Book.where(isbn_13: isbn)).first
      puts @book.inspect
    else
      puts "NOT VALID"
    end
  end
  
  private
  # DOCU: Validate ISBN-10 or ISBN-13
  # @param isbn string
  # @return boolean
  def is_valid_isbn(isbn)
    total = 0

    if(isbn.length == 13)      
      (0..isbn.length - 2).each do |i|
        num = isbn[i]

        # Alternate between 1 and 3 multipliers
        if(i % 2 == 0) 
          total += num.to_i * 1
        else
          total += num.to_i * 3
        end
      end

      # Check if the it equates to the last number
      if((10 - (total%10)) == isbn[-1].to_i)
        puts total%10
        return true
      end
    elsif(isbn.length == 10)
      mul = 10

      (0..isbn.length).each do |i|
        num = isbn[i]
        if(num == "X" || num == "x")
          num = 10
        else 
          num = num.to_i
        end

        total += num * mul
        mul -= 1
      end
    
      if((total % 11) == 0)
        return true
      end
    end

    return false
  end
end
