require_relative '../lib/DockingStation.rb'

describe DockingStation do
  describe '#release_bike' do
    docking_station = DockingStation.new
      it {expect(docking_station).to respond_to(:release_bike)}
      it 'assigns a new bike when released' do
        expect(docking_station.release_bike).to be_truthy
    end
  end

  describe '#dock_bike' do 
    docking_station = DockingStation.new
    
      it 'docking station responds to #dock_bike' do 
        expect(docking_station).to respond_to(:dock_bike).with(1).argument
      end
       
  end  

end
