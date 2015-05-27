class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_and_belongs_to_many :subjects
  has_many :study_sessions
  has_many :notes

  def first_exam
    nested_exams_array = self.subjects.map{|s|s.exams.where("date >= ?", Date.today)}
    exams_array = nested_exams_array.flatten
    first_exam = exams_array.sort{ |a,b| a.date<=>b.date}.first
  end

  def all_study_session
    StudySession.where(user:self).order("date ASC")
  end
end
