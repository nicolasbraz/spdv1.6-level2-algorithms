# frozen_string_literal: true

# Function to get the missing number
def get_missing_no(a, n)
  total = (n + 1) * (n + 2) / 2
  n.times do |i|
    total -= a[i]
  end
  total
end

# Driver Code

arr = [1, 2, 4, 5, 6]
n = arr.length
miss = get_missing_no(arr, n)
puts miss.to_s
