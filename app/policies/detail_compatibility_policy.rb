class DetailCompatibilityPolicy < ApplicationPolicy
  def show?
    user.present?
  end

  def new?
    user.present?
  end

  def create?
    user.present?
  end

  def edit?
    record.user == user
  end

  def update_user_preferences?
    user.present?
  end
end
