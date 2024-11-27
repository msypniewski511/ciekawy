class ScannedTextsController < ApplicationController
  before_action :set_scanned_text, only: %i[ show edit update destroy ]

  # GET /scanned_texts or /scanned_texts.json
  def index
    @scanned_texts = ScannedText.last.content.scan(/\b\d{8}\b/)
  end

  # GET /scanned_texts/1 or /scanned_texts/1.json
  def show
  end

  # GET /scanned_texts/new
  def new
    @scanned_text = ScannedText.new
  end

  # GET /scanned_texts/1/edit
  def edit
  end

  # POST /scanned_texts or /scanned_texts.json
  def create
    @scanned_text = ScannedText.new(content: params[:content])

    respond_to do |format|
      if @scanned_text.save
        # format.html { redirect_to @scanned_text, notice: "Scanned text was successfully created." }
        render json: { message: 'Text saved successfully!', content: @scanned_text.content }, status: :created
      else
        # format.html { render :new, status: :unprocessable_entity }
        render json: { errors: @scanned_text.errors.full_messages }, status: :unprocessable_entity
      end
    end
  end

  # PATCH/PUT /scanned_texts/1 or /scanned_texts/1.json
  def update
    respond_to do |format|
      if @scanned_text.update(scanned_text_params)
        format.html { redirect_to @scanned_text, notice: "Scanned text was successfully updated." }
        format.json { render :show, status: :ok, location: @scanned_text }
      else
        format.html { render :edit, status: :unprocessable_entity }
        render json: { errors: @scanned_text.errors.full_messages }, status: :unprocessable_entity
      end
    end
  end

  # DELETE /scanned_texts/1 or /scanned_texts/1.json
  def destroy
    @scanned_text.destroy!

    respond_to do |format|
      format.html { redirect_to scanned_texts_path, status: :see_other, notice: "Scanned text was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_scanned_text
      @scanned_text = ScannedText.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def scanned_text_params
      params.require(:scanned_text).permit(:content)
    end
end
