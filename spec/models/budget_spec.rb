# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Budget, type: :model do
  describe '#amounts' do
    let(:start_at) { Date.new(2022, 10, 4) }
    let(:end_at) { Date.new(2023, 3, 8) }
    let(:target) { 167_000.0 }
    let(:forecast) { 184_500.0 }

    let(:budget) { create(:budget, start_at: start_at, end_at: end_at) }

    it 'calculate the amounts' do
      expect(budget.amounts).to eq [
        { start_at: Date.new(2022, 10, 4), end_at: Date.new(2022, 10).end_of_month, target: 29_974.36, forecast: 33_115.38, saving: 3141.03 },
        { start_at: Date.new(2022, 11), end_at: Date.new(2022, 11).end_of_month, target: 32_115.38, forecast: 35_480.77, saving: 3365.38 },
        { start_at: Date.new(2022, 12), end_at: Date.new(2022, 12).end_of_month, target: 33_185.9, forecast: 36_663.46, saving: 3477.56 },
        { start_at: Date.new(2023, 1), end_at: Date.new(2023, 1).end_of_month, target: 33_185.9, forecast: 36_663.46, saving: 3477.56 },
        { start_at: Date.new(2023, 2), end_at: Date.new(2023, 2).end_of_month, target: 29_974.36, forecast: 33_115.38, saving: 3141.03 },
        { start_at: Date.new(2023, 3), end_at: Date.new(2023, 3, 8), target: 8564.1, forecast: 9461.54, saving: 897.44 }
      ]
    end
  end
end
