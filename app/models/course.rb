class Course < ActiveRecord::Base
  has_many :chapters, -> { order(position: :asc) }

  validates_presence_of :name
end
