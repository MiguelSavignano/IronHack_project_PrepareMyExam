class StudySessionsController < ApplicationController
  before_action :set_study_session, only: [:show, :edit, :update, :destroy]
  before_filter :load_parent

  # GET /study_sessions
  # GET /study_sessions.json
  def index
    @study_sessions = StudySession.where(user:current_user,exam:@exam).order(:date)
  end

  # GET /study_sessions/1_
  # GET /study_sessions/1.json
  def show
  end

  # GET /study_sessions/new
  def new
    @study_session = StudySession.new
  end

  # GET /study_sessions/1/edit
  def edit
  end

  # POST /study_sessions
  # POST /study_sessions.json
  def create
    @study_session = StudySession.new(study_session_params)
    @study_session.user = current_user
    @study_session.theme = @theme
    @study_session.exam = @exam
    respond_to do |format|
      if @study_session.save
        format.html { redirect_to [@school,@course,@subject,@exam,@study_session], notice: 'Study session was successfully created.' }
        format.json { render :show, status: :created, location: @study_session }
      else
        format.html { render :new }
        format.json { render json: @study_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /study_sessions/1
  # PATCH/PUT /study_sessions/1.json
  def update
    respond_to do |format|
      if @study_session.update(study_session_params)
        format.html { redirect_to [@school,@course,@subject,@exam,@study_session], notice: 'Study session was successfully updated.' }
        format.json { render :show, status: :ok, location: @study_session }
      else
        format.html { render :edit }
        format.json { render json: @study_session.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /study_sessions/1
  # DELETE /study_sessions/1.json
  def destroy
    @study_session.destroy
    respond_to do |format|
      format.html { redirect_to [@school,@course,@subject,@exam,@study_session], notice: 'Study session was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_study_session
      @study_session = StudySession.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def study_session_params
      study_session_params=params.require(:study_session).permit(:date, :minutes)
      hour_minutes_string = params[:study_session][:minutes]
      minutes = hour_minutes_string.to_minutes
      study_session_params.merge!(minutes:minutes)
    end

    private
    def load_parent
      @school = School.find(params[:school_id])
      @course = @school.courses.find(params[:course_id])
      @subject = @course.subjects.find(params[:subject_id])
      @exam = @subject.exams.find(params[:exam_id])
    end

    
end
