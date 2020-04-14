class Pf < ActiveRecord::Base

    validates :name, presence:true
    validates :pfamount, presence:true
end 