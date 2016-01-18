class CreateLineItems < ActiveRecord::Migration[5.0]
  def change
    create_table :line_items do |t|
      t.belongs_to :book, index: true, foreign_key: true
      t.date :charged_at
      t.string :matter
      t.string :receipt_url
      t.decimal :amount, precision: 7, scale: 2, null: false

      t.timestamps
    end
  end
end
