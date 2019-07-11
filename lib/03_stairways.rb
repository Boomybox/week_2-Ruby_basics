#---------------------------------------------
#lancer de dé :
#---------------------------------------------

def lancer_de
	$num = rand(6) + 1
end


#---------------------------------------------
#conditions du jeu :
#---------------------------------------------

$turns = 0

def current_game 
position_joueur = 0
i = 1 


while position_joueur >= 0 && position_joueur < 10

	lancer_de
	$turns += 1
	if $num == 1 && position_joueur != 0
		puts "Mince, tu descends d'une marche car tu as fait #{$num} !"
		position_joueur -= 1

	elsif $num == 1 && position_joueur == 0
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

	#puts " (fin du tour #{$turns}, tu es sur la marche #{position_joueur})"
	i += 1
end

end

#----------------------------------------------------
#Statistiques
#----------------------------------------------------

def average_finish_time(turns)
	games = 0
	100.times do current_game
	games += 1
	end
	puts "les #{games} parties sont effectuées, il y a #{$turns/100} jets de dés en moyenne par partie."
end

average_finish_time(current_game)
