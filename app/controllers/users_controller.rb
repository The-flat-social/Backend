class UsersController < ApplicationController
  #get request
  def index
        users = User.all
        render json: users
      end
      
      
      def comment
        user = User.find_by(id: params[:id])
        render json: user
      end
      


#post request

    def create 
        new_user = User.create(name: params[:name], email: params[:email], password: params[:password], username: params[:username], followers: params[:followers]) 
        render json: new_user
    end


#patch request

    def update
    user = User.find_by(id: params[:id])
  #for this update below, only include what you want to update
    user.update(params.permit(:name, :password))
    render json: user
    end 

    def destroy

    user = User.find_by(id: params[:id])
    user.destroy
    render json: {}
    end

end