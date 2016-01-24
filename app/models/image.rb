class Image < ActiveRecord::Base
  validates_length_of :no_pasted_images ,  is: 4
  validates_presence_of :no_pasted_images

  mount_uploaders :no_pasted_images , ImageUploader

end
