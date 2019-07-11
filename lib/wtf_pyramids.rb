

def wtf_pyramid

  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
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

wtf_pyramid 





