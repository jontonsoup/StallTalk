class HomeController < ApplicationController
    def index
        @poopstation_id = params[:s]
        redirect_to :controller=>'poopstations', :action => 'show', :id => @poopstation_id
    end
end
