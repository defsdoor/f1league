# == Schema Information
#
# Table name: circuits
#
#  id             :integer          not null, primary key
#  name           :string(64)       default(""), not null
#  circuit_type   :integer          default("0"), not null
#  direction      :integer          default("0"), not null
#  location       :string(128)      default(""), not null
#  current_length :decimal(3, 6)    default("0.0"), not null
#

class Circuit < ActiveRecord::Base
end
