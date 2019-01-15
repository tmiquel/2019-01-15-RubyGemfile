# frozen_string_literal: true

require_relative '../lib/trading_days.rb'

describe 'best_revenue' do
  it 'returns the best revenue for a specific buy_day' do
    expect(best_revenue([17, 3, 6, 9, 15, 8, 6, 1, 10], 1))
      .to eq(12)
  end
  it 'returns the best revenue for a specific buy_day test 2' do
    expect(best_revenue([17, 3, 6, 9, 15, 8, 6, 1, 10], 0))
      .to eq(-2)
  end

  it 'returns the best revenue for a specific buy_day test 3' do
    expect(best_revenue([17, 3, 6, 9, 15, 8, 6, 1, 10], 5))
      .to eq(2)
  end
end

describe 'sell_day' do
  it 'returns the best for sales for a specific buy_day' do
    expect(sell_day(1, [17, 3, 6, 9, 15, 8, 6, 1, 10]))
      .to eq(4)
  end
  it 'returns the best for sales for a specific buy_day test 2' do
    expect(sell_day(0, [17, 3, 6, 9, 15, 8, 6, 1, 10]))
      .to eq(4)
  end
  it 'returns the best for sales for a specific buy_day' do
    expect(sell_day(5, [17, 3, 6, 9, 15, 8, 6, 1, 10]))
      .to eq(8)
  end
end

describe 'best_trading_days' do
  it 'returns the best trading days for a specific stoke price evolution' do
    expect(best_trading_days([17, 3, 6, 9, 15, 8, 6, 1, 10]))
      .to eq([1, 4])
  end
  it 'returns the best trading days for a specific stoke price evolution test 2' do
    expect(best_trading_days([17, 3, 6, 9, 15, 45, 6, 1, 10]))
      .to eq([1, 5])
  end
  it 'returns the best trading days for a specific stoke price evolution test 3' do
    expect(best_trading_days([17, 3, 6, 9, 11, 8, 0, 1, 10]))
      .to eq([6, 8])
  end
end
