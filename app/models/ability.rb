class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new
    if user.teacher?
      can :manage, :all
    else
      can :create, AnswerSheet do |answer_sheet|
        answer_sheet.student_id == user.id
      end
    end
  end
end
