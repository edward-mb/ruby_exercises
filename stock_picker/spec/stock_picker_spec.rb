require_relative "../spec/spec_helper"
require_relative "../lib/stock_picker"

RSpec.describe "StockPicker" do
  subject(:stock_picker) { StockPicker }

  describe "#pick" do
    it "works with the provided example" do
      expect(stock_picker.pick([17, 3, 6, 9, 15, 8, 6, 1, 10])).to eql([1, 4])
    end
  end
end
