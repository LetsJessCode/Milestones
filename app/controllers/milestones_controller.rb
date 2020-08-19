class MilestonesController < ApplicationController
    before_action :current_kid
    before_action :set_milestones, except: [:index, :new, :create]

    
    def index
        @milestones = Milestone.all
    end
    
    def new
        @milestone = Milestone.new 
    end

    def create
        @milestone = Milestone.new(milestone_params)
        if @milestone.save
            redirect_to kid_milestones_path(@kid, @milestone)
        else
            render :new
        end  
    end

    def show
    end

    def edit
    end

    private
    def current_kid
        @kid = Kid.find_by_id(params[:kid_id])
    end

    def milestone_params
        params.require(:milestone).permit(:title, :date, :age, :location, :content)
    end

    def set_milestones
        @milestone = Milestone.find_by_id(params[:id])
    end
end
