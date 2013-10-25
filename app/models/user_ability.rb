class UserAbility
  include CanCan::Ability

  def initialize(user)
    can :read, :all
    can :manage, Address
    can :manage, Transaction, :user_id => user.id
  end
end
