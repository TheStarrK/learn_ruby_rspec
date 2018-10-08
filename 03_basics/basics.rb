def who_is_bigger(a, b, c)
  if a && b && c
    if [a, b, c].to_a.max == a
      return "a is bigger"
    elsif [a, b, c].to_a.max == b
      return "b is bigger"
    elsif [a, b, c].to_a.max == c
      return "c is bigger"
    end
  else
    return "nil detected"
  end
end

def reverse_upcase_noLTA (str)
  str.reverse!.upcase!.delete!("LTA")
end

def array_42 (a)
  a.include?(42)
end

def magic_array(a)
  a.flatten.sort!.map{|i| i*=2}.select!{|i| i%3!=0}.uniq
end
