  class Pin < ApplicationRecord
  mount_uploader :photo, PinphotoUploader
  belongs_to :user
  acts_as_votable
end
