# == Schema Information
#
# Table name: toys
#
#  id           :integer          not null, primary key
#  name         :string           not null
#  toyable_id   :integer
#  toyable_type :string
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Toy < ActiveRecord::Base
  validates :name, :toyable_id, :toyable_type, presence: true
  validates :name, uniqueness: { scope: [:toyable_id, :toyable_type] }

  belongs_to :toyable, polymorphic: true
end
