# frozen_string_literal: true

require 'pry-byebug'
require 'benchmark'

def swap_items_in_array(items, index_a, index_b)
  items[index_a], items[index_b] = items[index_b], items[index_a]
end

def bubble_sort(items)
  n = items.length
  swapped = true
  while swapped
    swapped = false
    for i in 1..(n - 1)
      index_a = i - 1
      index_b = i
      next unless items[index_a] > items[index_b]

      # binding.pry
      swap_items_in_array(items, index_a, index_b)
      swapped = true
    end
  end
  items
end

def bubble_sort_2(items)
  n = items.length
  swapped = true
  while swapped
    swapped = false
    for i in 1..(n - 1)
      index_a = i - 1
      index_b = i
      next unless items[index_a] > items[index_b]

      # binding.pry
      swap_items_in_array(items, index_a, index_b)
      swapped = true
    end
    n -= 1
  end
  items
end

# [4, 3, 78, 2, 0, 2]
# [0, 2, 2, 3, 4, 78]

# p bubble_sort([4, 3, 78, 2, 0, 2])
# p bubble_sort_2([4, 3, 78, 2, 0, 2])

Benchmark.bm do |x|
  x.report('A') { bubble_sort([4, 3, 78, 2, 0, 2]) }
  x.report('B') { bubble_sort_2([4, 3, 78, 2, 0, 2]) }
end
