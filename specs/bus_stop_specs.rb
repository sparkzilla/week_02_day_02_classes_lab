require('minitest/autorun')
require('minitest/rg')
require_relative('../bus_stop')
require_relative('../person')

class BusStopTest < MiniTest::Test

  def setup()


    @person1 = Person.new("Bob", 45)
    @person2 = Person.new("Jim", 39)

    @people = [@person1, @person2]

    @bus_stop = BusStop.new("Midway")

  end

def test_name
  assert_equal("Midway", @bus_stop.name)
end

def test_add_person_to_queue
  @bus_stop.add_person_to_queue(@person1)
  count = @bus_stop.count_queue
  assert_equal(1, count)
end


end
