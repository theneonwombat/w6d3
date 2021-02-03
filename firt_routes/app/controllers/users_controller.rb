class UsersController < ApplicationController
    
    def index
        lists = User.all
        render json: lists

    end

   def create
    user = User.new(params.require(:user).permit(:name,:email))
    user.save!
    render json: user
    end

    def show
        person = User.find(params[:id])
        render json: person

    end
end