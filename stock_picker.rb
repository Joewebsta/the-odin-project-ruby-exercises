def stock_picker(prices)
  profit  = 0
  low_idx = 0
  high_idx = 0

  prices.each_with_index do |low_price, idx|
    next if idx === prices.length - 1

    remaining_prices = prices[(idx + 1)..]
    high_price = remaining_prices.max
    profit_calc = high_price - low_price
    
    if (profit_calc > profit)
      profit = profit_calc
      low_idx = prices.index(low_price)
      high_idx = prices.index(high_price)
    end
  end
  
  if (prices[high_idx] == prices[low_idx])
    p "There were no profitable buying opportunities during the provided time period."
  else
    p [low_idx, high_idx]
    p "# for a profit of $#{prices[high_idx]} - $#{prices[low_idx]} = $#{prices[high_idx] - prices[low_idx]}"
  end
end

stock_picker([17,3,6,9,15,8,6,1,10])
stock_picker([17,16,15,14,13,12,11,10,9])
stock_picker([9,10,11,12,13,14,15,16,17])
stock_picker([4,5,3,15,6,17,13,15,6])
stock_picker([15,13,15,3,2,20,18,11])