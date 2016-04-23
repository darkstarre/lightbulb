require "test_helper"

class UserTest < ActionDispatch::IntegrationTest
  def test_a_user_can_see_their_specific_post
    user = User.create(name: "aaron",uid: "123")
    idea = user.ideas.create(body: "this is the body")
    page.visit idea_path(user , idea)
    assert page.has_content?("this is the body")
  end

end
