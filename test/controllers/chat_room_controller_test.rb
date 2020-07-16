require 'test_helper'

class ChatRoomControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get chat_room_index_url
    assert_response :success
  end

end
