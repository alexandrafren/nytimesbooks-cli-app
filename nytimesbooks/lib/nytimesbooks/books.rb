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

  def self.paperback_fiction
    puts "Paperback Fiction"
    doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/trade-fiction-paperback/?module=DropDownNav&action=click&region=navbar&contentCollection=Books&version=Fiction&referrer=https%3A%2F%2Fwww.nytimes.com%2Fbooks%2Fbest-sellers%2Fcombined-print-and-e-book-fiction%2F&pgtype=Reference"))
    paperback_fiction_array = []
    doc.css("div.book-body").each do |book|
      new_book = self.new
      new_book.name = book.css("h2.title").text
      new_book.author = book.css("p.author").text
      new_book.bookdescription = book.css("p.description").text
      #new_book.url = book.css("button.buy-button").atribute("data-amazon")
      paperback_fiction_array << new_book
    end
    paperback_fiction_array
  end

  def self.combined_nonfiction
    puts "Combined Print & E-Book Nonfiction"
    doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/combined-print-and-e-book-nonfiction/?module=DropDownNav&action=click&region=navbar&contentCollection=Books&version=Nonfiction&referrer=https%3A%2F%2Fwww.nytimes.com%2Fbooks%2Fbest-sellers%2Fhardcover-fiction%2F&pgtype=Reference"))
    combined_nonfiction_array = []
    doc.css("div.book-body").each do |book|
      new_book = self.new
      new_book.name = book.css("h2.title").text
      new_book.author = book.css("p.author").text
      new_book.bookdescription = book.css("p.description").text
      #new_book.url = book.css("button.buy-button").atribute("data-amazon")
      combined_nonfiction_array << new_book
    end
    combined_nonfiction_array
  end

  def self.hardcover_nonfiction
    puts "Hardcover Nonfiction"
    doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/hardcover-nonfiction/?module=DropDownNav&action=click&region=navbar&contentCollection=Books&version=Nonfiction&referrer=https%3A%2F%2Fwww.nytimes.com%2Fbooks%2Fbest-sellers%2Ftrade-fiction-paperback%2F&pgtype=Reference&mtrref=www.nytimes.com&gwh=631EB713B46E9B6EEA11D9D78A6A73A3&gwt=pay"))
    hardcover_nonfiction_array = []
    doc.css("div.book-body").each do |book|
      new_book = self.new
      new_book.name = book.css("h2.title").text
      new_book.author = book.css("p.author").text
      new_book.bookdescription = book.css("p.description").text
      #new_book.url = book.css("button.buy-button").atribute("data-amazon")
      hardcover_nonfiction_array << new_book
    end
    hardcover_nonfiction_array
  end

  def paperback_nonfiction
    puts "Paperback Nonfiction"
    doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/paperback-nonfiction/?module=DropDownNav&action=click&region=navbar&contentCollection=Books&version=Nonfiction&referrer=https%3A%2F%2Fwww.nytimes.com%2Fsection%2Fbooks&pgtype=Reference"))
    paperback_nonfiction_array = []
    doc.css("div.book-body").each do |book|
      new_book = self.new
      new_book.name = book.css("h2.title").text
      new_book.author = book.css("p.author").text
      new_book.bookdescription = book.css("p.description").text
      #new_book.url = book.css("button.buy-button").atribute("data-amazon")
      paperback_nonfiction_array << new_book
    end
    paperback_nonfiction_array
  end


end
