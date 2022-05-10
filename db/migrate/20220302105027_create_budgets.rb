# frozen_string_literal: true

class CreateBudgets < ActiveRecord::Migration[7.0]
  def change
    create_table :exchange_rates do |t|
      t.string :currency
      t.decimal :rate

      t.timestamps
    end

    create_table :budgets do |t|
      t.string :title

      t.datetime :start_at
      t.datetime :end_at

      t.references :exchange_rate
      t.references :user

      t.timestamps
    end
  end
end
