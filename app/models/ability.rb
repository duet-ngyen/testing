class Ability
  include CanCan::Ability

  def initialize(user)
    # user ||= User.new
    # if user.teacher?
    #   can :manage, :all
    # else
    # end
  end
end
