require('minitest/autorun')
require('minitest/rg')
require_relative('../person')

class PersonTest < MiniTest::Test

  def setup()

    @person1 = Person.new("Bob", 45)
    @person2 = Person.new("Jim", 39)

    @people = [@person1, @person2]
  end

  def test_person_has_name
    assert_equal("Bob", @person1.name)
  end

  def test_person_has_age
    assert_equal(39, @person2.age)
  end

  end
