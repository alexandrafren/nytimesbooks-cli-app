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

end
