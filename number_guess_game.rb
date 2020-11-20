class NumberGuessGame
  attr_reader :sample, :number, :numbers

  def initialize
    @count = 0
  end

  def run
    puts 'Среди скольки вариантов будем искать?'
    number = gets.chomp.to_i

    abort('Ты наверняка шутишь?)') if number <= 1
    sample = (1..number).to_a.sample

    loop do
      puts "Угадайте число среди #{number} вариантов"
      puts "Попытка №#{@count += 1}"

      choice = gets.chomp.to_i

      abort('Вы выйграли!!!') if choice == sample
      sample > choice ? (puts 'Малова-то будет)') : (puts 'Многова-то будет)')
    end
  end

  def self.run
    new.run
  end
end

NumberGuessGame.run
