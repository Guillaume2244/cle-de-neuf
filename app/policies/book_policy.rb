class BookPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(user: user)
    end
  end

  def index?
    true
  end

  def create?
     true
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end

  def show?
  @garage = user.garages.first
  record.user == user || record.is_garagiste(user) || record.registration_plate == @garage.registration_plate && record.token == @garage.token
  end

end


