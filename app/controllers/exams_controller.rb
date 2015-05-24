class ExamsController < ApplicationController
  before_action :set_exam, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!
  before_filter :load_parent

  # GET /exams
  # GET /exams.json

  def index
    @exams = current_user.exams.where(subject:@subject)
  end

  # GET /exams/1
  # GET /exams/1.json
  def show
  end

  # GET /exams/new
  def new
    @exam = Exam.new
  end

  # GET /exams/1/edit
  def edit
  end

  # POST /exams
  # POST /exams.json
  def create
    # binding.pry
    @exam = Exam.new(exam_params)
    id_themes = params["theme"].values.map(&:to_i)
    themes = Theme.find(id_themes)
    @exam.themes << themes
    @subject.exams << @exam
    respond_to do |format|
      if @exam.save
        format.html { redirect_to [@school,@course,@subject,@exam], notice: 'Exam was successfully created.' }
        format.json { render :show, status: :created, location: @exam }
      else
        format.html { render :new }
        format.json { render json: @exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exams/1
  # PATCH/PUT /exams/1.json
  def update
    respond_to do |format|
      if @exam.update(exam_params)
        format.html { redirect_to [@school,@course,@subject,@exam], notice: 'Exam was successfully updated.' }
        format.json { render :show, status: :ok, location: @exam }
      else
        format.html { render :edit }
        format.json { render json: @exam.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exams/1
  # DELETE /exams/1.json
  def destroy
    @exam.destroy
    respond_to do |format|
      format.html { redirect_to [@school,@course,@subject,@exam], notice: 'Exam was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_exam
      @exam = Exam.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exam_params
      params.require(:exam).permit(:subject_id, :description, :date)
    end

    private
    def load_parent
      @school = current_user.schools.find(params[:school_id])
      @course = @school.courses.find(params[:course_id])
      @subject = @course.subjects.find(params[:subject_id])
    end

end
