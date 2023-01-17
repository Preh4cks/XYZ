# 15-01-23
# Author: Arjhay Frias
# email: arjhaycambafrias@gmail.com

# Author Creation
hartse = Author.create(first_name: "Joel", last_name: "Hartse")
templer = Author.create(first_name: "Hannah", middle_name: "Pokemon", last_name: "Templer")
duras = Author.create(first_name: "Marguerite", middle_name: "Zelda", last_name: "Duras")
amis = Author.create(first_name: "Kingsley", last_name: "Amis")
flagg = Author.create(first_name: "Fannie", middle_name: "Peters", last_name: "Flagg")
pagila = Author.create(first_name: "Camille", middle_name: "Byron", last_name: "Pagila")
rilke = Author.create(first_name: "Rainer", middle_name: "Steel", last_name: "Rilke")
slim = Author.create(first_name: "Iceberg Nash", last_name: "Slim")

# Publisher Creation
magazine = Publisher.create(name: "Paste Magazine")
weekly = Publisher.create(name: "Publishers Weekly")
press = Publisher.create(name: "Graywolf Press")
mcsweeneys = Publisher.create(name: "McSweeneys")
top_shelf_production = Publisher.create(name: "Top Shelf Productions")

# Book Creation
american_elf = Book.create(publisher_id: magazine.id, title: "American Elf", isbn_10: "1891830856", isbn_13: "9781891830853", price: 1000, publication_year: 2004, image: "american_elf.png", edition: "Book 2")
cosmoknights = Book.create(publisher_id: weekly.id, title: "Cosmoknights", isbn_10: "1603094547", isbn_13: "9781603094542", price: 2000, publication_year: 2019, image: "cosmoknights.png", edition: "Book 1")
essex_county = Book.create(publisher_id: press.id, title: "Essex County", isbn_10: "160309038X", isbn_13: "9781603090384", price: 500, publication_year: 1990, image: "essex_county.png")
hey_mister_vol1 = Book.create(publisher_id: press.id, title: "Hey, Mister (Vol 1)", isbn_10: "1891830023", isbn_13: "9781891830020", price: 1200, publication_year: 2000, image: "hey_mister_vol1.png", edition: "After School Special")
the_underwater_welder = Book.create(publisher_id: mcsweeneys.id, title: "The Underwater Welder", isbn_10: "1603093982", isbn_13: "9781603093989", price: 3000, publication_year: 2022, image: "the_underwater_welder.png")
doughnuts_and_doom = Book.create(publisher_id: mcsweeneys.id, title: "Doughnuts And Doom", isbn_10: "1603095136", isbn_13: "9781603095136", price: 100, publication_year: 2022, image: "doughnuts_and_doom.png")
the_bend_of_luck = Book.create(publisher_id: top_shelf_production.id, title: "The Bend of Luck", isbn_10: "1603095098", isbn_13: "9781603095099", price: 1000, publication_year: 2022, image: "the_bend_of_luck.png")

# Author Book Attachment
AuthorBook.create(book_id: american_elf.id, author_id: hartse.id)
AuthorBook.create(book_id: american_elf.id, author_id: templer.id)
AuthorBook.create(book_id: american_elf.id, author_id: duras.id)
AuthorBook.create(book_id: cosmoknights.id, author_id: amis.id)
AuthorBook.create(book_id: essex_county.id, author_id: amis.id)
AuthorBook.create(book_id: hey_mister_vol1.id, author_id: templer.id)
AuthorBook.create(book_id: hey_mister_vol1.id, author_id: flagg.id)
AuthorBook.create(book_id: hey_mister_vol1.id, author_id: pagila.id)
AuthorBook.create(book_id: the_underwater_welder.id, author_id: rilke.id)
AuthorBook.create(book_id: doughnuts_and_doom.id, author_id: templer.id)
AuthorBook.create(book_id: doughnuts_and_doom.id, author_id: duras.id)
AuthorBook.create(book_id: doughnuts_and_doom.id, author_id: slim.id)
AuthorBook.create(book_id: doughnuts_and_doom.id, author_id: pagila.id)
AuthorBook.create(book_id: the_bend_of_luck.id, author_id: hartse.id)
AuthorBook.create(book_id: the_bend_of_luck.id, author_id: duras.id)
AuthorBook.create(book_id: the_bend_of_luck.id, author_id: rilke.id)