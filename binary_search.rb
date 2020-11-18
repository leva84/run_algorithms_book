class BinarySearch
  def search_run
    sample = sample_number
    count = 0
    loop do
      puts "Угадайте число среди #{number} вариантов"
      puts "Попытка №#{count += 1}"
      choice = gets.chomp.to_i
      abort('Вы выйграли!!!') if choice == sample
      sample > choice ? (puts 'Малова-то будет)') : (puts 'Многова-то будет)')
    end
  end

  private

  def conditions
    puts 'Среди скольки вариантов будем искать?'
    gets.chomp.to_i
  end

  def number_check(number)
    abort('Ты наверняка шутишь?)') if number <= 1
  end
  
  def numbers_to_a
    number = conditions
    number_check(number)
    (0..number).to_a
  end

  def sample_number
    numbers_to_a.sample
  end
end

puts BinarySearch.new.search_run
