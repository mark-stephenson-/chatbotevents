# Describes the Event
class Event < ActiveRecord::Base
  mount_uploader :cover_img, CoverImgUploader
end
