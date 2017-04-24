# == Schema Information
#
# Table name: corgis
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Corgi < ActiveRecord::Base
  validates_presence_of :name

  include Toyable
end
