class ChatRoomController < ApplicationController
  before_action :require_login

  def index
    @message = Message.new
    @messages = Message.all
  end
end

