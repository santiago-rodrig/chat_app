class MessagesController < ApplicationController
  before_action :require_login

  def create
    @message = current_user.messages.build(message_params)
    if @message.save
      ActionCable.server.broadcast 'chat_room_channel',
        message: render_to_string(@message)
      head :ok
    else
      head :server_error
    end
  end

  private

  def message_params
    params.require(:message).permit(:body)
  end
end

