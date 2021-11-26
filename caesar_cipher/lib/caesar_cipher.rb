# The action of a Caesar cipher is to replace each plaintext letter with a different one a fixed number of places down the alphabet.
module CaesarCipher
  # a(97) — z (122)
  # A(65) — Z (90)
  class << self
    # Encrypt a message using the Caesar Cipher algorithm with a specified shift
    def encipher(message, shift = 5)
      encrypted_message = ""
      message.each_char do |char|
        encrypted_ord = encipher_ordinal(char.ord, shift)
        encrypted_message << encrypted_ord
      end
      encrypted_message
    end

    # encrypt_ordinal(ord, shift) = (ord + shift) % number_of_letters_in_the_alphabet
    #
    # If the alphabet base is distinct of 0, as is the case in UTF-8.
    # Calculate the alphabet base of an ordinal number, either lowercase (65) or uppercase (97)
    #
    # encrypt_ordinal(ord, shift) = (ord+shift-base) % 26 + alphabet_base
    def encipher_ordinal(number, shift)
      alphabet_base = number <= 90 ? 65 : 97 # If number is <= 90 then its base is uppercase else is lowercase

      alphabet_letter?(number) ? (number + shift - alphabet_base) % 26 + alphabet_base : number
    end

    # is the ordinal number an alphabet letter?
    # a — z (97- 122) or A — Z (65 - 90)
    def alphabet_letter?(ordinal_number)
      ordinal_number.between?(97, 122) || ordinal_number.between?(65, 90)
    end
  end
end
