require 'test_helper'

class FormTest < ActionDispatch::IntegrationTest

  def teardown
  end

  def setup
  end

  test "User can access post/new wihtout logging in" do
    visit "./posts/new"
    assert [200, 304].include?(page.status_code), "Post new page doesn't load"
    assert page.has_content?("Raise a public issue"), "Not accessing the new post form"
  end

  test "Can create issue and signup at once" do
    visit "./posts/new"
    assert Post.all.length == 0, "There are posts already saved"
    within '#new_post' do
      fill_in('post_title', with: 'jack')
      fill_in('post_content', with: 'Lorem ipsum dolor sit amet, consectetur adipisicing elit. Officiis, sequi, perspiciatis dolor sit amet, dolor sit amet, dolor sit amet, dolor sit amet, dolor sit amet, dolor sit amet, dolor sit amet, dolor sit amet, dolor sit amet, dolor sit amet, dolor sit amet, dolor sit amet, dolor sit amet, dolor sit amet, .')
      fill_in('post_category', with: 'test')
      select 'Barcelona', from: 'post_city'
      select 'Eixample', from: 'post_neighbourhood'
      page.first("#politician-photo").click
      click_button('Create issue')
    end
    within '.sign-up-hidden' do
      fill_in('post__user_first_name', with: 'Jack')
      fill_in('Last name', with: 'White')
      fill_in('Address', with: 'myAdressss')
      fill_in('Email', with: 'hWhite@me.com')
      select 'Barcelona', from: 'City'
      select 'Eixample', from: 'Neighbourhood'
      page.first(".post_user_password").fill_in(with: 'password')
      page.first(".post_user_password_confirmation").fill_in(with: 'password')
      click_button('Create issue')
    end
      assert (User.last.first_name == "Jack"), "User has not been created"
      assert (User.last.posts.length == 1 ), "Post has not been attached to new user"
  end

 end

# class PhotoUpload < ActionDispatch::IntegrationTest
#   test "User can upload photo for a post" do
#     visit "./posts/1"
#     assert !html.include?("issues-edit"), "Edit post is visible when not signed in"
#     sign_in(User.find(1))
#     assert User.find(1).posts.length == 1, "User has one post"
#     visit "./posts/#{User.find(1).posts.first.id}"
#     assert html.include?("issues-edit"), "Edit post link not served when signed in"
#     visit "./posts/#{User.find(1).posts.first.id}/edit"
#     page.attach_file('post[photo]', Rails.root + 'test/images/test_upload.png')
#     click_button('Update issue')
#     assert html.include?("http://res.cloudinary.com/dvmgzsqg3/image/upload"), "Show page does not contain uploaded image"
#   end
# end


