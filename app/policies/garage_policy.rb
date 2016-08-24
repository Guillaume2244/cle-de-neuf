class GaragePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: current_user)
    end
  end

  def show?
    record.user == user
  end

end
