class Group < ApplicationRecord
  has_and_belongs_to_many :budgets
  belongs_to :user
end
