class Chapter < ActiveRecord::Base
  acts_as_list scope: :course

  belongs_to :course
  has_many :items

  validates_presence_of :name
end
