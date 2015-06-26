puts "How many problems would you like to solve?"
problem_number = gets.chomp.to_i
counter = 0 # sets the counter
puts ''

while counter.to_i < problem_number.to_i #outer loop runs the counter
  if counter.to_i == problem_number.to_i
    break #breaks the loop when the counter is hit
  else  
    num1 = (1+rand(13)) # generate first random number greater than 0
    num2 = (1+rand(13)) # generate second random number greater than 0
    while true
      puts num1.to_s + " x " + num2.to_s # displays problem
      ans = (num1.to_i * num2.to_i) # points to the answer
      input = gets.chomp # requests the user's answer
      if input.to_i == ans.to_i
        counter = (counter + 1)
        puts "Nice! #" + counter.to_s
        puts ''
        break
      elsif input.to_i != ans.to_i
        puts "Try again!"
        puts ''
      end
    end
  end
end

puts "Great job! All done!"