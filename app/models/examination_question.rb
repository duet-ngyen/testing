class ExaminationQuestion < ActiveRecord::Base
    belongs_to :question
    belongs_to :examination
end
