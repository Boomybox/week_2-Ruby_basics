#demande le prenom

def say_hello
  puts "Quel est ton prénom ?"
  print "Tape ici > "
  first_name = gets.chomp
  return first_name
end

#puts prenom
def salut(name)
  puts "Bonjour #{name} !"
end

### Perform ###
def perform
  #first_name = say_hello
  salut(say_hello)
end

perform


=begin
def ask_first_name
  puts  "Quel est ton prénom ? "
	print "> "
	first_name = gets.chomp
  return first_name
end

def say_hello(prenom)
  "Bonjour, #{prenom}!"
end

def perform
  prenom = ask_first_name
  say_hello(prenom)
  
end


puts perform
=end