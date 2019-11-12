require('minitest/autorun')
require('minitest/rg')
require_relative('../bus')
require_relative('../person')


class BusTest < MiniTest::Test

  def setup()

    @bus1 = Bus.new(20, "London")
    @bus2 = Bus.new(25, "Edinburgh")

    @buses = [@bus1, @bus2]

    @person1 = Person.new("Bob", 45)
    @person2 = Person.new("Jim", 39)

    @people = [@person1, @person2]

  end

  def test_get_bus_route
    assert_equal(20, @bus1.route)
  end


  def test_drive_method
    assert_equal("Brum brum", @bus2.drive)
  end

  def test_count_passengers
    count = @bus1.count_passengers
    assert_equal(0, count)
  end

  def test_pick_up_passenger
    @bus1.pick_up_passenger(@person1)
    count = @bus1.count_passengers
    assert_equal(1, count)
  end

  def test_drop_off_passenger
    @bus1.pick_up_passenger(@person1)
    @bus1.pick_up_passenger(@person2)
    @bus1.drop_off_passenger(@person1)
    count = @bus1.count_passengers
    assert_equal(1, count)
  end

  def test_empty
    @bus1.pick_up_passenger(@person1)
    @bus1.pick_up_passenger(@person2)
    @bus1.empty_passengers
    count = @bus1.count_passengers
    assert_equal(0, count)
  end




end
