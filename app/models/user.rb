class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_and_belongs_to_many :subjects
  has_many :study_sessions
  has_many :notes
  has_many :exams , through: :subjects
  
  def first_exam
    comming_exams = self.exams.where("date >= ?", Date.today)
    first_exam = comming_exams.order(:date).first
  end

  def all_study_session
    self.study_sessions.order("date ASC")
  end
end
