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

    page.first('.i').click_link('1')
    assert page.has_content?("Edit")
    page.click_link('Edit')
    assert page.has_content?("Update Idea")
    fill_in('idea_body', :with => 'blah blah edited blog')
    page.click_button('Update Idea')

    assert page.has_content?('blah blah edited blog')
    page.first('.i').click_link('1')
    assert page.has_content?("Delete")
    assert page.click_first_link("Delete")

    refute page.has_content?('blah blah edited blog')
  end
end
