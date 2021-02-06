class UsersController < ApplicationController
def list_users
    @users = User.all
end
def new_user
    @user = User.new
end

def create_user
    # render plain: params[:user]
    @user = User.new(user_params)
    if @user.save
        FeedBackMailer.query_mail.deliver_now
        # redirect_to action: :list_users
    else
        render action: :new_user
    end
end
def admin
end
private
    def user_params
        params.require(:user).permit(:id, :email, :number, :password)
    end


end