require 'pry'

def isNonLetter?(byte)
  return byte < 65 || byte > 90 && byte < 97 || byte > 122
end

def remove_shift_cycles(shift)
  shift = shift - 26
  shift > 26 ? leftover(shift) : shift
end

def caesar_cipher(string, shift)
  bytes = string.bytes
  shift > 25 ? shift = remove_shift_cycles(shift) : shift

  shifted_bytes = bytes.map do |byte|
    isNonLetter?(byte) ? byte : byte + shift
  end

  p shifted_bytes
end

caesar_cipher('a!b#c]d}', 0)
caesar_cipher('a!b#c]d}', 50)


  # < 65 SPECIAL
  # #65-90  A-Z
  # >90 && <97 SPECIAL
  # #97-122 a-z
  # > 122 SPECIAL


  # if shift > 26
  #   shift = shift - shift / 26
  # end

  # ordArr = string.bytes

  # shiftedArr = ordArr.map do |num|
  #   # if num >= 32 && num <= 47 
  #   #   num.chr
  #   # end
    
  #   shifted_num = num + shift





  #   if (num >= 97 && num <= 122 && shifted_num > 122) ||
  #      (num >= 65 && num <= 90 && shifted_num > 90)
  #     shifted_num = shifted_num - 26
  #   end


      
  #   #   shifted_num -= 26

  #   # # (shifted_num >= 97 && shifted_num <= 122) || 
  #   # #    (shifted_num >= 65 && shifted_num <= 90)

  #   # shifted_num.chr
  #   shifted_num.chr
  # end

  # shiftedArr.join('')

# 32 - 47 special characters


# split string into individual letters
# convert individual letters into ascii code integer values

# increase ascii integer values by the shift amount
  # Determine upper and lower bounds of ascii integer values
  # If shifted amount increases beyond upper bound decrease by 26 to get correct letter
  # ignore spaces and punctuation
# 


