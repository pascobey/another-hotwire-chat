class RoomReflex < ApplicationReflex

    def add_user
        u = User.find(element.dataset[:user_id].to_i)
        Room.find(element.dataset[:room_id]).users << u
        message = "#{u.first_name} #{u.last_name} added"
        morph "#user-#{u.id}", "<div class='text-center'><div class='text-success px-1 py-0'>#{message}</div></div>"
    end

    def remove_user
        u = User.find(element.dataset[:user_id].to_i)
        Room.find(element.dataset[:room_id]).users.delete(element.dataset[:user_id].to_i)
        message = "#{u.first_name} #{u.last_name} removed"
        morph "#user-#{u.id}", "<div class='text-center'><div class='text-danger px-1 py-0'>#{message}</div></div>"
    end

end