class RoomReflex < ApplicationReflex

    def add_user
        Room.find(element.dataset[:room_id]).users << User.find(element.dataset[:user_id].to_i)
    end

    def remove_user
        Room.find(element.dataset[:room_id]).users.delete(element.dataset[:user_id].to_i)
    end

end