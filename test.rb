def callpyramid
  puts "Salut rentre le nombre d'étage que tu souhaites !"
  print "=>"
  etage = gets.chomp.to_i
  while etage < 1 || etage > 25
    puts "Chiffre incorrect"
    print "=>"
    etage = gets.chomp.to_i
  end
  return etage
end

def full_pyramid(etage)
half = etage/2
  half.times do |i|
    half + 1
    puts " "
    (half-i).times do
      print " "
    end
    if i != 0
      print "#"
    end
    (i+1).times do
      print "#"
    end
    (i-1).times do
      print "#"
    end
    puts " "
  end
end

def pyramid_down(etage)
half = etage/2
  half.times do |i|
    half + 1
    puts " "
    (half-i).times do
      print " "
    end
    if i != 0
      print "#"
    end
    (i+1).times do
      print "#"
    end
    (i-1).times do
      print "#"
    end
    puts " "
  end   
end

hauteur = callpyramid
full_pyramid(hauteur)
pyramid_down(hauteur)