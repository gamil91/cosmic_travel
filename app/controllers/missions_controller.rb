class MissionsController < ApplicationController

    def new
        @mission = Mission.new
    end

    def create
        @mission = Mission.new(params.require(:mission).permit(:name,:scientist_id, :planet_id))
        if  @mission.save
            redirect_to scientist_path(@mission.scientist)
        else
            :new
        end
    end



end
