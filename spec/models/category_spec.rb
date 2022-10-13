require 'rails_helper'

RSpec.describe 'Category', type: :model do
  before(:each) do
    @group = Group.new
    @user = User.new(
      name: 'Gabriel',
      email: 'example@email.com',
      password: '123123'
    )
    @budget = Budget.new(amount: 5)
    @group.user = @user
    @budget.author = @user
    @group.budgets.push(@budget)
    @group.save
  end

  describe 'Category validations should work' do
    it 'should have a name' do
      @group.name = nil
      expect(@group).to_not be_valid
    end

    it 'should have a default icon' do
      expect(@group.icon).to eq('https://cdn-icons-png.flaticon.com/512/94/94699.png')
    end
  end

  describe 'Category methods should work' do
    it 'should return the total price' do
      expect(@group.total_price).to eq(5)
    end

    it 'should return the list of transactions' do
      transactions = @group.transactions_list
      expect(transactions.first).to eq(@budget)
    end
  end
end
