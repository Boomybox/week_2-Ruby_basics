require 'io/console' 


def signup

    puts "Définis ton mot de passe : "
   
    @mdp = STDIN.noecho(&:gets).chomp 

end

def login

    puts "Saisis ton mot de passe : "
    
    log = STDIN.noecho(&:gets).chomp 
    
        while @mdp != log
        puts "Mot de passe incorrect ! Retente ta chance : "
        
        log = STDIN.noecho(&:gets).chomp 

        end
end


def welcome_screen 

    puts "Bienvenue dans ton espace secret ! "

end

def perform 
        signup
        login
        welcome_screen

end

perform