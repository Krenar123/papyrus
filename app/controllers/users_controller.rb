class UsersController < ApplicationController
    def show
        # Ktu do e bojm userin show edhe krejt shka munet mi bo
        @user = User.find(params[:id])
    end
end
