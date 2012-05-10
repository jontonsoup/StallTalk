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

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @poopstation }
      format.mobile
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
      if @poopstation.update_attributes(params[:poopstation])
        format.html { redirect_to @poopstation, notice: 'Poopstation was successfully updated.' }
        format.json { head :no_content }
        format.mobile { redirect_to @poopstation }
      else
        format.html { render action: "edit" }
        format.mobile { render action: "edit" }
        format.json { render json: @poopstation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /poopstations/1
  # DELETE /poopstations/1.json
  def destroy
    @poopstation = Poopstation.find(params[:id])
    @poopstation.destroy

    respond_to do |format|
      format.html { redirect_to poopstations_url }
      format.mobile { redirect_to poopstations_url }
      format.json { head :no_content }
    end
  end
end
