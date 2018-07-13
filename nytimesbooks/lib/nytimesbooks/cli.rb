class Nytimesbooks::CLI
  attr_reader :combined_fiction, :hardcover_fiction, :paperback_fiction, :combined_nonfiction, :hardcover_nonfiction, :paperback_nonfiction, :paperback_howto, :childrens_middle, :childrens_picture, :childrens_series, :young_adult

  def call
    puts "Welcome to the New York Times Best Selling Books list!"
    main_categories
  end

  def main_categories
    puts "Are you interested in seeing Fiction, Nonfiction, or Childrens Best Sellers lists?"
    puts "(Type exit to leave program)"
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
      main_categories
  end
end

  def fiction_menu
    puts "There are 3 Fiction categories:"
    puts "1. Combined Print & E-Book Fiction 2. Hardcover Fiction 3. Paperback Trade Fiction"
    puts "Which are you interested in? Type 1-3 or exit to leave the program."
      input = gets.chomp.downcase
    case input
    when "1"
      @combined_fiction = Nytimesbooks::Scraper.combined_fiction
      @combined_fiction.each_with_index do |book, i|
        puts "#{i+1}. #{book.name} #{book.author}"
      end
      combined(@combined_fiction)
    when "2"
      @hardcover_fiction = Nytimesbooks::Scraper.hardcover_fiction
      @hardcover_fiction.each_with_index do |book, i|
        puts "#{i+1}. #{book.name} #{book.author}"
      end
      combined(@hardcover_fiction)
    when "3"
      @paperback_fiction = Nytimesbooks::Scraper.paperback_fiction
      @paperback_fiction.each_with_index do |book, i|
        puts "#{i+1}. #{book.name} #{book.author}"
      end
      combined(@paperback_fiction)
    when "exit"
      goodbye
    else
      puts "I don't understand your input. Please try again."
  end
end

  def nonfiction_menu
    puts "There are 3 Nonfiction categories:"
    puts "1. Combined Print & E-Book Nonfiction 2. Hardcover Nonfiction 3. Paperback Nonfiction"
    puts "Which are you interested in? Type 1-3 or exit to leave the program."
      input = gets.chomp.downcase
    case input
    when "1"
      @combined_nonfiction = Nytimesbooks::Scraper.combined_nonfiction
      @combined_nonfiction.each_with_index do |book, i|
        puts "#{i+1}. #{book.name} #{book.author}"
      end
      combined(@combined_nonfiction)
    when "2"
      @hardcover_nonfiction = Nytimesbooks::Scraper.hardcover_nonfiction
      @hardcover_nonfiction.each_with_index do |book, i|
        puts "#{i+1}. #{book.name} #{book.author}"
      end
      combined(@hardcover_nonfiction)
    when "3"
      @paperback_nonfiction = Nytimesbooks::Scraper.paperback_nonfiction
      @paperback_nonfiction.each_with_index do |book, i|
        puts "#{i+1}. #{book.name} #{book.author}"
      end
      combined(@paperback_nonfiction)
    when "exit"
      goodbye
    else
      puts "I don't understand your input. Please try again."
  end
  end

    def childrens_menu
      puts "There are 4 Childrens categories:"
      puts "1. Childrens Middle Grade Hardcover 2. Children's Picture Books 3. Children's Series 4. Young Adult Hardcover"
      puts "Which are you interested in? Type 1-4 or exit to leave the program."
        input = gets.chomp.downcase
      case input
      when "1"
        @childrens_middle = Nytimesbooks::Scraper.childrens_middle
        @childrens_middle.each_with_index do |book, i|
          puts "#{i+1}. #{book.name} #{book.author}"
        end
        combined(@childrens_middle)
      when "2"
        @childrens_picture = Nytimesbooks::Scraper.childrens_picture
        @childrens_picture.each_with_index do |book, i|
          puts "#{i+1}. #{book.name} #{book.author}"
        end
        combined(@childrens_picture)
      when "3"
        @childrens_series = Nytimesbooks::Scraper.childrens_series
        @childrens_series.each_with_index do |book, i|
          puts "#{i+1}. #{book.name} #{book.author}"
        end
        combined(@childrens_series)
      when "4"
        @young_adult = Nytimesbooks::Scraper.young_adult
        @young_adult.each_with_index do |book, i|
          puts "#{i+1}. #{book.name} #{book.author}"
        end
        combined(@young_adult)
      when "exit"
        goodbye
      else
        puts "I don't understand your input. Please try again."
    end
  end

  def combined(array)
    puts "Which of these books would you like to see a description of? Enter 1 - 15, or exit to leave."
    input = gets.chomp
    if input == "exit"
      goodbye
    elsif input.to_i < 16 && input.to_i > 0
      input = input.to_i
       puts "#{array[input - 1].name} #{array[input -1].author}."
       puts "#{array[input - 1].bookdescription}"
       goodbye
     else
       puts "I don't understand your input. Please try again."
       combined
    end
  end

    def goodbye
      puts "Enjoy your reading!"
    end

end
