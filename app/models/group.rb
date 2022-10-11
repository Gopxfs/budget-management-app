class Group < ApplicationRecord
  has_and_belongs_to_many :budgets
  belongs_to :user

  validates :name, presence: true, length: { minimum: 1, maximum: 40 }

  def total_price
    sum = 0
    budgets.each do |transaction|
      sum += amount
    end
    sum
  end
end
