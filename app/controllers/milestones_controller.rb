class MilestonesController < ApplicationController
    def new
        @kid = Kid.find_by_id(params[:id])
        @milestone = Milestone.new 
    end
end
