class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  
  enum role: [:teacher, :student]
  
  has_many :examinations, foreign_key: "teacher_id"
  has_many :answer_sheets, foreign_key: "student_id"
  has_many :questions, foreign_key: "teacher_id"
end
