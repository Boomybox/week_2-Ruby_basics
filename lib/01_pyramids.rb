
#demie pyramide 

def half_pyramid

puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
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


#Pyramide entière

def full_pyramid

  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print ">" 

  nb = gets.chomp.to_i

  while nb %2==0                                #boucle qui demande à l'utilisateur de resaisir un nombre si la première saisie est paire.
      puts "Oops ! Please enter odd number :"   # Oops ! veuillez saisir un nombre impair
      print ">"
      nb = gets.chomp.to_i
  end

i = 1
ligne = 1
symbol = "#"

  while ligne < (nb/2) + 1               #tant que le nombre de lignes n'est pas égal à la moitié du nombre choisi arrondi au chiffre supérieur,
        puts (symbol*i).center(nb*2)     #le nombre de # croit
    i += 2
    ligne += 1
  end
  
  while ligne > nb/2-1 && i>0           # à partir du moment ou le nombre de lignes a atteint la moitié du nombre choisi, le nombre de # décroit.
        puts (symbol*i).center(nb*2)
    i += -2
    ligne += 1
  end
end

full_pyramid 