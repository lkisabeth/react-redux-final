require 'test_helper'

class StickyNotesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get sticky_notes_index_url
    assert_response :success
  end

end
