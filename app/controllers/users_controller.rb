class UsersController < ApplicationController
    def index 
        render plain: User.order(:id).map{|user| user.to_pleasant_string1}.join("\n")
    end
    
    def show
        id = params[:id]
        user = User.find(id)
        render plain: user.to_pleasant_string1
    end

end