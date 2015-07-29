class Coursevideo < ActiveRecord::Base
  belongs_to :course
  belongs_to :video
end
