class Examination < ActiveRecord::Base
    has_many :questions, through: :examination_questions
    has_many :examination_questions
    belongs_to :teacher, class_name: "User"
end
