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
end
