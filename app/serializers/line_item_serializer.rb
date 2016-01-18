class LineItemSerializer < ActiveModel::Serializer
  attributes :id, :charged_at, :matter, :receipt_url, :amount
  belongs_to :book
end
