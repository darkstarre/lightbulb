require 'test_helper'

class MakingIdeasTest < ActionDispatch::IntegrationTest

  def test_ideas_can_run_the_gammet_of_crud
    page.visit root_path

    assert page.has_content?("Light up the world with your idea")
    page.click_link ("Light up the world with your idea")

<<<<<<< HEAD
    assert page.has_button?("Create Idea")

    fill_in("idea_body", :with => 'blah blah blog')
=======
    assert page.has_content?("Create Idea")

    fill_in('ideas', :with => 'blah blah blog')
>>>>>>> 1011a71eb44b3d7c03f822bf1aff031e796105a1
    page.click_button('Create Idea')

    assert page.has_content?('blah blah blog')

    page.click_link('blah blah blog')
    assert page.has_content?("Edit Idea")

    fill_in('ideas', :with => 'blah blah edited blog')
    page.click_button('Edit Idea')

    assert page.has_content?('blah blah editied blog')
    assert page.has_content?("Delete")
    assert page.click_link("Delete")

    refute page.has_content?('blah blah editied blog')
  end
end
