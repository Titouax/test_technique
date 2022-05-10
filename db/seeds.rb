# frozen_string_literal: true

require 'faker'

user = User.where(email: 'admin@per-angusta.com').first_or_create(password: 'password')
user.confirm unless user.confirmed?

exchange_rate = ExchangeRate.where(currency: 'EUR').first_or_create(rate: 1.11)

Budget.destroy_all

10.times do
  Budget.create(
    title: Faker::Company.name,
    start_at: Faker::Time.between(from: 2.years.ago, to: 1.year.ago),
    end_at: Faker::Time.between(from: Date.current, to: 1.year.from_now),
    user: user,
    exchange_rate: exchange_rate
  )
end
