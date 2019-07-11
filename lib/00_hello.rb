
def say_hello(first_name)
      puts "Bonjour #{first_name} !"
end

def ask_first_name
      puts "Quel est ton prénom ?"
      print "Tape ici > "
      first_name = gets.chomp
    return first_name
end

### Perform ###
def perform
    say_hello(ask_first_name)
end

perform


