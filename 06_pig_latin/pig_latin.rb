def translate(str)
  # Je découpe ma string dans un tableau de mots
  words = str.split
  # Je créé un autre tableau vide dans lequel je stockerai chaque mot modifié
  new_words = []

  # Pour chaque mot
  words.each do |word|
    # Si le premier caractère est une voyelle
    if word[0] =~ /[aeiou]/i # le i derrière le regex permet d'ignorer la casse
      new_words << word.concat('ay') # J'ajoute 'ay' au mot et j'ajoute le tout dans ma liste de nouveaux mots

    # Sinon si les 3 premiers caractères sont des consonnes ou si le premier caractère est une consonne suivi de 'qu'
    # Je commence par checker les 3 premieres lettres, puis 2, puis 1 pour éviter d'entrer dans la boucle 1 consonne quand il y en a 3
    elsif !(word[0..2] =~ /[aeiou]/i) || (!(word[0] =~ /[aeiou]/i) && word[1..2] =~ /qu/)
      new_words << word[3..-1] + word[0..2] + 'ay' # Je déplace les 3 premieres lettres à la fin et j'ajoute 'ay' (+ est équivalent à .concat)

    # Sinon si les 2 premiers caractères sont des consonnes ou 'qu'
    elsif !(word[0..1] =~ /[aeiou]/i) || (word[0..1] =~ /qu/)
      new_words << word[2..-1] + word[0..1] + 'ay'

    # Sinon si la première lettre est une consonne
    elsif !(word[0] =~ /[aeiou]/i)
      new_words << word[1..-1] + word[0] + 'ay'
    end
  end
  # Je regroupe les nouveaux mots dans un string que je return
  new_words.join(' ')
end
