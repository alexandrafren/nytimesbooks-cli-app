class Nytimesbooks::CLI

  def call
    puts "Welcome to the New York Times Best Selling Books list!"
    maincategories
  end

  def categories
    puts "Are you interested in seeing Fiction, Nonfiction, or Childrens Best Sellers lists? (Type exit to leave program)"
    input = nil
    while input != "exit"
      input = gets.chomp.downcase
    case input
    when "fiction"
      fiction_menu
    when "nonfiction"
      nonfiction_menu
    when "childrens"
      childrens_menu
    when "exit"
      goodbye
    else
      puts "I don't understand your input. Please try again."
    end
  end
end

   #def combined_fiction
     #bookarray = Nytimesbooks::Book.combined_fiction
     #bookarray.each_with_index do |book, i|
      # puts "#{i+1}. #{book.name} #{book.author}"
     #end
  # end


    def goodbye
      puts "Enjoy your reading!"
    end

end
