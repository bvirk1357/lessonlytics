class Video < ActiveRecord::Base

  has_many :questions

  has_many :coursevideos
  has_many :courses, through: :coursevideos
end
