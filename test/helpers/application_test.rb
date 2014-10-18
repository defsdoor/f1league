require 'test_helper'

class ApplicationHelperTest < ActiveSupport::TestCase
  include ApplicationHelper

  test "Simple Age" do
    assert_equal 1, years_between_dates( Date.new(2013,1,1), Date.new(2014,12,31)), "Simple dates"
    assert_equal 1, years_between_dates( Date.new(2014,12,31), Date.new(2013,1,1)), "Simple dates - other way around"
    assert_equal 1, years_between_dates( Date.new(2013,12,31), Date.new(2014,12,31)), "Same month,day"
    assert_equal 16, years_between_dates( Date.new(2012,02,29), Date.new(1996,2,28)), "Leap years"
    assert_equal 15, years_between_dates( Date.new(2012,02,28), Date.new(1996,2,29)), "Leap years"
  end
end
