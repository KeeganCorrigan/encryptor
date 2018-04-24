# gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/encryptor'

class EncryptorTest < Minitest::Test
  def test_it_exists
    encryptor = Encryptor.new
    assert_instance_of(Encryptor, encryptor)
  end

  def test_it_encrypts
    encryptor = Encryptor.new
    encryption = encryptor.encrypt("hello")
    assert_equal("uryyb", encryption)
  end

  def test_it_decrypts
    decryptor = Encryptor.new
    decryption = decryptor.decrypt("uryyb")
    assert_equal("hello", decryption)
  end

  # test it keeps case correct
  # test it can encrypt a sentence
  # test it respects punctuation
end
