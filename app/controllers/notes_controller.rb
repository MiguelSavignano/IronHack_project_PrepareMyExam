class NotesController < ApplicationController
  before_action :set_note, only: [:show, :edit, :update, :destroy, :rate]
  before_filter :load_parent_exam, only: [:index]
  before_filter :load_parent_theme, only: [:new, :create]

  # GET /notes
  # GET /notes.json
  def index
    @notes_user = @exam.notes_user(current_user)
    @notes_public = @exam.notes_public(current_user)
  end

  # GET /notes/1
  # GET /notes/1.json
  def show
  end

  # GET /notes/new
  def new
    # binding.pry
    @note = Note.new
  end

  # GET /notes/1/edit
  def edit
  end

  def rate
    # binding.pry
    @note.rate += 1
    @note.save
  end
  # POST /notes
  # POST /notes.json
  def create
    # binding.pry
    @note = Note.new(note_params)
    @note.user = current_user
    @note.theme = @theme
    respond_to do |format|
      if @note.save
        format.html { redirect_to exams_path, notice: 'Note was successfully created.' }
        format.json { render :show, status: :created, location: @note }
      else
        format.html { render :new }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /notes/1
  # PATCH/PUT /notes/1.json
  def update
    respond_to do |format|
      if @note.update(note_params)
        format.html { redirect_to @note, notice: 'Note was successfully updated.' }
        format.json { render :show, status: :ok, location: @note }
      else
        format.html { render :edit }
        format.json { render json: @note.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /notes/1
  # DELETE /notes/1.json
  def destroy
    @note.destroy
    respond_to do |format|
      format.html { redirect_to exams_path, notice: 'Note was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_note
      @note = Note.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def note_params
      note_params = params.require(:note).permit(:name, :attachment, :public)
    end

    def load_parent_theme
      @theme = Theme.find(params[:theme_id])
    end

    def load_parent_exam
      @exam = Exam.find(params[:exam_id])
    end
end
