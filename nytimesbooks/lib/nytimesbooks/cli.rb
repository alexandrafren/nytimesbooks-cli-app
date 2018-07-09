class Nytimesbooks::CLI

  def call
    puts "Welcome to the New York Times Best Selling Books list!"
    main_categories
  end

  def main_categories
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

  def fiction_menu
    puts "There are 3 Fiction categories: 1. Combined Print & E-Book Fiction 2. Hardcover Fiction 3. Paperback Trade Fiction"
    puts "Which are you interested in? Type 1-3 or exit to leave the program."
      input = gets.chomp.downcase
    case input
    when "1"
      bookarray = Nytimesbooks::Book.combined_fiction
      bookarray.each_with_index do |book, i|
        puts "#{i+1}. #{book.name} #{book.author}"
      end
      goodbye
    when "2"
      puts "nonfiction_menu"
    when "3"
      puts "childrens_menu"
    when "exit"
      goodbye
    else
      puts "I don't understand your input. Please try again."
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
