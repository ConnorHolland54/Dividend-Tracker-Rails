class CreateStocks < ActiveRecord::Migration[6.1]
  def change
    create_table :stocks do |t|
      t.string :symbol
      t.string :name
      t.string :description
      t.string :dividend_per_share
      t.string :dividend_date
      t.string :ex_dividend_date

      t.timestamps
    end
  end
end
