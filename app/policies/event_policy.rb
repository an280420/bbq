class EventPolicy < ApplicationPolicy
  
  def update?
    user_is_owner?
  end

  def edit?
    update?
  end

  def destroy?
    update?
  end

  def show?
    true
  end
  
  def new?
    user.present?
  end

  def create?
    user.present?
  end

  class Scope < Scope
    def resolve
      scope.all
    end
  end

  private

  def user_is_owner?
    user.present? && record.user == user
  end
end
