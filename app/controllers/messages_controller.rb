class MessagesController < ApplicationController
    before_action :set_room, :set_user, only: [:new, :create]
    
    def new
        @message = @room.messages.new
    end

    def create
        @create_message_params = message_params
        @create_message_params["user"] = current_user
        @message = @room.messages.create!(@create_message_params)
        respond_to do |format|
            format.turbo_stream
            format.html { redirect_to @room }
        end
    end

    private 
        def set_room
            @room = Room.find(params[:room_id])
        end

        def set_user
            @user = current_user
        end

        def message_params
            params.require(:message).permit(:content)
        end
end