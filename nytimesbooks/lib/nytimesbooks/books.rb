class Nytimesbooks::Book
  attr_accessor :name, :author, :bookdescription, :url

  def self.combined_fiction
    puts "Combined Print & E-Book Fiction"
    doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/combined-print-and-e-book-fiction/?action=click&contentCollection=Books&referrer=https%3A%2F%2Fwww.nytimes.com%2Fsection%2Fbooks&region=Body&module=CompleteListLink&version=Fiction&pgtype=Reference"))
    combined_fiction_array = []
    doc.css("div.book-body").each do |book|
      new_book = self.new
      new_book.name = book.css("h2.title").text
      new_book.author = book.css("p.author").text
      new_book.bookdescription = book.css("p.description").text
      #new_book.url = book.css("button.buy-button").atribute("data-amazon")
      combined_fiction_array << new_book
    end
    combined_fiction_array
  end

  def self.hardcover_fiction
    puts "Hardcover Fiction"
    doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/hardcover-fiction/?module=DropDownNav&action=click&region=navbar&contentCollection=Books&version=Fiction&referrer=https%3A%2F%2Fwww.nytimes.com%2Fbooks%2Fbest-sellers%2F&pgtype=Reference"))
    hardcover_fiction_array = []
    doc.css("div.book-body").each do |book|
      new_book = self.new
      new_book.name = book.css("h2.title").text
      new_book.author = book.css("p.author").text
      new_book.bookdescription = book.css("p.description").text
      #new_book.url = book.css("button.buy-button").atribute("data-amazon")
      hardcover_fiction_array << new_book
    end
    hardcover_fiction_array
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
