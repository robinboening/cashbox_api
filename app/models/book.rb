class Book < ApplicationRecord
  belongs_to :cashbox
  validates :cashbox, :name, :opened_at, presence: true
end
