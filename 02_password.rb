def signup ()
  puts "Salut, bienvenue dans mon programme de test de mot de passe !"
  print "Entre ton mot de passe entre 1 et 10 caractères >"
  mdp = gets.chomp.to_s

  while mdp.length > 10 || mdp.length < 1
    print "Entre ton mot de passe entre 1 et 10 caractères >"
    mdp = gets.chomp.to_s
  end
  return mdp
end

def login(mdp)
  print "Quel est ton mot de passe ?"
  mdp_try = gets.chomp.to_s
  while mdp_try != mdp
    print "Incorrect, essaye encore : "
    mdp_try = gets.chomp.to_s
  end
  return true
end

def perform()
  mdp = signup
  login (mdp)
  if login = true
    puts "WELCOME"
  end  
end

perform()