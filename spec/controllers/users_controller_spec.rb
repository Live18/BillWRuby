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
    end

    context 'No user is logged in' do
      it 'redirects to login' do 
        get :show, params: { id: @user.id }
        expect(response).to redirect_to(new_user_session_path)
      end
    end
    context "User cannot see other user show page" do
      before do
        sign_in @user2
      end
    end
  end
end