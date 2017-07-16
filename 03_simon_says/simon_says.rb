def echo( phrase_to_echo )
  phrase_to_echo
end

def shout( phrase_to_shout )
  phrase_to_shout.upcase
end

def repeat( phrase_to_echo, number = 2 )
  ((phrase_to_echo + " " ) * number ).strip
end

def start_of_word( word, number )
  word[0..number-1]
end

def first_word( word )
  word.split.first
end

def titleize( word )
  new_word = ""
  first = true
  word.split.each do | w |
    
    if ( w.length >= 2 && w != "and" && w != "the" && w != "over" ) || first
      new_word = new_word + " " + w.capitalize
    else
      new_word = new_word + " " + w
    end

    first = false
  end

  new_word.strip
end
