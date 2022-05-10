# frozen_string_literal: true

FactoryBot.define do
  factory :exchange_rate do
    currency { 'EUR' }
    rate { 1.11 }
  end
end
