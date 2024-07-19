def main()
  array = [4,3,78,2,0,2]

  p bubble_sort(array)
end

def bubble_sort(array)
  swaps = -1
  until swaps == 0
    swaps = 0
    for i in 0..(array.length - 2)
      if array[i] > array[i + 1]
        temp = array[i]
        array[i] = array[i + 1]
        array[i + 1] = temp

        swaps += 1
      end
    end
  end

  array
end

main()
