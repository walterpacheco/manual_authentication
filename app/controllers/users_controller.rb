class UsersController < ApplicationController
      #  before_action :user_params, only: [:show, :edit, :update, :destroy]
    
        def new
          @user = User.new
        end
      
        # GET /hamburgers/1/edit
        def edit

        end
      
         def create
        @user= User.new(user_params)
          if @user.save
            session[:user_id] =@user.id
            redirect_to root_path
          else
           render :new
          end
        end
      
    
      private
        # Use callbacks to share common setup or constraints between actions.
        def user_params
        
          params.require(:user).permit(:name, :email,:password)
        end
end
 

