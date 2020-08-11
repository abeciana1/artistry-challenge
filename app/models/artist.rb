class Artist < ApplicationRecord
    has_many :studios 
    has_many :instruments, through: :studios
    validates :title, uniqueness: true

    
    

end
