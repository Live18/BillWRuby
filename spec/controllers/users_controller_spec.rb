require 'rails_helper'

describe UsersController, :type => :controller do
  #let(:user) { User.create!(email: 'billwagner101@hotmail.com', password: 'noah04') }
  before do
    @user = FactoryGirl.create(:user)
    @user2 = FactoryGirl.create(:user)
  end
  describe 'Get #show' do
    context 'User is logged in' do
      before do
        sign_in @user
        get :show, params: {id: @user.id }
      end
      it 'loads correct user details' do
        get :show, params: { id: @user.id}
        expect(assigns(:user)).to eq @user
        expect(response).to have_http_status(200)
      end
      it 'cant access other users show page' do
        get :show, params: { id: @user2.id}
        expect(response).to have_http_status(404)
        expect(response).to redirect_to(root_path)
      end
    end

    context 'No user is logged in' do
      it 'redirects to login' do 
        get :show, params: { id: @user.id }
        expect(response).to redirect_to(new_user_session_path)
      end
    end
  end
end