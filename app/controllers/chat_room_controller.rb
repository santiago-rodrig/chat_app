class ChatRoomController < ApplicationController
  before_action :require_login

  def index
    @message = Message.new
    @messages = Message.last(20)
    @users = User.all
  end
end

