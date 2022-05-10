# frozen_string_literal: true

FactoryBot.define do
  factory :budget do
    title { Faker::Company.name }
    start_at { Faker::Time.between(from: 2.years.ago, to: 1.year.ago) }
    end_at { Faker::Time.between(from: Date.current, to: 1.year.from_now) }

    association :user
    association :exchange_rate
  end
end
