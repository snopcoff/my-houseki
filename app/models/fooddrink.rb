class Fooddrink < ActiveRecord::Base
    mount_uploader :file, FooddrinkUploader
    
    belongs_to :user
    belongs_to :fd_type
    
    validates :user, presence: true
    acts_as_commontable
    
    resourcify
end
