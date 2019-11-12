class Nytimesbooks::Book
  attr_accessor :name, :author, :bookdescription


  def self.new_book(doc)
    new_array = []
    doc.css("div.book-body").each do |book|
      new_book = self.new
      new_book.name = book.css("css-5pe77f").text
      new_book.author = book.css("css-hjukut").text
      new_book.bookdescription = book.css("css-14lubdp").text
      new_array << new_book
    end
    new_array
  end

end
