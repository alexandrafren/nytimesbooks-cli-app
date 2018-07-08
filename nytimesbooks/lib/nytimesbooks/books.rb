class Nytimesbooks::Book

doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/?action=click&contentCollection=books&region=navbar&module=collectionsnav&pagetype=sectionfront&pgtype=sectionfront"))

  def combined_fiction
    puts "Combined Print & E-Book Fiction"
    book_1 = self.new
    book_2 = self.new
    book_3 = self.new
    book_4 = self.new
    book_5 = self.new
    [book_1, book_2, book_3, book_4, book_5]
  end

  def hardcover_fiction
    puts "Hardcover Fiction"
    book_1 = self.new
    book_2 = self.new
    book_3 = self.new
    book_4 = self.new
    book_5 = self.new
    [book_1, book_2, book_3, book_4, book_5]
  end

  def combined_nonfiction
    puts "Combined Print & E-Book Nonfiction"
    book_1 = self.new
    book_2 = self.new
    book_3 = self.new
    book_4 = self.new
    book_5 = self.new
    [book_1, book_2, book_3, book_4, book_5]
  end

  def hardcover_nonfiction
    puts "Hardcover Nonfiction"
    book_1 = self.new
    book_2 = self.new
    book_3 = self.new
    book_4 = self.new
    book_5 = self.new
    [book_1, book_2, book_3, book_4, book_5]
  end

  def paperback_nonfiction
    puts "Paperback Nonfiction"
    book_1 = self.new
    book_2 = self.new
    book_3 = self.new
    book_4 = self.new
    book_5 = self.new
    [book_1, book_2, book_3, book_4, book_5]
  end


end
