def nb_stages ()
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"
  print "Entre un nombre entre 1 et 25 >"
  nombre = gets.chomp.to_i

  while nombre > 25 || nombre < 1
    print "Entre un nombre entre 1 et 25 >"
    nombre = gets.chomp.to_i
  end
  return nombre
end

def nb_stages_odd ()
  puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ? Inscrit un nombre impair uniquement"
  print "Entre un nombre entre 1 et 25 >"
  nombre = gets.chomp.to_i

  while nombre > 25 || nombre < 1 || nombre.even?
    print "Entre un nombre entre 1 et 25 >"
    nombre = gets.chomp.to_i
  end
  return nombre
end

def half_pyramid (height)
  height.times do |i|
  (height-(i+1)).times do
      print " "
    end
    (i+1).times do
      print "#"
    end
    puts " "
  end
end

def full_pyramide(height)

  height.times do |i| 
    print ("" * (height-i))
    puts ("#" * (i*2+1))
  end
end

def wtf_pyramid(height)
  half = height/2
  (half).times do |i| 
    print (" " * (half-i))
    puts ("#" * (i*2+1))
  end
  (half+1).times do |i| 
    print (" " * i)
    puts ("#" * ((half-i)*2+1))
  end
end

height = nb_stages_odd

wtf_pyramid(height)