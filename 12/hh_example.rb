words = {
  'dog' => ['собака', 'шавка', 'бобик'],
  'cat' => ['кошка', 'кошечка'],
  'frog' => ['лягушка', 'квакушка'],
  'mouse' => ['мышь', 'мышка']
}

result = 0

words.each_value do |value|
      result += value.size 
      p "value #{value.size}"
end

puts "All words: #{result}"с