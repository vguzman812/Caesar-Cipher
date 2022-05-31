UPPERCASE_LETTERS = ("A".."Z").to_a
LOWERCASE_LETTERS = ("a".."z").to_a


def encrypt(string, key)
    #This method handles the encryption of the text
    encrypted_string = "" #This is the variable which will hold the encrypted text
    split_text = string.split("").to_a #Convert the text into an array 
    split_text.each do |c| #Iterate over each index
      if UPPERCASE_LETTERS.include? c #Check if the current variable is included in the UPPERCASE array
        encrypted_string += UPPERCASE_LETTERS[ (UPPERCASE_LETTERS.index(c) + key) % 26] #Find index of character in array and add the key value to it
      elsif LOWERCASE_LETTERS.include? c
        encrypted_string += LOWERCASE_LETTERS[ (LOWERCASE_LETTERS.index(c) + key) % 26]
      else
        encrypted_string += c #Add transformed character to encrypted_string
      end
    end
    p encrypted_string
  end

def decrypt(string, key)
    #This method is responsible for decrypting the encrypted text
    decrypted_string = "" #This variable will hold the decrypted text
    string.split("").to_a.each do |c|
      if UPPERCASE_LETTERS.include? c
        decrypted_string += UPPERCASE_LETTERS[ (UPPERCASE_LETTERS.index(c) - key) % 26]
      elsif LOWERCASE_LETTERS.include? c
        decrypted_string += LOWERCASE_LETTERS[ (LOWERCASE_LETTERS.index(c) - key) % 26]
      else
        decrypted_string += c
      end
    end
    p decrypted_string
  end
encrypt("What a string!", -587)
new_encryption = encrypt("Hello, world!", -86)
decrypt(new_encryption, -86)
# => "Bmfy f xywnsl!"
