def say_hello(first_name, last_name)
  puts "Bonjour, #{first_name} #{last_name}"
end

def ask_first_name()
  gets.chomp.to_s
end

def ask_last_name()
  gets.chomp.to_s
end

puts "Bonjour, quel est votre prénom ?"
first_name = ask_first_name()
puts "et votre nom ?"
last_name = ask_last_name()
say_hello(first_name, last_name)
