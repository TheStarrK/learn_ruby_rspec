def time_string(t)
  h = "#{t / 3600}".rjust(2, '0')
  m = "#{t / 60 % 60}".rjust(2, '0')
  s = "#{t % 60}".rjust(2, '0')
  [h, m, s].join(':')
end
