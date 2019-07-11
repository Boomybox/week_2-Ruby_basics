#lancer de dé :

def lancer_de
	$num = rand(6) + 1
end

position_joueur = 0
i = 1 
#conditions du jeu :

while position_joueur >= 0 && position_joueur < 10

	lancer_de

	if $num == 1 && position_joueur != 0
		puts "Mince, tu descends d'une marche car tu as fait #{$num} !"
		position_joueur -= 1

	elsif $num == 1 && position_joueur = 0
		puts "Tu ne bouges pas, il n'y as rien à la cave !"
		position_joueur = 0

	elsif $num == 5 or $num == 6
		puts "Bravo ! tu montes d'une marche car tu as fait #{$num} !"
		position_joueur += 1

	else
		puts "Tu ne bouges pas car tu as fait #{$num} ! "
	end

if position_joueur == 10
puts "Bravo tu as gagné ! Félicitations !!!"
	
	
end

	puts " (fin du tour #{i}, tu es sur la marche #{position_joueur})"
	i += 1
end
