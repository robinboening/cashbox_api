class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.belongs_to :cashbox, index: true, foreign_key: true
      t.string :name
      t.date :opened_at
      t.date :closed_at
      t.decimal :opening_balance, precision: 7, scale: 2, default: 0.0, null: false
      t.decimal :total, precision: 7, scale: 2, default: 0.0, null: false

      t.timestamps
    end
  end
end
