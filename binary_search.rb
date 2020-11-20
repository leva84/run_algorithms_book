class BinarySearch
  attr_reader :numbers, :number, :variants_count

  def initialize
    @count = 0
    puts 'Диапазон поиска от 1 до ? : '
    @variants_count = gets.chomp.to_i
    puts 'Какое число будем искать?'
    @number = gets.chomp.to_i
    @numbers = (1..@variants_count).to_a
    abort('Ты наверняка шутишь?)') if @variants_count <= 1
    abort('Этого числа нет среди заданного диапазона') unless @numbers.include?(@number)
  end

  def self.run
    new.search
  end

  def search
    loop do
      puts "Ищем число #{number} среди #{numbers.count} вариантов"
      puts "Попытка №#{@count += 1}"
      sleep 1
      numbers << 0 if numbers.count <= 3 && numbers.count.odd?
      numbers.first(numbers.count / 2).include?(number) ? numbers.replace(numbers.first(numbers.count / 2)) : numbers.replace(numbers.reverse.first(numbers.count / 2))
      abort("Вот это число: #{number}") if numbers.count == 1 && numbers[0] == number
    end
  end
end

BinarySearch.run
