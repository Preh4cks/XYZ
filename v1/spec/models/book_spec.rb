require 'rails_helper'

RSpec.describe Book, type: :model do
  it "Book.check_isbn10 should return true if isbn given is valid" do
    expect(Book.check_isbn10("1891830856")).to eq(true)
  end
  it "Book.check_isbn10 should return false if isbn given is less than or greater than 10" do
    expect(Book.check_isbn10("18918308")).to eq(false)
    expect(Book.check_isbn10("189183085678")).to eq(false)
  end
  
  it "Book.check_isbn13 should return true if isbn given is valid" do
    expect(Book.check_isbn13("9781891830853")).to eq(true)
  end

  it "Book.check_isbn13 should return false if isbn given is less than or greater than 13" do
    expect(Book.check_isbn13("9781891830")).to eq(false)
    expect(Book.check_isbn13("9781891830853589")).to eq(false)
  end

  it "Book.check_isbn13 should return false if isbn given is already in the database" do
    magazine = Publisher.create(name: "Paste Magazine")
    test1 = Book.create(publisher_id: magazine.id, title: "American Elf", isbn_10: "1891830856", isbn_13: "9781891830853", price: 1000, publication_year: 2004, image: "american_elf.png", edition: "Book 2")
    test2 = Book.create(publisher_id: magazine.id, title: "American Elf", isbn_10: "1891830856", isbn_13: "9781891830853", price: 1000, publication_year: 2004, image: "american_elf.png", edition: "Book 2")
    expect(test2.errors.full_messages.length).to be >= 1
  end
end