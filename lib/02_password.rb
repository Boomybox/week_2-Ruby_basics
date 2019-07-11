require 'io/console' #bibliotheque qui permet de cacher le mot de passe lors de son écriture

def signup
    puts "Définis ton mot de passe : "
    @mdp = STDIN.noecho(&:gets).chomp   #permet de cacher le mot de passe 
    
end

def login
    puts "Saisis ton mot de passe : "
    log = STDIN.noecho(&:gets).chomp    #permet de cacher le mot de passe 

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
