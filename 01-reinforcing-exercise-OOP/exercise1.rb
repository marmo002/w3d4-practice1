def sum_odds(list)
  list.select { |n| n % 2 != 0 }.sum
end
