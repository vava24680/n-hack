class Shop < ApplicationRecord
    has_many :activities,:dependent=>:destroy
end
