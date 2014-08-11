class UsersController < ApplicationController


def index

30.times{print "#"}
puts params
30.times{print "#"}
# @users = User.where(sport:@)

end

def new
  @user = User.new
@user.sport = params["sport"]

end

def contact

30.times{print "#"}
puts params
30.times{print "#"}
	render :contact

end

def create

@user = User.new(user_params)
@user.save
 @users = User.where(sport:@user.sport)
render :index
end


def show

end


private

def user_params
	params.require(:user).permit(:name,:sport,:email,:phone)

end

end