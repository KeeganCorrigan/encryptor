require "pry"

class Encryptor
  def cipher
    {
      "a" => "n",
      "b" => "o",
      "c" => "p",
      "d" => "q",
      "e" => "r",
      "f" => "s",
      "g" => "t",
      "h" => "u",
      "i" => "v",
      "j" => "w",
      "k" => "x",
      "l" => "y",
      "m" => "z",
      "n" => "a",
      "o" => "b",
      "p" => "c",
      "q" => "d",
      "r" => "e",
      "s" => "f",
      "t" => "g",
      "u" => "h",
      "v" => "i",
      "w" => "j",
      "x" => "k",
      "y" => "l",
      "z" => "m"
    }
  end

  def encrypt(word)
    encrypted = letters(word).map do |l|
      if l == l.upcase
        if cipher.has_key?(l.downcase)
          cipher[l.downcase].upcase
        else
          l
        end
      else
        cipher[l]
      end
    end
    encrypted.join
  end

  def decrypt(word)
    decrypted = letters(word).map do |l|
      if l == l.upcase
        if cipher.has_value?(l.downcase)
          cipher.key(l.downcase).upcase
        else
          l
        end
      else
        cipher.key(l)
      end
    end
    decrypted.join
  end

  def letters(word)
     word.split("")
  end
end
