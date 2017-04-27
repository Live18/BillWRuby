require 'rails_helper'

describe User, :type => :model do
  it "should not validate users without an email address" do
    @user = FactoryGirl.build(:admin, email: 'not_an_email')
    expect(@user).to_not be_valid
  end
end