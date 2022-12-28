# frozen_string_literal: true

require 'pry-byebug'

def swap_items_in_array(items, index_a, index_b)
  items[index_a], items[index_b] = items[index_b], items[index_a]
end

def bubble_sort(items)
  n = items.length
  # swapped = true
  # while swapped
  #   swapped = false
  for i in 1..(n - 1)
    index_a = i - 1
    index_b = i
    next unless items[index_a] > items[index_b]

    # binding.pry
    swap_items_in_array(items, index_a, index_b)
    # swapped = true
  end
  items
  # end
end

# [4, 3, 78, 2, 0, 2]
# [3, 4, 2, 0, 2, 78]
p bubble_sort([4, 3, 78, 2, 0, 2])
