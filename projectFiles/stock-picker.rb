def main
  prices = [17,3,6,9,8,6,15,1,10]

  p stock_picker(prices)
end

def stock_picker(stock_prices)
  largest_difference = 0
  indexs = [0, 0]

  stock_prices.each_with_index do |buy_price, i|
    stock_prices.last(stock_prices.length - 1 - i).each_with_index do |sell_price, j|
      if sell_price - buy_price > largest_difference
        largest_difference = sell_price - buy_price
        indexs = [i, (j + i + 1)]
      end
    end
  end

  indexs
end

main()
