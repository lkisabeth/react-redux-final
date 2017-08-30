module Api::V1
  class StickyNotesController < ApplicationController
    def index
      @stickynotes = StickyNote.order("created_at DESC")
      render json: @stickynotes
    end

    def create
      @stickynote = StickyNote.create(stickynote_params)
      render json: @stickynote
    end

    private

      def stickynote_params
        params.require(:stickynote).permit(:title, :body)
  end
end
