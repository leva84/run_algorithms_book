class NumberGuessGame
  attr_reader :sample, :number, :numbers

  def initialize
    @count = 0
    @number = conditions
    @numbers = (1..@number)
    @sample = @numbers.to_a.sample
    abort('Ты наверняка шутишь?)') if @number <= 1
  end

  def count
    @count += 1
  end

  def conditions
    puts 'Среди скольки вариантов будем искать?'
    gets.chomp.to_i
  end

  def run
    loop do
      puts "Угадайте число среди #{number} вариантов"
      puts "Попытка №#{count}"
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
