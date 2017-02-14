require 'rails_helper'

RSpec.describe 'Pages', type: :request do
  describe 'with authentication' do
    login
    describe 'GET #index' do
      it 'is valid with authenticated' do
        get '/pages'
        expect(response).to have_http_status(:success)
      end
    end
  end
  describe 'without authentication' do
    describe 'GET #index' do
      it 'is invalid without authenticated' do
        get '/pages'
        expect(response).to have_http_status(302)
      end
    end
  end
end
