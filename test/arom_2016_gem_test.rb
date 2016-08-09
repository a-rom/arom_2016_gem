require 'test_helper'

class Arom2016GemTest < Minitest::Test
  def setup
    @main = ::Arom2016Gem::Main.new
  end

  def test_that_it_has_a_version_number
    refute_nil ::Arom2016Gem::VERSION
  end

  def test_odd?
    assert_equal false, @main.odd?(-10000), '10000 is not odd'
    assert_equal false, @main.odd?(-2), '0 is not odd'
    assert_equal true,  @main.odd?(-1), '0 is not odd'
    assert_equal false, @main.odd?(0),  '0 is not odd'
    assert_equal true,  @main.odd?(1),  '1 is odd'
    assert_equal false, @main.odd?(2),  '2 is not odd'
    assert_equal false, @main.odd?(10000), '10000 is not odd'
  end

  def test_even?
    assert_equal true,  @main.even?(-10000), '10000 is even'
    assert_equal true,  @main.even?(-2), '-2 is even'
    assert_equal false, @main.even?(-1), '-1 is not even'
    assert_equal true,  @main.even?(0),  '0 is even'
    assert_equal false, @main.even?(1),  '1 is not even'
    assert_equal true,  @main.even?(2),  '2 is even'
    assert_equal true,  @main.even?(10000), '10000 is even'
  end

  def test_check_number?
    assert_equal false,  @main.check_number?(10000)
    assert_equal true,  @main.check_number?(1000)
    assert_equal true,  @main.check_number?(5000)
  end

end

