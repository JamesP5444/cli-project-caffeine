class BeanBoxCoffee::CLI

  def call
    puts "Welcome to my Project for BeanBox Coffee!!!"
    list
  end

  def list
    BeanBoxCoffee::Scraper.scraper_category

    puts "Please type list to see the Coffee Collection or type exit: "
    input = gets.strip.downcase
    if input == "list"
      BeanBoxCoffee::BeanBox.all.each.with_index(1) do |list, index|
        puts "#{index}.#{list.title}"
      end
      display_description
    elsif input == "exit"
      goodbye
    else
      puts "Invalid"
      list
    end
  end

  def display_description
    puts "Please type the number that caught your eye "
    input = gets.strip.to_i
    if input <= BeanBoxCoffee::BeanBox.all.size && input > 0
      index = input-1
      puts "You selected #{input}.#{BeanBoxCoffee::BeanBox.all[index].title}"
      puts "#{BeanBoxCoffee::BeanBox.all[index].description}"
      puts "#{BeanBoxCoffee::BeanBox.all[index].price}"
      display_again
    elsif input <= 0 || input > BeanBoxCoffee::BeanBox.all.size
      puts "Invalid number"
      display_description
    else
      goodbye
    end
  end

  def display_again
    puts "Would you like to see another choice? [y/n]"
    answer = gets.strip.downcase
    if answer == "yes" || answer == "y"
      puts "OK "
      display_description
    elsif answer == "no" || answer == "n"
      goodbye
    else
      puts "Invalid. Please type again."
      display_again
    end
  end

  def goodbye
    puts "Thanks for using my project.  Have some more caffeine!"
  end

end
