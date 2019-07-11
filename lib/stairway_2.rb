# lancé de dé aléatoire entre 1 et 6
def lancer
    $oie=rand(1..6) 
end

$position = 0

# tour de jeu
def tour
    lancer
    case $oie 
    when 5, 6
        print "tu montes grâce à ton #{$oie}".chop
        $position += 1
    when 1
        if $position > 1 
            print "tu descends à cause de ton #{$oie}".chop
            $position -= 1
        end
    else 
        print "tu ne bouges pas parce que tu as fait #{$oie}".chop
    end
    puts "(position #{$position})\n\n"
end

# jeu
def jeu
    tour
    i =1
    while $position != 10
        tour
        i +=1 
        puts "tour #{i}"
    end
end

# joue !
jeu

puts "Bravo tu as gagné !\n\n\n"

def average_finish_time
    # faire tourner le jeu 100 fois
    tours = Array.new
    (1..100).each do |i|
      tours.push(rand(10..100)) # juste un array au hasard : devrait reprendre le nombre de tours de jeu
    end
    puts "100 chiffres entre 10 et 100 au hasard"
    puts tours.inspect
    # faire la moyenne
    puts "Moyenne : #{tours.inject(0.0) { |sum, el| sum + el } / tours.size}"
end
  
average_finish_time