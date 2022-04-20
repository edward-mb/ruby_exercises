# BubbleSort takes an array and returns a sorted array.
module BubbleSort
  class << self
    # @param array[Array<Integer>]
    # @return array[Array<Integer>]
    def sort(array)
      num = array.length
      loop do
        swapped = false

        for idx in 1..(num - 1) do
          if array[idx - 1] > array[idx]
            swap(array, idx)
            swapped = true
          end
        end
        num -= 1

        break if !swapped
      end
      array
    end

    private

    # mutable swap
    def swap(array, current)
      previous = current - 1
      array[previous], array[current] = array[current], array[previous]
    end
  end
end
