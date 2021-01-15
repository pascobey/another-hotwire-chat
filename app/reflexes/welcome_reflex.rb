class WelcomeReflex < ApplicationReflex

    def sign_up
        @signing_up = true
    end

    def sign_in
        @signing_in = true
    end

    def make_room
        @making_room = true
    end

end