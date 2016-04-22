require 'test_helper'

class MakingIdeasTest < ActionDispatch::IntegrationTest

  def test_I_can_make_my_ideas_and_see_them
    page.visit root_path

    assert page.has_content?("Light up the world with your idea")
    page.click_link ("Light up the world with your idea")

    assert page.has_button?("Create Idea")

    fill_in("idea_body", :with => 'blah blah blog')
    page.click_button('Create Idea')

    assert page.has_content?('blah blah blog')
  end
end
