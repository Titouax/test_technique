# frozen_string_literal: true

class Budget < ApplicationRecord
  belongs_to :user
  belongs_to :exchange_rate

  validates :end_at, comparison: { greater_than: :start_at }

  after_create_commit { broadcast_append_to(:budgets) }
end
