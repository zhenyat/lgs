class SpeechPartsController < ApplicationController
  before_action :set_speech_part, only: %i[ show edit update destroy ]

  # GET /speech_parts or /speech_parts.json
  def index
    @speech_parts = SpeechPart.all
  end

  # GET /speech_parts/1 or /speech_parts/1.json
  def show
  end

  # GET /speech_parts/new
  def new
    @speech_part = SpeechPart.new
  end

  # GET /speech_parts/1/edit
  def edit
  end

  # POST /speech_parts or /speech_parts.json
  def create
    @speech_part = SpeechPart.new(speech_part_params)

    respond_to do |format|
      if @speech_part.save
        format.html { redirect_to speech_part_url(@speech_part), notice: "Speech part was successfully created." }
        format.json { render :show, status: :created, location: @speech_part }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @speech_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /speech_parts/1 or /speech_parts/1.json
  def update
    respond_to do |format|
      if @speech_part.update(speech_part_params)
        format.html { redirect_to speech_part_url(@speech_part), notice: "Speech part was successfully updated." }
        format.json { render :show, status: :ok, location: @speech_part }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @speech_part.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /speech_parts/1 or /speech_parts/1.json
  def destroy
    @speech_part.destroy!

    respond_to do |format|
      format.html { redirect_to speech_parts_url, notice: "Speech part was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_speech_part
      @speech_part = SpeechPart.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def speech_part_params
      params.require(:speech_part).permit(:de, :en, :es, :ru)
    end
end
