class Activity < ApplicationRecord
    has_one :shop
    has_one :admin
    validates_presence_of :title
end
