class HomeController < ApplicationController
    def index
        if is_mobile_device?
            if not params[:s].nil?
                @poopstation_id = params[:s]
                redirect_to :controller=>'poopstations', :action => 'show', :id => @poopstation_id
            end
        end
    end
    def generate_stickers
        if not params[:number_of_stickers_start].nil? and not params[:number_of_stickers_end].nil?
            if params[:number_of_stickers_start].to_i > params[:number_of_stickers_end].to_i
                flash[:error] = "Use a correct range, silly!"
            end
        end
        if not params[:number_of_stickers_start].nil?
            #check if its a number
            if not params[:number_of_stickers_start].to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/).nil?
                @start = params[:number_of_stickers_start]
            else
                flash[:error] = "You must use a number, jerk!"
            end
        end

        if not params[:number_of_stickers_end].nil?
            #check if its a number
            if not params[:number_of_stickers_end].to_s.match(/\A[+-]?\d+?(\.\d+)?\Z/).nil?
                @end = params[:number_of_stickers_end]
            else
                flash[:error] = "You must use a number, jerk!"
            end
        end
        respond_to do |format|
          format.html
          format.json
          format.mobile
      end
  end
end
