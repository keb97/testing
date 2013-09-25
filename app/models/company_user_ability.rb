class CompanyUserAbility
  include CanCan::Ability

  def initialize(company_user)
   can :manage, Vehicle
  end
end
