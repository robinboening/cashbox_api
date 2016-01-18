class BookSerializer < ActiveModel::Serializer
  attributes :id, :name, :opened_at, :opening_balance, :closed_at, :total
  belongs_to :cashbox
  has_many :line_items
end
