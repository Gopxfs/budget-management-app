require 'rails_helper'

RSpec.describe 'Pages Controller', type: :request do
  describe 'GET #index' do
    it 'renders the splash page' do
      get '/'

      expect(response).to be_successful

      expect(response).to render_template(:splash)

      expect(response.body).to include('LOG IN')
      expect(response.body).to include('SIGN UP')
    end
  end
end
