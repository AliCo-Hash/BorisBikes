require_relative '../lib/DockingStation.rb'

describe DockingStation do
  describe '#release_bike' do
    docking_station = DockingStation.new
      it {expect(docking_station).to respond_to(:release_bike)}
      it 'release working bikes' do
        bike = DockingStation.new
        expect(bike.release_bike).to be_working
      end
      it 'release a bike' do
        bike = Bike.new
        subject.dock(bike)
        expect(subject.release_bike).to eq bike
      end
      it 'return error message if bike amount is empty' do
        expect{subject.release_bike}. to raise_error "No bikes left"
      end
  end
  

  describe '#dock' do 
    docking_station = DockingStation.new
      it 'docking station responds to #dock' do 
      expect(docking_station).to respond_to(:dock).with(1).argument
      end
  
      it {is_expected.to respond_to(:bike)}
      it 'returns bike to docking station' do
        bike = Bike.new
        expect(subject.dock(bike)).to eq bike
      end

   

  

end
end