# Stock Picker Project from The Odins'project ruby programming course
module StockPicker
  class << self
    # It returns a pair of days representing the best day to buy and the best day to sell
    # @note  takes in an array of stock prices, one for each hypothetical day. Days start at 0.
    # @param stocks[Array<Integer>]
    # @return [Array<Integer>]
    def pick(stocks)
      best_profit = 0
      best_pair = Array.new(2)
      stocks.each_with_index do |buy_price, buy_day|
        stocks.each_with_index do |sell_price, sell_day|
          next unless buy_day < sell_day
          profit = sell_price - buy_price
          if profit > best_profit
            best_profit = profit
            best_pair = [buy_day, sell_day]
          end
        end
      end
      best_pair
    end
  end
end

p StockPicker.pick([17, 3, 6, 9, 15, 8, 6, 1, 10])
