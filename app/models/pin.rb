class Pin < ApplicationRecord
  mount_uploader :photo, PinphotoUploader
  belongs_to :user
end
