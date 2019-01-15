#!/usr/bin/env ruby
# frozen_string_literal: true

def is_multiple_of_3_or_5?(positive_integer)
  (positive_integer % 3).zero? ||
    (positive_integer % 5).zero?
end

def sum_of_3_and_5_multiples(until_max_value)
  case until_max_value
  when Integer
    case until_max_value >= 0
    when true
      (0..until_max_value - 1).to_a
                              .select do |positive_integer|
        is_multiple_of_3_or_5?(positive_integer)
      end
                              .reduce(0, :+)
    when false
      "Error: the input is a negative Integer, \
instead of a positive Integer"
    end
  else
    "Error: the input is a #{until_max_value.class}, \
instead of a positive Integer"
  end
end
