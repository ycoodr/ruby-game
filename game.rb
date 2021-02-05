puts "Добро пожаловать в игру на ruby"
print "Как тебя зовут? "
input = gets
name = input.chomp
puts "Привет, #{name}"

puts "Я загадал число от 1 до 100"
puts "Тебе нужно его угадать"
target = rand(100)+1
num_guesses = 0
guessed_it = false

until num_guesses == 10 || guessed_it
#     while num_guesses < 10 && guessed_it = false
    puts "У тебя осталось #{10 - num_guesses} попыток"
    print "Сделать попытку "
    guess = gets.to_i
    
    num_guesses += 1
    
    if guess < target
        puts "Ой! Мое число больше"
    elsif guess > target
        puts "Ой! Мое число меньше"
    elsif guess == target
        puts "Молодец #{name}!"
        puts "Ты отгадал число с #{num_guesses} попыток!"
        guessed_it = true
    end
    
end

unless guessed_it
    puts "Извини. Ты не отгадал число. (Было #{target})"
end

# if not guessed_it
#     puts "Извини. Ты не отгадал число. (Было #{target})"
# end
