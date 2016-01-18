class LineItem < ApplicationRecord
  belongs_to :book
  validates :book, :charged_at, :amount, presence: true
end
