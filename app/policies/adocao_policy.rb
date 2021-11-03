class AdocaoPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    is_owner?
  end

  def new?
    create?
  end

  def create?
    is_owner?
  end

  private

  def is_owner?
    record.user = user
  end
end
