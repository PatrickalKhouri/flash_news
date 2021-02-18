class NewsPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show_pt?
    user.active
  end

  def show_es?
    show_pt?
  end

  def new?
    user.admin
  end

  def create?
    user.admin
  end

  def edit?
    user.admin
  end

  def update?
    user.admin
  end

  def destroy?
    user.admin
  end
end
