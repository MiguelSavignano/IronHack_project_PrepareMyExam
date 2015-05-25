class ThemesController < ApplicationController
  before_action :set_theme, only: [:show, :edit, :update, :destroy]
  before_filter :load_parent

  # def bars_data
  #   descriptions = Theme.all.map{|theme|theme.description} 
  #   minutes = Theme.all.map{|theme|theme.minutes} 
  #   sum_minutes = Theme.all.reduce(0){|sum,theme|sum+theme.minutes} 
  #   data = {descriptions:descriptions, minutes:minutes,sum_minutes:sum_minutes}
  #   render json:data
  # end
  # GET /themes
  # GET /themes.json
  def index
   @themes = @exam.themes.order(:id)
  end

  # GET /themes/1
  # GET /themes/1.json
  def show
  end

  # GET /themes/new
  def new
    @theme = Theme.new
 end

  # GET /themes/1/edit
  def edit
  end

  # POST /themes
  # POST /themes.json
  def create
    @theme = Theme.new(theme_params)
    @subject.themes << @theme
    respond_to do |format|
      if @theme.save
        format.html { redirect_to [@school,@course,@subject,@exam], notice: 'Theme was successfully created.' }
        format.json { render :show, status: :created, location: @theme }
      else
        format.html { render :new }
        format.json { render json: @theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /themes/1
  # PATCH/PUT /themes/1.json
  def update
    respond_to do |format|
      if @theme.update(theme_params)
        format.html { redirect_to [@school,@course,@subject,@exam], notice: 'Theme was successfully updated.' }
        format.json { render :show, status: :ok, location: @theme }
      else
        format.html { render :edit }
        format.json { render json: @theme.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /themes/1
  # DELETE /themes/1.json
  def destroy
    @theme.destroy
    respond_to do |format|
      format.html { redirect_to [@school,@course,@subject,@exam], notice: 'Theme was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_theme
      @theme = Theme.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def theme_params
      params.require(:theme).permit(:subject_id, :description, :minutes)
    end

   private
    def load_parent
      @school = School.find(params[:school_id])
      @course = School.find(params[:school_id]).courses.find(params[:course_id])
      @subject = School.find(params[:school_id]).courses.find(params[:course_id]).subjects.find(params[:subject_id])
      @exam = @subject.exams.find(params[:exam_id]) if params[:exam_id]!=nil 
    end
    
end
