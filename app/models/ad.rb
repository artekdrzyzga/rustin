class Ad < ApplicationRecord
    has_many :tranhead
    mount_uploader :image, ImageUploader

    
    def self.search(search)
        if search
          where('name LIKE ?', "%#{search}%")
        else
            @ads = Ad.all
        end
      end



end
