class StickyNotesController < ApplicationController
  def index
    @stickynotes = StickyNote.all
    render json: @stickynotes
  end
end
