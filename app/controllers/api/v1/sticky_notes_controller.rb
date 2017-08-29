module Api::V1
  class StickyNotesController < ApplicationController
    def index
      @stickynotes = StickyNote.all
      render json: @stickynotes
    end
  end
end
