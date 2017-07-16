def translate( words )
  vowels = %w(a e i o u qu)
  translate = words.split.map do | word |
    #puts words.split.first  + "== " + word
    if vowels.include?(word[0])
      word
    elsif !vowels.include?(word[0]) && !vowels.include?(word[1])
      word[2..word.length-1] + word[0..1]
    elsif vowels.include?(word[0]) && vowels.include?(word[:
    else
      word.reverse
    end
  end 
 
  translate.join("ay ") + "ay"
end

puts translate("eat pie")
