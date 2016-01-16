class CreateCashboxes < ActiveRecord::Migration[5.0]
  def change
    create_table :cashboxes do |t|
      t.string :name
      t.timestamps
    end
  end
end
