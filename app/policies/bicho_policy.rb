class BichoPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    true
  end

  def new?
    create?
  end

  def create?
    true
  end

  def edit?
    update?
  end

  def update?
    is_owner?
  end

  def destroy?
    is_owner?
  end

  private

  def is_owner?
    # @bicho => record
    # current_user => user
    # record.user == user || user.admin # O mesmo que @restaurant.user == current_user
    record.user == user
  end
end
