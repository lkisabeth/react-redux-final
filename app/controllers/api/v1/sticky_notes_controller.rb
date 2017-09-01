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

    def update
      @stickynote = StickyNote.find(params[:id])
      @stickynote.update_attributes(stickynote_params)
      render json: @stickynote
    end

    def destroy
      @stickynote = StickyNote.find(params[:id])
      if @stickynote.destroy
        head :no_content, status: :ok
      else
        render json: @stickynote.errors, status: :unprocessable_entity
      end
    end

    private

      def stickynote_params
        params.require(:stickynote).permit(:title, :body)
      end
  end
end
