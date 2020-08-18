class KidsController < ApplicationController
    def index
        @kids = Kid.all
    end

    def new
        @kid = Kid.new
    end

    def show
        @kid = Kid.find_by_id(params[:id])
    end
end
