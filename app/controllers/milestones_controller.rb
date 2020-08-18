class MilestonesController < ApplicationController
    before_action :current_kid, only: [:new] 

    def index
        if params[:kid_id] && @kid = current_kid
            @milestones = current_kid.milestones
            
         end
    end
    
    def new
        # binding.pry
        current_kid
        @milestone = Milestone.new 
    end

    def create

    end

    private
    def current_kid
        @kid = Kid.find_by_id(params[:kid_id])
    end
end
