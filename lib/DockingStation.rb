class DockingStation 

  attr_reader :bike

  def release_bike
    @bike = Bike.new
    @bike
  end

  def dock_bike(bike)
    @bike = bike
  end

end

class Bike
  
    def working?
      true
    end   
end  

class Item
    attr_reader :item_name  
  
    def initialize(item_name)
      @item_name = item_name
    end  
  end
  
  item = Item.new("agragarok")
  p item.item_name