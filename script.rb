#create array for small and capital letters
#max range in index is letters[25] or capital_letters[26]
def caesar_cipher (string, shift)
  letters = ("a".."z").to_a
  capital_letters = ("A".."Z").to_a
  new_string = ""
  def is_out_of_range (index)
    #returns index to lookup if out of alphabet range
    if index > 25
      index - 25 - 1 
    elsif index <= 25
      index
    end
  end
  string.each_char do |char|
    if letters.include?(char)
      new_string += letters[is_out_of_range(letters.index(char) + shift)]
    elsif capital_letters.include?(char)
      new_string += capital_letters[is_out_of_range(capital_letters.index(char) + shift)]
    else
      new_string += char
    end
  end
  p new_string
end


caesar_cipher("What a string!", 5)