class Budget < ApplicationRecord
  has_and_belongs_to_many :groups
  belongs_to :author, class_name: 'User', foreign_key: :user_id
end
