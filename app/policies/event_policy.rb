class EventPolicy < ApplicationPolicy
  def update?
    user.present? && record.user == user
  end

  def edit?
    update?
  end

  def destroy?
    update?
  end

  def show?
    (record.pincode.blank? ||
    (user.present? && user == record.user)) ||
    record.pincode_valid?(cookies["events_#{record.id}_pincode"])
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
end
