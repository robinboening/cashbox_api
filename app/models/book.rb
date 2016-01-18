class Book < ApplicationRecord
  belongs_to :cashbox
  has_many :line_items, dependent: :destroy
  validates :cashbox, :name, :opened_at, presence: true
end
