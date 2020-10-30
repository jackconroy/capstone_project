class Api::TastingNotesController < ApplicationController

  before_action :authenticate_user

  def index
    @tasting_notes = TastingNote.all
    render "index.json.jb"
  end
end
