require 'rails_helper'

RSpec.describe 'Users Controller', type: :request do
  describe 'GET #index' do
    it 'renders the Users page' do
      get '/users/sign_in'

      expect(response).to be_successful

      expect(response).to render_template(:index)
    end
  end
end