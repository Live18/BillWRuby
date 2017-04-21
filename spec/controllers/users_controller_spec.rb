require 'rails_helper'

describe UsersController, :type => :controller do
  let(:user) { User.create!(email: 'billwagner101@hotmail.com', password: 'noah04') }
  describe 'Get #show' do
    context 'User is logged in' do
      before do
        sign_in @user
        get :show, params: {id: @user.id }
      end
    end

    context 'No user is logged in' do
      it 'redirects to login' do 
        get :show, id: user.id
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
end