require 'test_helper'

class HomeTest < ActionDispatch::IntegrationTest
  test "Homepageloads correctly" do
    visit "/"
    assert_equal 200, page.status_code
  end
end


