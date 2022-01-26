class DockingStation 
  #essentially writes the bike method on any instance variable in this class
  attr_reader :bike
  
  def release_bike
    fail "No bikes left" unless @bike
    bike.new
  end

  def dock(bike)
    @bike = bike
   
  end



  
end

class Bike
  
    def working?
      true
    end   
end  
