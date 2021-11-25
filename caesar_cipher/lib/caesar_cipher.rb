class CaesarCipher
  # a(97) — z (122)
  # A(65) — Z (90)
  def encrypt(message, shift = 5)
    real_shift = shift % 26
    encrypted_message = ""
    message.each_char do |c|
      ord = c.ord
      shifted_ord = ord + real_shift
      if ord >= 65 && ord <= 90
        if shifted_ord > 90
          shifted_ord -= 26
        elsif shifted_ord < 65
          shifted_ord += 26
        end
        encrypted_message << shifted_ord.chr
      elsif ord >= 97 && ord <= 122
        if shifted_ord > 122
          shifted_ord -= 26
        elsif shifted_ord < 97
          shifted_ord += 26
        end
        encrypted_message << shifted_ord.chr
      else
        encrypted_message << c
      end
    end
    encrypted_message
  end
end
