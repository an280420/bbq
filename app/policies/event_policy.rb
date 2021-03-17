class EventPolicy < ApplicationPolicy
  
  def edit?
    update?
  end

  def update?
    user.present? && record.user == user
  end

  def destroy?
    update?
  end

  def show?
    update?
  end
  
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  private

  def user_is_owner?(event)
    user.present? && (event.try(:user) == user)
  end
end
