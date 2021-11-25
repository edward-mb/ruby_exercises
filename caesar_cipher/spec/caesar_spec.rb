require "spec_helper"
require_relative "../lib/caesar_cipher"

RSpec.describe "CaesarCipher" do
  subject(:message) { CaesarCipher.new }

  describe "#encrypt" do
    it "works with the provided example and a shift of 5" do
      expect(message.encrypt("What a string!", 5)).to eql("Bmfy f xywnsl!")
    end

    it "works with the provided example and a shift of 57" do
      expect(message.encrypt("What a string!", 57)).to eql("Bmfy f xywnsl!")
    end

    it "works with the provided example and a shift of -21" do
      expect(message.encrypt("What a string!", -21)).to eql("Bmfy f xywnsl!")
    end
  end
end
