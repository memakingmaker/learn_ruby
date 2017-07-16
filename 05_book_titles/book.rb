class Book

  def title
    @title
  end

  def title=( book_title )
    first_word = true
    excluded_words = %w( a an at the in on and of to )
    new_title = book_title.split.map do | w |
      if excluded_words.include?(w) && !first_word
        w
      else
        first_word = false
        w.capitalize
      end
    end
    @title = new_title.join(" ")
  end


end

book = Book.new
book.title = "Home made"
puts book.title
