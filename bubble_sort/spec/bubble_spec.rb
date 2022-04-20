require_relative "../spec/spec_helper"
require_relative "../lib/bubble_sort"

RSpec.describe "BubbleSort" do
  subject(:buble_sort) { BubbleSort }

  describe "#sort" do
    it "works with the provided example" do
      expect(buble_sort.sort([4, 3, 78, 2, 0, 2])).to eql([0, 2, 2, 3, 4, 78])
    end
    it "works with wiki's 1st example" do
      expect(buble_sort.sort([5, 1, 4, 2, 8])).to eql([1, 2, 4, 5, 8])
    end
  end
end
