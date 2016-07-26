class AnswerSheet < ActiveRecord::Base
    has_many :answers
    belongs_to :examination
    belongs_to :student, class_name: "User"
end
