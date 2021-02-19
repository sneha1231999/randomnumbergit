#Number Guessing Game

puts "Welcome to my game"
print "Tell your name: "
name = gets.chomp
puts "Hello,#{name}"
puts "I have got a ramdom number between 1-100"
puts "Can you guess it?"

target = rand 100+1
guesses = 0
guessed_it=false


until guesses==10 && guessed_it
        
    rem_guess = 10-guesses
    puts "#{rem_guess} Guesses left"
    print " Make a guess"
    guess=gets.to_i
    guesses+=1

    if guess<target
        puts "Low"
    elsif  guess>target
        puts "High"
    elsif guess==target
        puts "Equal"
        puts "good job!!!,#{name}!"
        puts "your guessed number is #{guesses}"
        guessed_it=true
    end 
end
unless guessed_it
    puts "you didnt get the number.It was #{target}"
end
