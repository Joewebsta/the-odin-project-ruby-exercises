def isNonLetter?(byte)
  return byte < 65 || byte > 90 && byte < 97 || byte > 122
end

def remove_shift_cycles(shift)
  shift -= 26
  shift > 26 ? remove_shift_cycles(shift) : shift
end

def exceeds_z?(byte, shifted_byte)
  if (byte >= 65 && byte <= 90 && shifted_byte > 90) || 
     (byte >= 97 && byte <= 122 && shifted_byte > 122)
    shifted_byte -= 26
  else
    shifted_byte
  end 
end

def shiftChars(string, shift)
  bytes = string.bytes
  shift > 25 ? shift = remove_shift_cycles(shift) : shift

  shifted_bytes = bytes.map do |byte|
    if (isNonLetter?(byte))
      byte.chr
    else
      shifted_byte = byte + shift
      sanitized_shifted_byte = exceeds_z?(byte, shifted_byte).chr
    end
  end

  shifted_bytes.join()
end

def caesar_cipher(string, shift)
  shiftChars(string, shift)
end

p caesar_cipher("What a string!", 5)
p caesar_cipher("ABC", 132)
p caesar_cipher("XYZ", 10)
p caesar_cipher("X   Y    Z", 77)
p caesar_cipher("X&(&$^Y{{}}!Z", 18)