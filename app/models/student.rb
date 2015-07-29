class Student < ActiveRecord::Base

  has_many :coursestudents
  has_many :courses, through: :coursestudents

end
