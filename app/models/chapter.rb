class Chapter < ActiveRecord::Base
  acts_as_list scope: :course

  belongs_to :course
  has_many :items, -> { order(position: :asc) }

  validates_presence_of :name

  extend FriendlyId
  friendly_id :position_and_name, use: :scoped, scope: :course

  def position_and_name
    "#{position} #{name}"
  end
end
