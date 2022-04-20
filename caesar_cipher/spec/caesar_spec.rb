require_relative "../spec/spec_helper"
require_relative "../lib/caesar_cipher"

RSpec.describe "CaesarCipher" do
  subject(:cipher) { CaesarCipher }

  describe "#encipher" do
    it "works with the provided example and a shift of 5" do
      expect(cipher.encipher("What a string!", 5)).to eql("Bmfy f xywnsl!")
    end

    it "works with the provided example and a shift of 57" do
      expect(cipher.encipher("What a string!", 57)).to eql("Bmfy f xywnsl!")
    end

    it "works with the provided example and a shift of -21" do
      expect(cipher.encipher("What a string!", -21)).to eql("Bmfy f xywnsl!")
    end

    it "works with wikepedia example with a shift of 23" do
      expect(cipher.encipher("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG", 23)).to eql("QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD")
    end

    it "works with wikepedia example with a shift of -3" do
      expect(cipher.encipher("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG", -3)).to eql("QEB NRFZH YOLTK CLU GRJMP LSBO QEB IXWV ALD")
    end

    it "if enciphered twice with a shift of 13, gets the original message" do
      expect(cipher.encipher(cipher.encipher("Hola Mundo!", 13), 13)).to eql("Hola Mundo!")
    end
  end
end
