# frozen_string_literal: true

# Ruby program to implement Jump Search
def jump_search(arr, x, n)
  # Finding block size to be jumped
  step = Math.sqrt(n)

  # Finding the block where element is
  # present (if it is present)
  prev = 0
  while arr[[step, n].min - 1] < x
    prev = step
    step += Math.sqrt(n)
    if prev >= n
      - 1
    end
  end

  # Doing a linear search for x in block
  # beginning with prev.

  while arr[prev] < x
    prev += 1

    # If we reached next block or end of
    # array, element is not present.

    if prev == [step, n].min
      return -1
    end
  end

  # If element is found
  if arr[prev] == x
    prev
  end
end

# Driver program to test function
arr = [0, 1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, 144, 233, 377, 610]
x   = 55
n   = arr.length

# Find the index of 'x' using Jump Search

index = jump_search(arr, x, n)

puts "Number #{x} is at index #{index}"
