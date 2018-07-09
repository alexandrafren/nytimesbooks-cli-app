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
      paperback_fiction
    when "exit"
      goodbye
    else
      puts "I don't understand your input. Please try again."
  end
end

  def nonfiction_menu
    puts "There are 3 Nonfiction categories: 1. Combined Print & E-Book Nonfiction 2. Hardcover Nonfiction 3. Paperback Nonfiction"
    puts "Which are you interested in? Type 1-4 or exit to leave the program."
      input = gets.chomp.downcase
    case input
    when "1"
      @combined_nonfiction = Nytimesbooks::Book.combined_nonfiction
      @combined_nonfiction.each_with_index do |book, i|
        puts "#{i+1}. #{book.name} #{book.author}"
      end
      combined_nonfiction
    when "2"
      @hardcover_nonfiction = Nytimesbooks::Book.hardcover_nonfiction
      @hardcover_nonfiction.each_with_index do |book, i|
        puts "#{i+1}. #{book.name} #{book.author}"
      end
      hardcover_nonfiction
    when "3"
      @paperback_nonfiction = Nytimesbooks::Book.paperback_nonfiction
      @paperback_nonfiction.each_with_index do |book, i|
        puts "#{i+1}. #{book.name} #{book.author}"
      end
      paperback_nonfiction
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
        childrens_middle
        goodbye
      when "2"
        @childrens_picture = Nytimesbooks::Book.childrens_picture
        @childrens_picture.each_with_index do |book, i|
          puts "#{i+1}. #{book.name} #{book.author}"
        end
        childrens_picture
      when "3"
        @childrens_series = Nytimesbooks::Book.childrens_series
        @childrens_series.each_with_index do |book, i|
          puts "#{i+1}. #{book.name} #{book.author}"
        end
        childrens_series
      when "4"
        @young_adult = Nytimesbooks::Book.young_adult
        @young_adult.each_with_index do |book, i|
          puts "#{i+1}. #{book.name} #{book.author}"
        end
        young_adult
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

    def paperback_fiction
      puts "Which of these books would you like to see a description of? Enter 1 - 15, or exit to leave."
      input = gets.chomp.to_i
      puts "#{@paperback_fiction[input - 1].name} #{@paperback_fiction[input -1].author} #{@paperback_fiction[input - 1].bookdescription}"
    end

    def combined_nonfiction
      puts "Which of these books would you like to see a description of? Enter 1 - 15, or exit to leave."
      input = gets.chomp.to_i
      puts "#{@combined_nonfiction[input - 1].name} #{@combined_nonfiction[input -1].author} #{@combined_nonfiction[input - 1].bookdescription}"
    end

    def hardcover_nonfiction
      puts "Which of these books would you like to see a description of? Enter 1 - 15, or exit to leave."
      input = gets.chomp.to_i
      puts "#{@hardcover_nonfiction[input - 1].name} #{@hardcover_nonfiction[input -1].author} #{@hardcover_nonfiction[input - 1].bookdescription}"
    end

    def paperback_nonfiction
      puts "Which of these books would you like to see a description of? Enter 1 - 15, or exit to leave."
      input = gets.chomp.to_i
      puts "#{@paperback_nonfiction[input - 1].name} #{@paperback_nonfiction[input -1].author} #{@paperback_nonfiction[input - 1].bookdescription}"
    end

    def childrens_middle
      puts "Which of these books would you like to see a description of? Enter 1 - 10, or exit to leave."
      input = gets.chomp.to_i
      puts "#{@childrens_middle[input - 1].name} #{@childrens_middle[input -1].author} #{@childrens_middle[input - 1].bookdescription}"
    end

    def childrens_picture
      puts "Which of these books would you like to see a description of? Enter 1 - 10, or exit to leave."
      input = gets.chomp.to_i
      puts "#{@childrens_picture[input - 1].name} #{@childrens_picture[input -1].author} #{@childrens_picture[input - 1].bookdescription}"
    end

    def childrens_series
      puts "Which of these books would you like to see a description of? Enter 1 - 10, or exit to leave."
      input = gets.chomp.to_i
      puts "#{@childrens_series[input - 1].name} #{@childrens_series[input -1].author} #{@childrens_series[input - 1].bookdescription}"
    end

    def young_adult
      puts "Which of these books would you like to see a description of? Enter 1 - 10, or exit to leave."
      input = gets.chomp.to_i
      puts "#{@young_adult[input - 1].name} #{@young_adult[input -1].author} #{@young_adult[input - 1].bookdescription}"
    end

    def goodbye
      puts "Enjoy your reading!"
    end

end
