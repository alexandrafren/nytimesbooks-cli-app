class Nytimesbooks::Book
  attr_accessor :name, :author, :bookdescription


  def self.new_book(doc)
    new_array = []
    doc.css("div.book-body").each do |book|
      new_book = self.new
      new_book.name = book.css("h2.title").text
      new_book.author = book.css("p.author").text
      new_book.bookdescription = book.css("p.description").text
      new_array << new_book
    end
    new_array
  end

  def self.combined_fiction
    puts "Combined Print & E-Book Fiction"
    doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/combined-print-and-e-book-fiction/?action=click&contentCollection=Books&referrer=https%3A%2F%2Fwww.nytimes.com%2Fsection%2Fbooks&region=Body&module=CompleteListLink&version=Fiction&pgtype=Reference"))
    combined_fiction_array = []
      combined_fiction_array = new_book(doc)
    combined_fiction_array
  end

  def self.hardcover_fiction
    puts "Hardcover Fiction"
    doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/hardcover-fiction/?module=DropDownNav&action=click&region=navbar&contentCollection=Books&version=Fiction&referrer=https%3A%2F%2Fwww.nytimes.com%2Fbooks%2Fbest-sellers%2F&pgtype=Reference"))
    hardcover_fiction_array = []
      hardcover_fiction_array = new_book(doc)
    hardcover_fiction_array
  end

  def self.paperback_fiction
    puts "Paperback Fiction"
    doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/trade-fiction-paperback/?module=DropDownNav&action=click&region=navbar&contentCollection=Books&version=Fiction&referrer=https%3A%2F%2Fwww.nytimes.com%2Fbooks%2Fbest-sellers%2Fcombined-print-and-e-book-fiction%2F&pgtype=Reference"))
    paperback_fiction_array = []
      paperback_fiction_array = new_book(doc)
    paperback_fiction_array
  end

  def self.combined_nonfiction
    puts "Combined Print & E-Book Nonfiction"
    doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/combined-print-and-e-book-nonfiction/?module=DropDownNav&action=click&region=navbar&contentCollection=Books&version=Nonfiction&referrer=https%3A%2F%2Fwww.nytimes.com%2Fbooks%2Fbest-sellers%2Fhardcover-fiction%2F&pgtype=Reference"))
    combined_nonfiction_array = []
      combined_nonfiction_array = new_book(doc)
    combined_nonfiction_array
  end

  def self.hardcover_nonfiction
    puts "Hardcover Nonfiction"
    doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/hardcover-nonfiction/?module=DropDownNav&action=click&region=navbar&contentCollection=Books&version=Nonfiction&referrer=https%3A%2F%2Fwww.nytimes.com%2Fbooks%2Fbest-sellers%2Ftrade-fiction-paperback%2F&pgtype=Reference&mtrref=www.nytimes.com&gwh=631EB713B46E9B6EEA11D9D78A6A73A3&gwt=pay"))
    hardcover_nonfiction_array = []
      hardcover_nonfiction_array = new_book(doc)
    hardcover_nonfiction_array
  end

  def self.paperback_nonfiction
    puts "Paperback Nonfiction"
    doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/paperback-nonfiction/?module=DropDownNav&action=click&region=navbar&contentCollection=Books&version=Nonfiction&referrer=https%3A%2F%2Fwww.nytimes.com%2Fsection%2Fbooks&pgtype=Reference"))
    paperback_nonfiction_array = []
      paperback_nonfiction_array = new_book(doc)
    paperback_nonfiction_array
  end

  def self.childrens_middle
    puts "Children's Middle Grade"
    doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/childrens-middle-grade-hardcover/?module=DropDownNav&action=click&region=navbar&contentCollection=Books&version=Childrens&referrer=https%3A%2F%2Fwww.nytimes.com%2Fbooks%2Fbest-sellers%2Fchildrens-middle-grade-hardcover%2F&pgtype=Reference"))
    childrens_middle_array = []
      childrens_middle_array = new_book(doc)
    childrens_middle_array
  end

  def self.childrens_picture
    puts "Children's Picture Books"
    doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/picture-books/?module=DropDownNav&action=click&region=navbar&contentCollection=Books&version=Childrens&referrer=https%3A%2F%2Fwww.nytimes.com%2Fbooks%2Fbest-sellers%2Fchildrens-middle-grade-hardcover%2F&pgtype=Reference"))
    children_picture_array = []
    doc.css("div.book-body").each do |book|
      new_book = self.new
      new_book.name = book.css("h2.title").text
      new_book.author = book.css("p.author").text
      new_book.bookdescription = book.css("p.description").text
      children_picture_array << new_book
    end
    children_picture_array
  end

  def self.childrens_series
    puts "Children's Series"
    doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/series-books/?module=DropDownNav&action=click&region=navbar&contentCollection=Books&version=Childrens&referrer=https%3A%2F%2Fwww.nytimes.com%2Fsection%2Fbooks&pgtype=Reference"))
    children_series_array = []
    doc.css("div.book-body").each do |book|
      new_book = self.new
      new_book.name = book.css("h2.title").text
      new_book.author = book.css("p.author").text
      new_book.bookdescription = book.css("p.description").text
      children_series_array << new_book
    end
    children_series_array
  end

  def self.young_adult
    puts "Young Adult Hardcover"
    doc = Nokogiri::HTML(open("https://www.nytimes.com/books/best-sellers/young-adult-hardcover/?module=DropDownNav&action=click&region=navbar&contentCollection=Books&version=More&referrer=https%3A%2F%2Fwww.nytimes.com%2Fbooks%2Fbest-sellers%2F&pgtype=Reference"))
    young_adult_array = []
    doc.css("div.book-body").each do |book|
      new_book = self.new
      new_book.name = book.css("h2.title").text
      new_book.author = book.css("p.author").text
      new_book.bookdescription = book.css("p.description").text
      young_adult_array << new_book
    end
    young_adult_array
  end


end
