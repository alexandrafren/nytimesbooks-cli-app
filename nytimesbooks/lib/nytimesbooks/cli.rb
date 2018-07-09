class Nytimesbooks::CLI
  attr_reader :combined_fiction, :hardcover_fiction, :paperback_fiction, :combined_nonfiction, :hardcover_nonfiction, :paperback_nonfiction, :paperback_howto, :childrens_middle, :childrens_picture, :childrens_series, :young_adult

  def call
    puts "Welcome to the New York Times Best Selling Books list!"
    main_categories
    goodbye
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
      @combined_fiction = Nytimesbooks::Book.combined_fiction
      @combined_fiction.each_with_index do |book, i|
        puts "#{i+1}. #{book.name} #{book.author}"
      end
      combined_fiction
    when "2"
      @hardcover_fiction = Nytimesbooks::Book.hardcover_fiction
      @hardcover_fiction.each_with_index do |book, i|
        puts "#{i+1}. #{book.name} #{book.author}"
      end
      hardcover_fiction
    when "3"
      @paperback_fiction = Nytimesbooks::Book.paperback_fiction
      @paperback_fiction.each_with_index do |book, i|
        puts "#{i+1}. #{book.name} #{book.author}"
      end
    when "exit"
      goodbye
    else
      puts "I don't understand your input. Please try again."
  end
end

  def nonfiction_menu
    puts "There are 4 Nonfiction categories: 1. Combined Print & E-Book Nonfiction 2. Hardcover Nonfiction 3. Paperback Nonfiction 4.Advice, How-to, & Miscellaneous"
    puts "Which are you interested in? Type 1-4 or exit to leave the program."
      input = gets.chomp.downcase
    case input
    when "1"
      @combined_nonfiction = Nytimesbooks::Book.combined_nonfiction
      @combined_nonfiction.each_with_index do |book, i|
        puts "#{i+1}. #{book.name} #{book.author}"
      end
    when "2"
      @hardcover_nonfiction = Nytimesbooks::Book.hardcover_nonfiction
      @hardcover_nonfiction.each_with_index do |book, i|
        puts "#{i+1}. #{book.name} #{book.author}"
      end
    when "3"
      @paperback_nonfiction = Nytimesbooks::Book.paperback_nonfiction
      @paperback_nonfiction.each_with_index do |book, i|
        puts "#{i+1}. #{book.name} #{book.author}"
      end
    when "4"
      @paperback_howto = Nytimesbooks::Book.paperback_howto
      @paperback_howto.each_with_index do |book, i|
        puts "#{i+1}. #{book.name} #{book.author}"
      end
    when "exit"
      goodbye
    else
      puts "I don't understand your input. Please try again."
  end
  end

    def childrens_menu
      puts "There are 4 Childrens categories: 1. Childrens Middle Grade Hardcover 2. Children's Picture Books 3. Children's Series 4. Young Adult Hardcover"
      puts "Which are you interested in? Type 1-4 or exit to leave the program."
        input = gets.chomp.downcase
      case input
      when "1"
        @childrens_middle = Nytimesbooks::Book.childrens_middle
        @childrens_middle.each_with_index do |book, i|
          puts "#{i+1}. #{book.name} #{book.author}"
        end
        goodbye
      when "2"
        @childrens_picture = Nytimesbooks::Book.childrens_picture
        @childrens_picture.each_with_index do |book, i|
          puts "#{i+1}. #{book.name} #{book.author}"
        end
      when "3"
        @childrens_series = Nytimesbooks::Book.childrens_series
        @childrens_series.each_with_index do |book, i|
          puts "#{i+1}. #{book.name} #{book.author}"
        end
      when "4"
        @young_adult = Nytimesbooks::Book.young_adult
        @young_adult.each_with_index do |book, i|
          puts "#{i+1}. #{book.name} #{book.author}"
        end
      when "exit"
        goodbye
      else
        puts "I don't understand your input. Please try again."
    end
  end

    def combined_fiction
      puts "Which of these books would you like to see a description of? Enter 1 - 15, or exit to leave."
      input = gets.chomp.to_i
      puts "#{@combined_fiction[input - 1].name} #{@combined_fiction[input -1].author} #{@combined_fiction[input - 1].bookdescription}"
    end

    def hardcover_fiction
      puts "Which of these books would you like to see a description of? Enter 1 - 15, or exit to leave."
      input = gets.chomp.to_i
      puts "#{@hardcover_fiction[input - 1].name} #{@hardcover_fiction[input -1].author} #{@hardcover_fiction[input - 1].bookdescription}"
    end

    def combined_fiction
      puts "Which of these books would you like to see a description of? Enter 1 - 15, or exit to leave."
      input = gets.chomp.to_i
      puts "#{@combined_fiction[input - 1].name} #{@combined_fiction[input -1].author} #{@combined_fiction[input - 1].bookdescription}"
    end

    def combined_fiction
      puts "Which of these books would you like to see a description of? Enter 1 - 15, or exit to leave."
      input = gets.chomp.to_i
      puts "#{@combined_fiction[input - 1].name} #{@combined_fiction[input -1].author} #{@combined_fiction[input - 1].bookdescription}"
    end

    def combined_fiction
      puts "Which of these books would you like to see a description of? Enter 1 - 15, or exit to leave."
      input = gets.chomp.to_i
      puts "#{@combined_fiction[input - 1].name} #{@combined_fiction[input -1].author} #{@combined_fiction[input - 1].bookdescription}"
    end

    def combined_fiction
      puts "Which of these books would you like to see a description of? Enter 1 - 15, or exit to leave."
      input = gets.chomp.to_i
      puts "#{@combined_fiction[input - 1].name} #{@combined_fiction[input -1].author} #{@combined_fiction[input - 1].bookdescription}"
    end




    def goodbye
      puts "Enjoy your reading!"
    end

end
