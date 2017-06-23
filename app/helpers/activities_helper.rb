module ActivitiesHelper
    def save_activityID(activity)
        session[:activity_id]=activity.id
    end
    def get_activityID
        session[:activity_id]
    end
end
