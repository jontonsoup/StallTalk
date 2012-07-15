class PoopstationsController < ApplicationController
  # GET /poopstations
  # GET /poopstations.json
  def index
    @poopstations = Poopstation.all
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @poopstations }
      format.mobile
    end
  end

  # GET /poopstations/1
  # GET /poopstations/1.json
  def show
    @poopstation = Poopstation.find_or_create_by_id(params[:id])
    session[:poopstation_id] = Poopstation.find_by_id(@poopstation.id).id
    @post = Post.new
    @posts = Post.find(:all, :order => "id desc", :limit => 20)
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @poopstation }
      format.mobile
    end
  end
#like
def like

  @poopstation = Poopstation.find(params[:poopstation])


  @post = Post.find(params[:id])
  session[@post.id] = true
  @post.likes = @post.likes.to_int + 1
  @post.save

  respond_to do |format|
   if params[:best].nil?
    format.html { redirect_to @poopstation }
    format.json { redirect_to @poopstation }
    format.mobile { redirect_to @poopstation }
  else
    format.html { redirect_to posts_path }
    format.json { redirect_to posts_path }
    format.mobile { redirect_to posts_path }
  end
end
end


  # GET /poopstations/new
  # GET /poopstations/new.json
  def new
    @poopstation = Poopstation.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @poopstation }
      format.mobile
    end
  end

  # GET /poopstations/1/edit
  def edit
    @poopstation = Poopstation.find(params[:id])
  end

  # POST /poopstations
  # POST /poopstations.json
  def create
    @poopstation = Poopstation.new(params[:poopstation])

    respond_to do |format|
      if @poopstation.save
        format.html { redirect_to @poopstation, notice: 'Poopstation was successfully created.' }
        format.json { render json: @poopstation, status: :created, location: @poopstation }
        format.mobile { redirect_to @poopstation }
      else
        format.html { render action: "new" }
        format.mobile { render action: "new" }
        format.json { render json: @poopstation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /poopstations/1
  # PUT /poopstations/1.json
  def update
    @poopstation = Poopstation.find(params[:id])

    respond_to do |format|
      if @poopstation.locations.create(:name => params[:location], :city => params[:city], :state => params[:state])
        format.html { redirect_to @poopstation, notice: 'Spanks!' }
        format.json { head :no_content }
        format.mobile { redirect_to @poopstation, notice: 'Spanks!' }
      else
        format.html { render action: "edit" }
        format.mobile { render action: "edit" }
        format.json { render json: @poopstation.errors, status: :unprocessable_entity }
      end
    end
  end
  def admin
   @poopstation = Poopstation.find(params[:id])

   respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @poopstation }
      format.mobile
    end
  end

  # DELETE /poopstations/1
  # DELETE /poopstations/1.json
  def destroy

    respond_to do |format|
      format.html { redirect_to poopstations_url }
      format.mobile { redirect_to poopstations_url }
      format.json { head :no_content }
    end
  end
end
