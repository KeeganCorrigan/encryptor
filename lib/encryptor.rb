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
    letters(word).map { |l| cipher[l] }.join
  end

  def decrypt(word)
    letters(word).map { |l| cipher.key(l) }.join
    end

    letters.join
  end

  def letters(word)
     word.split("")
  end
end
