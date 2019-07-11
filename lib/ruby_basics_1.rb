puts  "Quel est ton nom ? "
print "> "

first_name = gets.chomp

def say_hello(nom)
  "Bonjour #{nom}"
end


puts say_hello(first_name)