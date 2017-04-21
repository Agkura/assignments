# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  band_id    :integer          not null
#  title      :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  live       :boolean          default("false"), not null
#

class Album < ApplicationRecord
  validates :band_id, :title, presence: true
  validates :live, inclusion: {in: [ true, false ] }

  has_many :tracks, dependent: :destroy
  belongs_to :band
end
