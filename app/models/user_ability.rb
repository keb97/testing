class UserAbility
  include CanCan::Ability

  def initialize(user)
    can :read, :all
    can :manage, Address
  end
end
