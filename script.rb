def stock_picker(array)
  previous_profit = 0
  buy_day = 0
  sell_day = 0
  array.each_with_index do |price, index|
    for j in index + 1..array.length - 1 do
      profit = array[j] - price
      if profit > previous_profit
        previous_profit = profit
        buy_day = index
        sell_day = j
      end
    end
  end
  p [buy_day, sell_day]
end

array = [17, 3, 6, 9, 15, 8, 5, 1, 10]
stock_picker(array)
