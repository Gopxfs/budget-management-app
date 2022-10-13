require 'rails_helper'

RSpec.describe 'Budget', type: :model do
  before(:each) do
    @group = Group.new
    @user = User.new(
      name: 'Gabriel',
      email: 'example@email.com',
      password: '123123'
    )
    @budget = Budget.new
    @group.user = @user
    @budget.author = @user
    @group.budgets.push(@budget)
    @group.save
  end

  describe 'Budget validations should work' do
    it 'should have a name' do
      @budget.name = nil
      expect(@budget).to_not be_valid
    end

    it 'should have a positive amount' do
      expect(@budget.amount).to eq(0)
      @budget.amount = -1
      expect(@budget).to_not be_valid
      @budget.amount = 100
      expect(@budget).to be_valid
    end
  end
end
