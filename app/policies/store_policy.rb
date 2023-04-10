class StorePolicy < ApplicationPolicy
  def index?
    true
  end

  def show?
    true
  end

  def create?
    user.try(:admin?)
  end

  def new?
    create?
  end

  def update?
    user.try(:admin?)
  end

  def edit?
    update?
  end

  def destroy?
    user.try(:admin?)
  end

  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end
end
