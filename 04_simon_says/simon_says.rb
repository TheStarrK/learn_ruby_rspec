def echo(str)
  str # renvoie str tel quel
end

def shout(str)
  str.upcase! # renvoie str en MAJUSCULE. Le ! force la réécriture dans le meme variable
end

def repeat(str, nb=2)
  ("#{str} "*nb).strip # Je concatène n fois str suivi d'un espace, et je supprime le dernier espace grace à strip
  # 2eme méthode : ([str] * nb).join(' ')    # Je peux aussi mettre n fois str dans un tableau et les regrouper avec join
  # Ou encore : [str] * nb * ' '             # * ' ' est équivalent à .join(' ')
end

def start_of_word(str, nb)
  str[0..nb-1] # [0..nb-1] permet de sélectionner les nb premiers caractères
  # équivalent avec une syntaxe "plus" ruby : str.slice(0..nb-1)
end

def first_word(str)
  str.split[0] # Découpe la phrase en mot et renvoie le 1er
  # ou str.split.first
end

def titleize(str)
  str = str.split # Découpe la phrase en mot
  # Pour chaque mot, je laisse en minuscule si la taille est <= à 3 ET si ce n'est pas le premier mot, sinon je capitalize.
  # Finalement, je join les mots dans un string que je renvoie
  str.each_index {|i| (str[i].length<=3 && i!=0 ) ? str : str[i].capitalize!}.join(' ')
end
