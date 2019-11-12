class Bus
  attr_reader :route, :destination

  def initialize(route, destination)
    @route = route
    @destination = destination
    @passengers = []
  end

  def drive
    return "Brum brum"
  end

  def count_passengers
    p @passengers
    return @passengers.size()
  end

  def pick_up_passenger(passenger)
    @passengers << passenger
  end

  def drop_off_passenger(passenger)
    @passengers.delete(passenger)
  end

  def empty_passengers
    @passengers.clear
  end

end
