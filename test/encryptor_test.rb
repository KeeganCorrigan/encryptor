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

  def test_it_keeps_case_correct_when_encrypting
    encryptor = Encryptor.new
    encryption = encryptor.encrypt("HeLlo")
    assert_equal("UrYyb", encryption)
  end

  def test_it_keeps_case_correct_when_decrypting
    decryptor = Encryptor.new
    decryption = decryptor.decrypt("UrYyb")
    assert_equal("HeLlo", decryption)
  end

  def test_encryptor_keeps_non_letters_the_same
    encryptor = Encryptor.new
    encryption = encryptor.encrypt("Hello World.")
    assert_equal("Uryyb Jbeyq.", encryption)
  end

  def test_decryptor_keeps_letters_the_same
    decryptor = Encryptor.new
    decryption = decryptor.decrypt("Uryyb Jbeyq.")
    assert_equal("Hello World.", decryption)
  end
end
