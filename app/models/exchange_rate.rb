# frozen_string_literal: true

class ExchangeRate < ApplicationRecord
  has_many :budgets, dependent: :restrict_with_error
end
