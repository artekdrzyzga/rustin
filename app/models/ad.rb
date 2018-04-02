class Ad < ApplicationRecord
    has_many :tranhead
    mount_uploader :image, ImageUploader
end
