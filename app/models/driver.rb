# == Schema Information
#
# Table name: drivers
#
#  id                 :integer          not null, primary key
#  forename           :string(32)       default(""), not null
#  surname            :string(32)       default(""), not null
#  display_name       :string(64)       default(""), not null
#  born_on            :date             default("1970/01/01"), not null
#  country_id         :integer
#  photo_file_name    :string
#  photo_content_type :string
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#
# Indexes
#
#  index_drivers_on_country_id  (country_id)
#

class Driver < ActiveRecord::Base
  include Age

  has_attached_file :photo, styles: { medium: "300x300>", thumb: "100x100>"}, default_url: "/images/missing.png"
  validates_attachment_content_type :photo, content_type: /\Aimage\/.*\Z/

  belongs_to :country
  validates_presence_of :country

  validates :forename, presence: true, length: { maximum: 32 }
  validates :surname, presence: true, length: { maximum: 32 }
  validates :born_on, presence: true
  validates :country_id, presence: true
  validates :country, presence: true

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
