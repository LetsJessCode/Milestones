class Milestone < ApplicationRecord
    has_many :kids, dependent: :nullify

    def self.created_at #sorted by
        where.not(created_at: nil)
    end
    
    def self.recent_created_milestones #sort by date

    end 
end
