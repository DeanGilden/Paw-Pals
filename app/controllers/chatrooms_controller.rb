class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    if current_user != @chatroom.user && current_user != @chatroom.other_user
      redirect_to root_path
      flash[:alert] = "Stop trying to be naughty"
    end
  end

  def new
    @chatroom = ChatRoom.new
  end

  def create
    @chatroom = Chatroom.new
    @chatroom.other_user = User.find(params[:other_user])
    @chatroom.user = current_user
    if @chatroom.save
      flash[:success] = 'Chatroom added!'
      redirect_to chatroom_path(@chatroom)
    else
      render 'new'
    end
  end

  private

  def chat_room_params
    params.require(:chatroom).permit(:name)
  end
end
