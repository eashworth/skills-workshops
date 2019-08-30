class Cipher

  def encode(plaintext, key)
    p plaintext # is a string containing whole alphabet.
    p key # is a short string of letters, some characters repeated.
    cipher = key.chars.uniq #+ (('a'..'z').to_a - key.chars)
    p cipher # is an array of strings (each element is a letter)
    # ('a'...'z').to_a is an array of letters from a to y - NOT Z.
    # From this we subtract key.chars
    # key.chars is an array of all the letters from the string key.
    p "does this run?" #yes
    p ('a'...'z').to_a - key.chars # [all the letters not in key]
    # key.chars.uniq is an array of unique letters from the string key.


    ciphertext_chars = plaintext.chars.map do |char|
      # call chars on the string plaintext => array of letters
      #map => collects results of block run using parameter char
      (65 + cipher.find_index(char)).chr
      p cipher.find_index(char) # output is a series of integers, and a nil.
      # chr is an integer method - needs a number.
      # passing in char passes in a string (a letter)
      # find_index tries to match this letter string to one of its elements.
      # Its elements are letters
      # find_index should output a number

    end
    ciphertext_chars.join
  end

  def decode(ciphertext, key)
    cipher = key.chars.uniq + (('a'...'z').to_a - key.chars)
    plaintext_chars = ciphertext.chars.map do |char|
      cipher[65 - char.ord]
    end
    plaintext_chars.join
  end
end
