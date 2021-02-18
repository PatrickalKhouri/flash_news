class PagesPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def home?
    true
  end

  def admin_page?
    user.admin
  end

  def admin
    user.admin
  end
end
