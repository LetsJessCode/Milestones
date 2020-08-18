class Kid < ApplicationRecord
    belongs_to :milestone
    accepts_nested_attributes_for :milestone
end
