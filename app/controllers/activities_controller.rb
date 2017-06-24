class ActivitiesController < ApplicationController
    before_action :set_activity, :only=>[:show,:edit,:destroy]
    before_action :authenticate_admin!, :only=>[:new,:create,:edit,:update,:destroy]
    def index
        @activities=Activity.all
        #@valid_activities=Activity.where(:stillValid=>true)
        #@notvalid_activities=Activity.where(:stillValid=>false)
    end
    def new
        @activity=Activity.new
    end
    def create
        @activity=Activity.new(activity_params)
        @activity.user_id=current_admin.id
        if @activity.save
            #flash[:notice]="成功創建一筆團購"
            redirect_to activities_path,:method=>:get
        else
            #flash[:alert]="欄位輸入錯誤"
            render :action=>:new
        end
    end
    def show
       save_activityID(@activity)
    end
    def edit
        if current_user.id!=@activity.user_id
            #flash[:alert]="無法編輯他人團購"
            redirect_to activities_path,:method=>:get
        end
    end
    def update
        if @activity.update(activity_params)
            #flash[:notice]="成功更新一筆團購"
            redirect_to activities_path,:method=>:get
        else
            #flash[:alert]="欄位輸入錯誤"
            render :action=>:edit
        end
    end
    def destroy
    end
private
    def set_activity
        @activity = Activity.find(params[:id])
    end
    def activity_params
        params.require(:activity).permit(:title,:shop_id,:cuttime,:picktime,:estquantity,:place)
    end
end
