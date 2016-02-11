class Book < ApplicationRecord
  belongs_to :cashbox
  has_many :line_items, dependent: :destroy, after_add: :add_to_total, after_remove: :subtract_from_total
  validates :cashbox, :name, :opened_at, presence: true

  private

  def add_to_total(line_item)
    self.total += line_item.amount
  end

  def subtract_from_total(line_item)
    self.total -= line_item.amount
  end
end
