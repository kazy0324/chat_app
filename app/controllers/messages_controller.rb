class MessagesController < ApplicationController
  def create

    @message = Message.create(msg_params)
    if @message.save
      ActionCable.server.broadcast "room_channel", content: @message.content
    else

    end
  end

  private
    def msg_params
      params.require(:message).permit(:content)
    end
end
