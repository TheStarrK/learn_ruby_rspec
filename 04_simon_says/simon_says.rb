def echo(str)
  str
end

def shout(str)
  str.upcase!
end

def repeat(str, nb=2)
  ("#{str} "*nb).strip
  # 2eme méthode : [str] * nb * ' '
  # Ou encore : ([str] * nb).join(' ')
end

def start_of_word(str, nb)
  str[0..nb-1]
  # ou avec une méthode "plus" ruby : str.slice(0..nb-1)
end

def first_word(str)
  str.split[0]
  # ou str.split.first
end

def titleize(str)
  str = str.split
  str.each_index {|i| (str[i].length<=3 && i!=0 ) ? str : str[i].capitalize!}.join(' ')
end
