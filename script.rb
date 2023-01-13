#create array for small and capital letters
#max range in index is letters[25] or capital_letters[26]
def caesar_cipher (string, shift)
  letters = ("a".."z").to_a
  capital_letters = ("A".."Z").to_a
  new_string = ""
  string.each_char do |char|
    if letters.include?(char)
      letters.index(char)
      p letters.index(char) + shift
    elsif capital_letters.include?(char)
      capital_letters.index(char)
      p capital_letters.index(char) + shift
    else
      p char
    end
  end
end

caesar_cipher("What a string!", 5)

=begin
take string
iterate through each letter
if letter is small
  e
  new_string += array[e.index].shift
  if letter.shift is out of range.
    letter.index - letter[-1].index for example 3
    then begin looping again through the array using the leftover 2 to continue iteration.
if letter is capital

=end
#caesar_cipher("What a string!", 5)