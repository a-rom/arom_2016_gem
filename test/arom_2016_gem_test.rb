require 'test_helper'

class Arom2016GemTest < Minitest::Test
  def setup
    @main = Main.new
  end
  
  def test_that_it_has_a_version_number
    refute_nil ::Arom2016Gem::VERSION
  end

  def test_bonusdrink
    assert_equal 13, @main.bonusdrink(10)
    assert_equal  4, @main.bonusdrink(3)
    assert_equal 26, @main.bonusdrink(20)
    assert_equal 40, @main.bonusdrink(30)

  end

end

