class Nytimesbooks::CLI

  def call
    puts "Welcome to the New York Times Best Selling Books list!"
    categories
  end

  def categories
    puts "There are 5 main categories to choose from:"
    puts "1.Combined Print & E-Book Fiction 2. Hardcover Fiction 3.Combined Print & E-Book Nonfiction 4.Hardcover Nonfiction 5.Paperback Nonfiction"
    input = nil
    while input != "exit"
      puts "Which category would you like to explore further? Enter 1-5, or exit to leave the program."
      input = gets.chomp
    case input
    when "1"
      puts "combined_fiction"
    when "2"
      puts "hardcover_fiction"
    when "3"
      puts "combined_nonfiction"
    when "4"
      puts "hardcover_nonfiction"
    when "5"
      puts "paperback_nonfiction"
    when "exit"
      goodbye
    else
      puts "I don't understand your input. Please try again."
    end
  end
end

    def goodbye
      puts "Enjoy your reading!"
    end

end
