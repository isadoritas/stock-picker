# Stock Picker
## Descrição
O stock_picker é um método escrito em Ruby que recebe um array de preços de ações e retorna os melhores dias para comprar e vender para obter o maior lucro.

## Como usar
Primeiro, defina o método stock_picker:
```
def stock_picker(prices)
  best_days = [0, 0]
  max_profit = 0

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
```

Em seguida, você pode chamar o método stock_picker passando um array de preços. Por exemplo:
```
stock_picker([17,3,6,9,15,8,6,1,10])
```

Isso retornará um array com dois elementos. O primeiro elemento é o melhor dia para comprar (índice mais baixo) e o segundo elemento é o melhor dia para vender (índice mais alto).

## How to Use
1. Clone this repository to your local machine using git clone.
2. Navigate to the project folder in your terminal.
3. Run the program with the command ruby stock_picker.rb.
4. When prompted, enter the text you wish to encrypt and the number of positions you wish to shift.

## This is an assignment from [The Odin Project](https://www.theodinproject.com/lessons/ruby-stock-picker)

## License
This project is licensed under the MIT License - see the [LICENSE.md] file for details.



