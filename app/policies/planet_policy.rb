class PlanetPolicy < ApplicationPolicy
  class Scope < Scope
    # NOTE: Be explicit about which records you allow access to!
    # def resolve
    #   scope.all
    # end
  end

  def show?
    true
  end

  def new?
    create?
  end

  def create?
    true
  end

  def comment?
    i = 0
    instance = user.bookings.select { |booking| (booking.user == user && booking.ending_date < Date.today && booking.status == "Réservation confirmée") }
    instance.each {|booking| booking.planet == record ? i += 1 : i }
    i != 0 ? true : false
  end

  def edit?
    update?
  end

  def update?
    record.user == user
  end

  def destroy?
    record.user == user
  end


end
