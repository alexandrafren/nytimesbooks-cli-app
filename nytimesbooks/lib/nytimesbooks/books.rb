class Nytimesbooks::Book
  attr_accessor :name, :author, :bookdescription


  def self.new_book(doc)
    new_array = []
    doc.css("#app #site-content ol li.css-13y32ub").each do |book|
      new_book = self.new
      new_book.name = book.css("h3.css-5pe77f").text
      new_book.author = book.css("p.css-hjukut").text
      new_book.bookdescription = book.css("p.css-14lubdp").text
      new_array << new_book
    end
    new_array
  end

end
