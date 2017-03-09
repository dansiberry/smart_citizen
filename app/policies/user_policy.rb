class UserPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope
    end
  end

  def show?
    true
  end

  def create?
    true
  end

  def update?
    record == user
  end

  def destroy?
    record == user
  end
end
