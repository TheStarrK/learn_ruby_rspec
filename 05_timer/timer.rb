def time_string(t)
  # Je créé 3 variables dans lesquelles je stocke le nombre d'heure, de minutes et de secondes
  h = "#{t / 3600}".rjust(2, '0') # le .rjust(2, '0') sert à formater le résultat avec 2 digits
  m = "#{t / 60 % 60}".rjust(2, '0') # % 60 renvoie le reste de la division entière du nombre total de minutes (t/60)
  s = "#{t % 60}".rjust(2, '0')
  # Je regroupe les 3 variables avec join en ajoutant ':' entre chaque
  [h, m, s].join(':')
end
