class SchoolsController < ApplicationController
  before_action :set_school, only: [:show, :edit, :update, :destroy]

  # GET /schools
  # GET /schools.json
  def index
    @schools = current_user.schools
  end

  # GET /schools/1
  # GET /schools/1.json
  def show
    # binding.pry
      @courses = @school.courses
  end

  # GET /schools/new
  def new
    @school = School.new
  end

  # POST /schools
  # POST /schools.json
  def create
    @school = School.new(school_params)

    respond_to do |format|
      if @school.save
        format.html { redirect_to @school, notice: 'School was successfully created.' }
        format.json { render :show, status: :created, location: @school }
      else
        format.html { render :new }
        format.json { render json: @school.errors, status: :unprocessable_entity }
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_school
      @school = School.where(id:params[:id],user_id:current_user.id).first
      unless @school
        redirect_to schools_path
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def school_params
      params[:school]
    end
    
end
