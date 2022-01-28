require_relative 'bike'

class DockingStation 
  #essentially writes the bike method on any instance variable in this class
  attr_reader :bike

  def release_bike
    fail "No bikes available" unless @bike
     return @bike
  end

  def dock(bike)
    fail "No space available" if @bike
    @bike = bike
  end

end
