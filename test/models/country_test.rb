# == Schema Information
#
# Table name: countries
#
#  id          :integer          not null, primary key
#  name        :string(64)       default(""), not null
#  nationality :string(64)       default("0"), not null
#

require 'test_helper'

class CountryTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test "Validation Rules" do
    country = countries(:uk)
    country.name = nil
    assert_not country.save, "Country saved with blank name"

    country = countries(:uk)
    country.nationality = nil
    assert_not country.save, "Country saved with blank nationality"
  end
end
