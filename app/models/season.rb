# == Schema Information
#
# Table name: seasons
#
#  id    :integer          not null, primary key
#  title :string(128)      default(""), not null
#

class Season < ActiveRecord::Base
  validates_presence_of :title

end
