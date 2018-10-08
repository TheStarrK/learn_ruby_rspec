def add(n1, n2)
  return n1 + n2
end

def subtract(n1, n2)
  return n1 - n2
end

def sum(array)
  return array.reduce(0, :+)
end

def multiply(n1, n2)
  return n1 * n2
end

def power(n, exp)
  return n ** exp
end

def factorial(nb)
  # Ici j'utilise une condition ternaire, cad que je réduit une condition if ... else en 1 seule ligne
  # Syntaxe : condition à tester ? Si oui : Si non 
  return nb == 0 ? 1: nb * factorial(nb-1)
end
