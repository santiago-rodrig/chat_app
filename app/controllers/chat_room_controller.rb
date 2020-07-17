class ChatRoomController < ApplicationController
  before_action :require_login

  def index
    @messages = Message.all
  end
end

