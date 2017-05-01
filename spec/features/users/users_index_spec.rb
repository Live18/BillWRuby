require 'rails_helper'

RSpec.feature 'Users - Index Page' do
  let!(:admin_user) { FactoryGirl.create(:user, admin: true) }
  let!(:non_admin_user) { FactoryGirl.create(:user) }

  describe 'access to users index' do
  	it 'permits an admin user' do
  	  sign_in admin_user
  	  visit users_path
  	  expect(page.current_path).to eq users_path
  	end

  	it 'does does not permit non admin user' do
  	  sign_in non_admin_user 
  	  visit users_path
  	  expect(page.current_path).to eq root_path
  	end
  end
end