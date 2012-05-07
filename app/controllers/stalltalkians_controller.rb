class StalltalkiansController < ApplicationController
  # GET /stalltalkians
  # GET /stalltalkians.json
  def index
    @stalltalkians = Stalltalkian.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @stalltalkians }
    end
  end

  # GET /stalltalkians/1
  # GET /stalltalkians/1.json
  def show
    @stalltalkian = Stalltalkian.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @stalltalkian }
    end
  end

  # GET /stalltalkians/new
  # GET /stalltalkians/new.json
  def new
    @stalltalkian = Stalltalkian.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @stalltalkian }
    end
  end

  # GET /stalltalkians/1/edit
  def edit
    @stalltalkian = Stalltalkian.find(params[:id])
  end

  # POST /stalltalkians
  # POST /stalltalkians.json
  def create
    @stalltalkian = Stalltalkian.new(params[:stalltalkian])

    respond_to do |format|
      if @stalltalkian.save
        format.html { redirect_to @stalltalkian, notice: 'Stalltalkian was successfully created.' }
        format.json { render json: @stalltalkian, status: :created, location: @stalltalkian }
      else
        format.html { render action: "new" }
        format.json { render json: @stalltalkian.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /stalltalkians/1
  # PUT /stalltalkians/1.json
  def update
    @stalltalkian = Stalltalkian.find(params[:id])

    respond_to do |format|
      if @stalltalkian.update_attributes(params[:stalltalkian])
        format.html { redirect_to @stalltalkian, notice: 'Stalltalkian was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @stalltalkian.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /stalltalkians/1
  # DELETE /stalltalkians/1.json
  def destroy
    @stalltalkian = Stalltalkian.find(params[:id])
    @stalltalkian.destroy

    respond_to do |format|
      format.html { redirect_to stalltalkians_url }
      format.json { head :no_content }
    end
  end
end
