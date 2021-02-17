class NewsPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show_pt?
    true
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
end
