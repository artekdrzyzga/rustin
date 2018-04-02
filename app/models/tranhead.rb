class Tranhead < ApplicationRecord
    belongs_to :user
    has_many :tranelems
  
    STATUSES = { 1 => "in_progress", 2 => "ready", 3 => "sent" }
  
    before_save :set_init_status
    before_save :inform_users
  
  
    def set_init_status
        if status.blank?
            status = "in_progress"
        end
    end
  
    def inform_users
        ::Rails.logger.info("I should inform admin that I did it,")
        ::Rails.logger.info("I should inform user that admin will sent it.")
    end
  
  
  #                          -> closed by admin
  ## description            |
  # init => in_progress => ready => sent => archive
  ##           |
  ##            -> closed by user
  
  
end
