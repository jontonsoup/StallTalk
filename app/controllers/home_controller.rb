class HomeController < ApplicationController
    def index
        if is_mobile_device?
            if not params[:s].nil?
                @poopstation_id = params[:s]
                redirect_to :controller=>'poopstations', :action => 'show', :id => @poopstation_id
            end
        end
    end
end
