require 'test_helper'

class HomeTest < ActionDispatch::IntegrationTest
  test "Homepageloads correctly" do
    visit "./"
    assert [200, 304].include?(page.status_code), "Homepage does not load"
  end
end




