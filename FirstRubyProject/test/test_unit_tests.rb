require "test/unit"

class TestUnitHelloWorldTests < Test::Unit::TestCase
  def test_world
    hello_world = 'world'

    assert_equal \
      'world',
      hello_world,
      "should return a string called 'world'"
  end

  def test_you_shall_not_pass
    flunk "You shall not pass"
  end

  def this_is_not_a_test_because_it_does_not_start_with_test

  end
end