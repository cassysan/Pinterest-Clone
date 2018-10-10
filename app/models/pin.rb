class Pin < ApplicationRecord
  mount_uploaders :photos, PinphotoUploader
  belongs_to :user
end
