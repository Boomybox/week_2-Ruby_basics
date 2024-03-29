#-------------------------------------------------------------
#demie pyramide 
#-------------------------------------------------------------

def half_pyramid

puts "Salut, bienvenue dans ma super demi-pyramide ! Combien d'étages veux-tu ?"
print ">" 
nb = gets.chomp.to_i #nombre entré par l'utilisateur

lign = 0
symbol = "#"

  while lign <= nb do

    if  nb < 1 || nb > 25

        puts "Erreur, veuillez choisir un nombre entre 1 et 25" #condition: tant que le nombre n'est pas compris entre 1 et 25, on redemande un autre nombre.
        nb = gets.chomp.to_i
    else 
        puts (symbol*lign).rjust(nb) # Si le nombre est compris entre 1 et 25, le contenu s'ajuste à droite grâce a .rjust en prenant en compte le nombre choisi par l'utilisateur.
    
    lign += 1
      
    end  
  end

end

#-------------------------------------------------------------
#Pyramide entière
#-------------------------------------------------------------

def full_pyramid
  
  symbol = "#"
  nb =-1 # Initialisation de number pour rentrer dans la boucle
  while nb <= 1 || nb > 25 do # tant que l'utilisateur ne choisit pas un nombre entre 1 et 25, on relance la boucle.
    puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
    print "> "
    nb = gets.chomp.to_i
    puts "Voici la pyramide : "
    lign = 1
    i=1
  end

  while lign <= nb
    puts (symbol*i).center((nb*2)-1) # Centre les # , sur la valeur de la base de la pyramide
    lign +=1
    i +=2 # chaque itération ajout deux #
  end
end


#-------------------------------------------------------------
# wtf_pyramid
#-------------------------------------------------------------

def wtf_pyramid

  puts "Salut, bienvenue dans ma super wtf_pyramide ! Combien d'étages veux-tu ?"
  print ">" 

  nb = gets.chomp.to_i

  while nb %2==0                                #boucle qui demande à l'utilisateur de resaisir un nombre si la première saisie est paire.
      puts "Oops ! Please enter odd number :"   # Oops ! veuillez saisir un nombre impair
      print ">"
      nb = gets.chomp.to_i
  end

  puts "voici la pyramide :"

i = 1
ligne = 1
symbol = "#"

  while ligne < (nb/2) + 1               #tant que le nombre de lignes n'est pas égal à la moitié du nombre choisi arrondi au chiffre supérieur,
        puts (symbol*i).center((nb*2)-1)     #le nombre de # croit
    i += 2
    ligne += 1
  end
  
  while ligne > nb/2-1 && i>0           # à partir du moment ou le nombre de lignes a atteint la moitié du nombre choisi, le nombre de # décroit.
        puts (symbol*i).center((nb*2)-1)
    i += -2
    ligne += 1
  end
end

def perfom 
    half_pyramid 
    full_pyramid
    wtf_pyramid
end

perfom
