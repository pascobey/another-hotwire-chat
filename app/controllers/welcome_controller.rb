class WelcomeController < ApplicationController

  def index
    if user_signed_in?
      @user = current_user
    else
      @user = User.new
    end
    @rooms = @user.rooms
    @signing_up ||= false
    @signing_in ||= false
    @making_room ||= false
  end

end
