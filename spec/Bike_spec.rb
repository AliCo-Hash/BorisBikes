require_relative '../lib/DockingStation.rb'

describe Bike do
    describe '#working?' do
    bike = Bike.new
    it {expect(bike).to respond_to(:working?)}
    it "should check if the bike is good" do
    expect(bike.working?).to eq true
    end
  end
end