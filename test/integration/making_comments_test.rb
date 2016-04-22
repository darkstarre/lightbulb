require 'test_helper'

class MakingIdeasTest < ActionDispatch::IntegrationTest
  def test_comments_can_run_the_gammet_of_crud
    my_idea = Idea.create body: "Comment about me"
    page.visit idea_path(my_idea)

    assert page.has_content?("Comment about me")
    assert page.has_button?("Create Comment")
    fill_in("comment_body", :with => 'This is a great idea!')
    page.click_button("Create Comment")
    assert page.has_content?('This is a great idea!')

    assert page.has_button?("Delete this Comment")
    page.click_button?("Delete this Comment")
    refute page.has_content?('This is a great idea!')
  end
end
