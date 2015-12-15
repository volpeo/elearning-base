class Item < ActiveRecord::Base
  actable

  belongs_to :chapter
  acts_as_list scope: :chapter

  validates_presence_of :name

  extend FriendlyId
  friendly_id :position_and_name, use: :scoped, scope: :chapter

  def position_and_name
    "#{position} #{name}"
  end
end
