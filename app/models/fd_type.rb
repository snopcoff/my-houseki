class FdType < ActiveRecord::Base
    has_many :fooddrinks
    
    validates :name, uniqueness: { case_sensitive: false }
end
