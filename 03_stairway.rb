def game()
  nb_etages = 10
  etage_actuel = 0
  round = 1

  while etage_actuel < nb_etages
    die = rand(6)+1
    if die == 5 || die == 6
       # puts "vous avez fait #{die}, vous montez d'un étage"
        etage_actuel = etage_actuel +1
    elsif die == 1
      #  puts "vous avez fait #{die}, vous descendez d'un étage"
        etage_actuel = etage_actuel -1
    else
     # puts "vous avez fait #{die}, vous ne bougez pas"
    end
    round = round +1
  end
  return round
end

def average_finish_time(nombre)
  game
  resultas = Array.new(nombre) {|i| game}
  moyenne = resultas.sum/resultas.length
  puts "Le nombre moyen de rounds sur #{nombre} partie est de #{moyenne}"
end

average_finish_time(100)