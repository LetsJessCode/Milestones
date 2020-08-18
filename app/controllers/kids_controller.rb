class KidsController < ApplicationController
    before_action :set_kid, only: [:show, :edit, :update, :destroy]
    before_action :set_milestone, only: [:show]
    def index
        @kids = Kid.all
    end

    def new
        @kid = Kid.new
    end

    def show 
    end 

    
    def create
        @kid = Kid.create(kid_params)
        if @kid.save
            redirect_to kid_path(@kid)
        else 
            render :new
        end
    end

    def edit
    end

    def update
        if @kid.update(kid_params)
            redirect_to kid_path(@kid)
        else
            render :edit
        end
    end

    def destroy
        @kid.destroy
        redirect_to kids_path
    end

    private
    def set_kid
        @kid = Kid.find_by_id(params[:id])
    end

    def kid_params
        params.require(:kid).permit(:f_name, :l_name, :birth, milestone_attributes: [:title, :date, :age, :location, :content])
    end

    def set_milestone
        @milestone = Milestone.find_by_id(params[:milestone_id])
    end
end
