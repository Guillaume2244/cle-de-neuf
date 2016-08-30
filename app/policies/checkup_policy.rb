class CheckupPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.where(book: @book)
    end
  end

  def index?
    true
  end

  def new?
    true
  end

  def create?
    true
  end

  def items?
    true
  end

end
