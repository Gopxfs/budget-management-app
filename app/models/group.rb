class Group < ApplicationRecord
  has_and_belongs_to_many :budgets
  belongs_to :user

  validates :name, presence: true, length: { minimum: 1, maximum: 40 }

  def total_price
    sum = 0
    budgets.includes([:budgets_groups]).each do |transaction|
      sum += transaction.amount
    end
    sum
  end

  def transactions_list
    budgets.order('created_at DESC')
  end
end
