class BookingPolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def show?
    user_is_owner_or_landlord?
  end

  def create?
    true
  end

  def update?
    user_is_owner_or_landlord?
  end

  def accept?
    user_is_landlord?
  end

  def decline?
    user_is_landlord?
  end

  private

  def user_is_owner_or_landlord?
    record.user == user || record.place.user == user
  end

  def user_is_landlord?
    record.place.user == user
  end
end
