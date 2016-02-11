require "rails_helper"

describe Book do
  let(:cashbox) { Cashbox.create(name: "cashbox") }

  describe "after adding a line item" do
    it "the line items amount is added to the total sum" do
      book = cashbox.books.create(name: "2016", opened_at: DateTime.current, total: 1.00)
      book.line_items.create(charged_at: DateTime.current, amount: 9.99)
      expect(book.total).to eq(10.99)
    end
  end

  describe "after removing a line item" do
    it "the line items amount is subtracted from the total sum" do
      book = cashbox.books.create(name: "2016", opened_at: DateTime.current, total: 59.99)
      book.line_items.create(charged_at: DateTime.current, amount: 15.99)
      book.line_items.destroy_all
      expect(book.total).to eq(59.99)
    end
  end
end
