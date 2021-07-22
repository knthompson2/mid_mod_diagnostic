require './lib/passenger'
require './lib/vehicle'

RSpec.describe Vehicle do
  it "exists and has a year, make and model" do
    vehicle = Vehicle.new("2001", "Honda", "Civic")

    expect(vehicle).to be_a(Vehicle)
    expect(vehicle.year).to eq("2001")
    expect(vehicle.make).to eq("Honda")
    expect(vehicle.model).to eq("Civic")
  end

  it "determines if speeding" do
    vehicle = Vehicle.new("2001", "Honda", "Civic")

    expect(vehicle.speeding?).to eq(false)
  end

  it "can speed" do
    vehicle = Vehicle.new("2001", "Honda", "Civic")

    expect(vehicle.speeding?).to eq(false)
    vehicle.speed
    expect(vehicle.speeding?).to eq(true)
  end

  it "starts with no passengers" do
    vehicle = Vehicle.new("2001", "Honda", "Civic")

    expect(vehicle.passengers).to eq([])
  end

  it "can gain passengers" do
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    vehicle.add_passenger(charlie)
    vehicle.add_passenger(jude)
    vehicle.add_passenger(taylor)

    expect(vehicle.passengers).to eq([charlie, jude, taylor])
  end

  it "can gain passengers" do
    vehicle = Vehicle.new("2001", "Honda", "Civic")
    charlie = Passenger.new({"name" => "Charlie", "age" => 18})
    jude = Passenger.new({"name" => "Jude", "age" => 20})
    taylor = Passenger.new({"name" => "Taylor", "age" => 12})
    vehicle.add_passenger(charlie)
    vehicle.add_passenger(jude)
    vehicle.add_passenger(taylor)

    expect(vehicle.num_adults).to eq(2)
  end
end
