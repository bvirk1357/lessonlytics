class Course < ActiveRecord::Base

  belongs_to :teacher

  has_many :coursestudents
  has_many :students, through: :coursestudents

  has_many :coursevideos
  has_many :videos, through: :coursevideos
end
