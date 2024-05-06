class Warehouse < ApplicationRecord
    belongs_to :location
    has_many :inventories
end
