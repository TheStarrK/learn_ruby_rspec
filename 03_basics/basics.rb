def who_is_bigger(a, b, c)
  if a && b && c # Si les 3 variables existent (donc aucun nil)
    # Regroupe a, b, et c dans un tableaupour en ressortir le plus grand avec max
    # EN fonction du résultat, je renvoie le string qui va bien
    if [a, b, c].to_a.max == a
      return "a is bigger"
    elsif [a, b, c].to_a.max == b
      return "b is bigger"
    elsif [a, b, c].to_a.max == c
      return "c is bigger"
    end
  else # Il y a au moins 1 nil
    return "nil detected"
  end
end

def reverse_upcase_noLTA (str)
  str.reverse!.upcase!.delete!("LTA") # Vraiment besoin de commentaire ?
end

def array_42 (a)
  a.include?(42)
end

def magic_array(a)
  # flatten casse les tableaux imbriqués
  # sort! trie le tableau
  # map nous ici permet de doubler la valeur de chaque élément
  # select de conserver ceux qui ne sont pas multiple de 3
  # Et uniq de virer les doublons
  a.flatten.sort!.map{|i| i*=2}.select!{|i| i%3!=0}.uniq
end
