require 'pry'

def isNonLetter?(byte)
  return byte < 65 || byte > 90 && byte < 97 || byte > 122
end

def caesar_cipher(string, shift)
  p bytes = string.bytes
  

  shifted_bytes = bytes.map do |byte|
    if isNonLetter?(byte)
      byte
    else
      byte + shift
    end
  end

end

p caesar_cipher('a b c}', 1)