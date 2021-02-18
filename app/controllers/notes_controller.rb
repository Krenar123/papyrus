class NotesController < ApplicationController
    def new 
        @note = Note.new
    end

    def create 
        @note = Note.new(notes_params)
        @note.user = current_user
        if @note.save
            redirect_to user_managment_path(current_user)
        else
            render :new
        end
    end

    private

    def notes_params
        params.require(:notes).permit(:title, :canvas)
    end
end
