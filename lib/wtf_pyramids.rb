def full_pyramid

	puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
	print ">" 

	nb = gets.chomp.to_i

	while nb %2==0 
 			puts "Oops ! Please enter odd number :"
 			print ">"
 			nb = gets.chomp.to_i

 	end

 	puts "voici la pyramide :"

i = 1
ligne = 1
symbol = "#"

 	while ligne < (nb/2) + 1 				
 				puts (symbol*i).center(nb*2) 
 		i += 2
 		ligne += 1
	end
	
	while ligne > nb/2-1 && i>0
				puts (symbol*i).center(nb*2) 
		i += -2
		ligne += 1
	end
end

full_pyramid




=begin
print "Choisis un nombre entre 1 et 25 : "
num = gets.chomp.to_i
i = 1
space = " "
y = num

while i <= num do
  if num < 1 || num > 25
    y = 0
    print "Tu n'as pas choisis un nombre entre 1 et 25, recommence en suivant la consigne : "
    num = gets.chomp.to_i
    y = num
  else
  while i <= num do
    puts (space * y + "#" * i)
    i +=1
    y -=1
  end
  end
end
=end


