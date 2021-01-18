class RegistrationsController < Devise::RegistrationsController
    def new
      super
    end
  
    def create
        super
        # @user = User.new(sign_up_params)
    
        # if @user.save
        #   redirect_to @user, notice: 'User was successfully created.'
        #  else
        #    render action: 'new'
        # end
    end
  
    def update
      super
    end

    private
        def sign_up_params
            params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :avatar)
        end
end
