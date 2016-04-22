require 'test_helper'

class MakingIdeasTest < ActionDispatch::IntegrationTest

  def test_ideas_can_run_the_gammet_of_crud
    page.visit ideas_path

    assert page.has_content?("Light up the world with your idea")
    page.click_link ("Light up the world with your idea")

    assert page.has_button?("Create Idea")

    fill_in("idea_body", :with => 'blah blah blog')


    page.click_button('Create Idea')
    assert page.has_content?('blah blah blog')

    page.click_link('blah blah blog')
    assert page.has_content?("Update Idea")
    fill_in('idea_body', :with => 'blah blah edited blog')
    page.click_button('Update Idea')

    assert page.has_content?('blah blah edited blog')
    assert page.has_content?("Turn off your ideas")
    assert page.click_first_link("Turn off your ideas")

    refute page.has_content?('blah blah edited blog')
  end
end
