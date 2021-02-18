class PagesController < ApplicationController
    skip_before_action :authenticate_user!
    
    def home
        if current_user.present?
            redirect_to user_managment_path(current_user)
        end
    end
end
