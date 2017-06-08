require 'test_helper'

class FormTest < ActionDispatch::IntegrationTest
  test "User can access post/new wihtout logging in" do
    visit "./posts/new"
    assert_equal 200, page.status_code
    assert page.has_content?("Raise a public issue for your local politicians to respond to")
  end

  test "If user is not logged in, after submitting form they are shown the signup form" do
    visit "./posts/new"
    assert_equal 2 , UserAsPolitician.all.length
    within '#new_post' do
      fill_in('post_title', with: 'John')
      fill_in('post_content', with: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis, sequi, perspiciatis dolor sit amet, dolor sit amet, dolor sit amet, dolor sit amet, dolor sit amet, dolor sit amet, dolor sit amet, dolor sit amet, dolor sit amet, dolor sit amet, dolor sit amet, dolor sit amet, dolor sit amet, dolor sit amet, .')
      fill_in('post_category', with: 'test')
      select 'Barcelona', from: 'post_city'
      select 'Eixample', from: 'post_neighbourhood'
      page.first("#politician-photo").click
      click_button('Create issue')
      save_screenshot('./file.png', :full => true)
      save_and_open_page
    end
  end

  # test "User can create post and signup at once" do
  #   visit "./"
  #   assert_equal 200, page.status_code
  #   assert_equal 5 , User.all.length
  # end
 end



