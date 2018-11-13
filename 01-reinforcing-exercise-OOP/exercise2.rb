def greetings(names)
  puts "Please enter your name"
  name = gets.chomp.downcase
  if names.include?(name)
    puts "Hello #{name.capitalize}"
  else
    puts "Who goes there?"
  end
end
