require 'rails_helper'

RSpec.describe 'Pages', type: :request do
  describe 'GET #index' do
    context 'with authentication' do
      login
      it 'return success status' do
        get '/pages'
        expect(response).to have_http_status(:success)
      end
    end
    context 'without authentication' do
      it 'return fail status' do
        get '/pages'
        expect(response).to have_http_status(302)
      end
    end
  end
end
