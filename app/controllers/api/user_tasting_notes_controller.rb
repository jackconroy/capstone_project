class Api::UserTastingNotesController < ApplicationController
  
  before_action :authenticate_user

  def index
    @user_tasting_notes = UserTastingNote.all
    render "index.json.jb"
  end

  def create
    user_tasting_note = UserTastingNote.new(
      user_id: current_user.id,
      tasting_note_id: params[:tasting_note_id],
    )
    if user_tasting_note.save
      render json: { message: "Note created successfully" }, status: :created
    end 
  end

end