class ActivitiesController < ApplicationController

    def index
        render json: Activity.all
    end

    def destroy
        activity = Activity.find(params[:id])
        activity.destroy
        head :no_content
    end

    # not accessing params so don't need private method with the params
    # only searching for a specific activity once so don't need to make a private method to find by id

end
