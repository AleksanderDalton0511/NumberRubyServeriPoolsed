puts "Welcome to the guessing game!"
secret_num = rand(0 .. 9)

guess = nil
guess_count = 0
guess_limit = 3
out_of_guesses = false

while guess != secret_num and !out_of_guesses
    if guess_count < guess_limit
        puts "Enter your guessed number"
        guess = gets.chomp.to_i
        guess_count += 1;
    else 
        out_of_guesses = true
        break
    end
end

if out_of_guesses
    puts "You lose!"
    puts "You have reached the maximum number of guesses."
    puts "The secret number was #{secret_num}"
else
    puts "Congratulations! You won!"
    puts "You guessed the secret number #{secret_num} and you did it in #{guess_count} guesses."
end