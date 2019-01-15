# frozen_string_literal: true

require_relative '../lib/multiples'

describe 'the is_multiple_of_3_or_5? method' do
  it 'should return TRUE when an integer is a multiple of 3 or 5' do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it 'should return FALSE when an integer is NOT a multiple of 3 or 5' do
    expect(is_multiple_of_3_or_5?(2)).to eq(false)
    expect(is_multiple_of_3_or_5?(22)).to eq(false)
    expect(is_multiple_of_3_or_5?(122)).to eq(false)
    expect(is_multiple_of_3_or_5?(22)).to eq(false)
  end
end

describe 'sum_of_3_and_5_multiples' do
  it 'shall return a positive integer for any positive integer as n' do
    expect(sum_of_3_and_5_multiples(0)).to eq(0)
    expect(sum_of_3_and_5_multiples(1)).to eq(0)
    expect(sum_of_3_and_5_multiples(1)).to eq(0)
    expect(sum_of_3_and_5_multiples(10)).to eq(23)
    expect(sum_of_3_and_5_multiples(11)).to eq(33)

  end

  it 'shall return an error message when the input is not a positive integer' do
    expect(sum_of_3_and_5_multiples('0')).to eq(
      'Error: the input is a String, instead of a positive Integer'
    )
    expect(sum_of_3_and_5_multiples([])).to eq(
      'Error: the input is a Array, instead of a positive Integer'
    )
    expect(sum_of_3_and_5_multiples(-1)).to eq(
      'Error: the input is a negative Integer, instead of a positive Integer'
    )

    expect(sum_of_3_and_5_multiples(-1.2)).to eq(
      'Error: the input is a Float, instead of a positive Integer'
    )
  end
end
