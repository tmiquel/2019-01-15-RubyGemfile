#! usr/env/bin ruby
# frozen_string_literal: true

def best_revenue(daily_price_array, buy_day)
  revenues_array = daily_price_array[buy_day + 1..-1]
                   .collect do |daily_price|
    daily_price - daily_price_array[buy_day]
  end
  revenues_array.max
end

def sell_day(buy_day, daily_price_array)
  revenues_array = daily_price_array[buy_day + 1..-1]
                   .collect do |daily_price|
    daily_price - daily_price_array[buy_day]
  end
  revenues_array.each_with_index.max[1] + buy_day + 1
end

def best_trading_days(daily_price_array)
  best_revenue_per_buy_day = (0..daily_price_array.length - 2)
                             .to_a.collect do |buy_day|
    best_revenue(daily_price_array, buy_day)
  end
  buy_day = best_revenue_per_buy_day.each_with_index.max[1]

  [buy_day, sell_day(buy_day, daily_price_array)]
end

# def perform
#   best_trading_days([17, 3, 6, 9, 15, 8, 6, 1, 10])
#   # puts best_revenue([17, 3, 6, 9, 15, 8, 6, 1, 10],0) # - 2
# end

# perform
