require 'test_helper'

RSpec.configure do |config|
    config.include Devise::Test::ControllerHelpers, type::controller
  end

class CommentsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
end
