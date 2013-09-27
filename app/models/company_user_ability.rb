class CompanyUserAbility
  include CanCan::Ability

  def initialize(company_user)
   can :manage, Vehicle
   can :manage, CompanyProfile
  end
end
