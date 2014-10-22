# == Schema Information
#
# Table name: drivers
#
#  id           :integer          not null, primary key
#  forename     :string(32)       default(""), not null
#  surname      :string(32)       default(""), not null
#  display_name :string(64)       default(""), not null
#  born_on      :date             default("1970/01/01"), not null
#  country_id   :integer
#
# Indexes
#
#  index_drivers_on_country_id  (country_id)
#

class Driver < ActiveRecord::Base
  include Age

  belongs_to :country
  validates_presence_of :forename, :surname, :born_on
  validates_presence_of :country

  delegate :nationality, to: :country

  before_save :update_display_name

  def age
    age_from_today( born_on )
  end

  private

  def update_display_name
    set_display_name if display_name.blank? || display_name == forename_was + " " + surname_was
  end

  def set_display_name
    self.display_name = forename + " " + surname
  end

end
