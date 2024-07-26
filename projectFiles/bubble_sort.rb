def main
  array = [4, 3, 78, 2, 0, 2]

  p bubble_sort(array)
end

def bubble_sort(array)
  swaps = true
  until swaps == false
    swaps = false
    (array.length - 1).times do |i|
      if array[i] > array[i + 1]
        array[i], array[i + 1] = array[i + 1], array[i]
        swaps = true
      end
    end
  end

  array
end

main
