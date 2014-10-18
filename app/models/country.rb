# == Schema Information
#
# Table name: countries
#
#  id          :integer          not null, primary key
#  name        :string(64)       default(""), not null
#  nationality :string(64)       default("0"), not null
#

class Country < ActiveRecord::Base
  validates_presence_of :name, :nationality
end
