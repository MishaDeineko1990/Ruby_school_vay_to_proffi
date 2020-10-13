words = {
  'dog' => ['собака', 'шавка', 'бобик'],
  'cat' => ['кошка', 'кошечка'],
  'frog' => ['лягушка', 'квакушка'],
  'mouse' => ['мышь', 'мышка']
}

result = 0

words.each_value { |value| result += value.size }

puts "All words: #{result}"