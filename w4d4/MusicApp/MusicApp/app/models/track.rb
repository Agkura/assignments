# == Schema Information
#
# Table name: tracks
#
#  id         :integer          not null, primary key
#  album_id   :integer          not null
#  song       :string           not null
#  lyrics     :text             not null
#  regular    :boolean          default("true"), not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Track < ApplicationRecord
  validates :album_id, :song, presence: true
  validates :regular, inclusion: {in: [true, false]}

  belongs_to :album
  has_one :band, through: :album, source: :band
end
