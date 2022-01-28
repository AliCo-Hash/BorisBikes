require_relative '../lib/docking_station.rb'

describe DockingStation do
  describe '#release_bike' do
    it { is_expected.to respond_to :release_bike }
    it 'releases working bikes' do
    expect(subject.release_bike).to be_working
    end
    
    describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new 
      subject.dock(bike)
      # we want to release the bike we docked
      expect(subject.release_bike).to eq bike
    end
  end

    it 'does not release a bike when none are available' do
      expect{subject.release_bike}.to raise_error("No bikes available")
    end
  end
  

  describe '#dock' do 
    it { is_expected.to respond_to(:dock).with(1).argument }
    
    it {is_expected.to respond_to(:bike)}

    it 'docks something' do
      bike = Bike.new
      # We want to return the bike we dock
      expect(subject.dock(bike)).to eq bike
    end

    it 'returns docked bikes' do
      bike = Bike.new #creates a bike instance variable to use for testing purpose
      subject.dock(bike) # reads as the dock methods gets applied to the docking station
      # Again, we need to return the bike we just docked
      expect(subject.bike).to eq bike # expects the bike methods being applied to the docking station to 'return' a bike
    end

    it 'does not accept bike if no space available' do
      subject.dock(Bike.new)
      expect{subject.dock Bike.new}.to raise_error("No space available")
    end
  end
end

