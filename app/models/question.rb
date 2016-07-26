class Question < ActiveRecord::Base
    has_many :options
    has_many :examinations, through: :examination_questions
    has_many :examination_questions
    belongs_to :teacher, class_name: "User"
    
    accepts_nested_attributes_for :options, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
