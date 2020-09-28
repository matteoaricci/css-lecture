class Band < ApplicationRecord
    has_many :members
    has_many :albums
end
