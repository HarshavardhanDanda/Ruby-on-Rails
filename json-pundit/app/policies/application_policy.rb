# frozen_string_literal: true

class ApplicationPolicy
  attr_reader :user, :record

  def initialize(user = User.find(1), record)
    @user = user
    @record = record
  end

  def index?
    false
  end

  def show?
    false
  end

  def create?
    false
  end

  def new?
    create?
  end

  def update?
    false
  end

  def edit?
    update?
  end

  def destroy?
    false
  end

  class Scope
    attr_reader :user, :scope
    def initialize(user, scope)
      @user = User.find(1)
      raise Pundit::NotAuthorizedError, "Not Authorized" unless @user.admin?
      @scope = scope
    end

    def resolve
      scope
    end

    private

    
  end
end
