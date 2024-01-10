def caeser_cipher(string, shift)
  
  letter_array = string.split('')
  ord_array = letter_array.map {|letter| letter.ord}

  #use ord to convert to ordinal
  #use chr to convert back to string
  #check lowercase and uppercase separtely   -26 to wrap from Z back to A
  # A-Z 65-90
  # a-z 97-122
  shifted_array = ord_array.map do |charCode|
    if charCode.between?(65, 90) # A-Z
      (charCode + shift) > 90 ? charCode += shift - 26 : charCode += shift
    end

    if charCode.between?(97, 122)
      charCode + shift > 122 ? charCode += shift - 26 : charCode += shift
    end
    charCode
  end
  puts shifted_array.map {|char_code| char_code.chr}.join('')

end



caeser_cipher("Hello ruby!", 10)
caeser_cipher("AZaz", 1)


