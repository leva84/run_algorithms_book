class BinarySearch
  def search_run
    puts 'Диапазон поиска от 0 до ? :'
    variants_count = gets.chomp.to_i
    puts 'Какое число будем искать?'
    number = gets.chomp.to_i
    numbers_arr = numbers_to_a(variants_count)
    search(numbers_arr, number)
  end

  private

  def number_check(variants_count)
    abort('Ты наверняка шутишь?)') if variants_count <= 1
  end

  def numbers_to_a(variants_count)
    number_check(variants_count)
    (1..variants_count).to_a
  end

  def search(numbers_arr, number)
    count = 0
    loop do
      numbers_arr_first = numbers_arr.first(numbers_arr.count.next / 2)
      numbers_arr_last = numbers_arr.last(numbers_arr.count.next / 2)
      puts "Ищем число #{number} среди #{numbers_arr.count} вариантов"
      puts "Попытка №#{count += 1}"
      sleep 1
      if numbers_arr_first.include?(number)
        numbers_arr = numbers_arr_first
      elsif numbers_arr_last.include?(number)
        numbers_arr = numbers_arr_last
      else
        abort('Этого числа нет среди заданного диапазона')
      end
      abort("Вот это число: #{number}") if numbers_arr.count == 1 && numbers_arr[0] == number
    end
  end
end

BinarySearch.new.search_run
