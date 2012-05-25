require 'test_helper'

module BcmsFckeditor
  class FileBrowserControllerTest < ActionController::TestCase
    test "should get index" do
      get :index
      assert_response :success
    end
  
  end
end
