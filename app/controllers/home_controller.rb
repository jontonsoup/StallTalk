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
        begin
           @count = Stickercount.find_or_create_by_id(1)
            if params["wants_stickers"]["butt_really"] == "true"
                @start = @count
                @start.count = @start.count + 25
                @start.save!
            end
        rescue
        end
        respond_to do |format|
          format.html
          format.json
          format.mobile
      end
  end
end
