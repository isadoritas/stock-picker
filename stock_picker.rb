def stock_picker(prices)
    max_profit = 0
    best_days = [0,0]
    prices.each_with_index do |buy_price, buy_day|
        prices[buy_day+1..-1].each_with_index do |sell_price, sell_day|
            if sell_price - buy_price > max_profit
                best_days = [buy_day, sell_day + buy_day]
                max_profit = sell_price - buy_price
            end
    end
end
best_days
end
