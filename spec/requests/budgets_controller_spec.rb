require 'rails_helper'
require './spec/helpers/auth_helper'

RSpec.configure do |c|
  c.include AuthHelper
end

RSpec.describe 'Budgets Controller', type: :request do
  subject do
    User.new(
      name: 'Gabriel',
      email: 'example@email.com',
      password: '123123',
    )
  end

  context "GET #index" do
    it "renders the :index view" do 
      sign_in(subject)
      get '/budgets'

      expect(response).to be_successful

      expect(response).to render_template(:index)

      expect(response.body).to include('TRANSACTIONS')
    end
  end
end