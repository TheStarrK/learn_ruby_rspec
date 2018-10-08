def translate(str)
  words = str.split
  new_words = []
  words.each do |word|
    if word[0] =~ /[aeiou]/i
      new_words << word.concat('ay')
    elsif !(word[0..2] =~ /[aeiou]/i) || (!(word[0] =~ /[aeiou]/i) && word[1..2] =~ /qu/)
      new_words << word[3..-1] + word[0..2] + 'ay'
    elsif !(word[0..1] =~ /[aeiou]/i) || (word[0..1] =~ /qu/)
      new_words << word[2..-1] + word[0..1] + 'ay'
    elsif !(word[0] =~ /[aeiou]/i)
      new_words << word[1..-1] + word[0] + 'ay'
    end
  end
  new_words.join(' ')
end
