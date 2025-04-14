class UserPolicy < ApplicationPolicy
  def show?
    true
  end

  def show_profile?
    user == record
  end

  def edit_profile?
    user == record
  end

  def update_profile?
    user == record
  end
end
