class OrdersController < ApplicationController
    before_action :set_order,:only=>[:show,:edit,:update,:delete]
    before_action :authenticate_admin!
    def new
        @order=Order.new
    end
    def create
        @order=Order.new(order_params)
        @order.user_id=current_admin.id
        @order.activity_id = get_activityID
        if @order.save
            @activity=Activity.find_by(:id=>get_activityID)
            @activity.increment(:cur_quantity)
            @activity.save
            #flash[:notice]="成功訂購一杯飲料"
            redirect_to new_order_path,:method=>:get
        else
            #flash[:alert]="欄位填寫錯誤，請重新填寫"
            render :action=>:new
        end
    end
    def show
    end
    def edit
    end
    def update
        if @order.update(order_params)
            #flash[:notice]=""
            redirect_to new_order_path,:method=>:get
        else
            #flash[:notice]=""
            render :action=>:edit
        end
    end
    def destroy
        @order.destroy
        #@flash[:notice]=""
        redirect_to new_order_path,:method=>:get
    end
    def yourorder
        @yourorder = Order.where(:user_id=>current_admin.id)
    end
private
    def order_params
        params.require(:order).permit(:item,:sugar_level,:ice_level,:price)
    end
    def set_order
        @order=Order.find(params[:id])
    end
end
