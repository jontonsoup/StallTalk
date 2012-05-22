class PostsController < ApplicationController
  # GET /posts
  # GET /posts.json
  def index
    @posts = Post.all

    respond_to do |format|
      format.html # index.html.erb
      format.mobile
      format.json { render json: @posts }
    end
  end

  # GET /posts/1
  # GET /posts/1.json
  def show
    @post = Post.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.mobile
      format.json { render json: @post }
    end
  end

  def bestposts
    @posts = Post.find(:all, :order => "likes desc")

     respond_to do |format|
      format.html # new.html.erb
      format.mobile
      format.json { render json: @post }
    end
  end

  # GET /posts/new
  # GET /posts/new.json
  def new
    @post = self.current_poopstation.post.new

    respond_to do |format|
      format.html # new.html.erb
      format.mobile
      format.json { render json: @post }
    end
  end

  # GET /posts/1/edit
  def edit
    @post = Post.find(params[:id])
  end

  # POST /posts
  # POST /posts.json
  def create
    current_poopstation_id = session[:poopstation_id]
    current_poopstation = Poopstation.find_by_id(current_poopstation_id)
    @post = current_poopstation.posts.new(params[:post])
    respond_to do |format|
      if @post.save
        format.html { redirect_to poopstation_url(current_poopstation), notice: 'Post was successfully created.' }
        format.mobile { redirect_to poopstation_url(current_poopstation), notice: 'Post was successfully created.' }
        format.json { render json: @post, status: :created, location: @post }
      else
           format.html { redirect_to poopstation_url(current_poopstation), notice: 'Shit hit the fan!' }
        format.mobile { redirect_to poopstation_url(current_poopstation), notice: 'Shit hit the fan!' }
        format.json { render json: @post, status: :created, location: @post }
      end
    end
  end

  # PUT /posts/1
  # PUT /posts/1.json
  def update
    @post = Post.find(params[:id])

    respond_to do |format|
      if @post.update_attributes(params[:post])
        format.html { redirect_to @post, notice: 'Post was successfully updated.' }
        format.mobile { redirect_to @post, notice: 'Post was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.mobile { render action: "edit" }
        format.json { render json: @post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /posts/1
  # DELETE /posts/1.json
  def destroy
    @post = Post.find(params[:id])
    @post.destroy

    respond_to do |format|
      format.html { redirect_to posts_url }
      format.mobile { redirect_to posts_url }
      format.json { head :no_content }
    end
  end
end
