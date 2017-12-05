class Ability
  include CanCan::Ability

  def initialize(user)
      #user ||= User.new # guest user (not logged in)
      if user.admin?
        can :manage, Property
        can [:read, :update, :destroy], Comment
      else
        can :read, Property
        can :manage, Comment
      end
  end
end
