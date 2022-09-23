class CompanyPolicy < ApplicationPolicy
    def index?
    user.is_admin? || user.is_manager? || user.is_normal_user?
  end

  def new?
    user.is_admin?
  end

  def create?
    user.is_admin?
  end

  def edit?
    user.is_admin? || user.is_manager?
  end

  def update?
    user.is_admin? || user.is_manager?
  end

  def destroy?
    user.is_admin? 
  end
end
