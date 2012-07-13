class UserloginsController < ApplicationController
  # GET /userlogins
  # GET /userlogins.json
  def index
    @userlogins = Userlogin.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @userlogins }
    end
  end

  # GET /userlogins/1
  # GET /userlogins/1.json
  def show
    @userlogin = Userlogin.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @userlogin }
    end
  end

  # GET /userlogins/new
  # GET /userlogins/new.json
  def new
    @userlogin = Userlogin.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @userlogin }
    end
  end

  # GET /userlogins/1/edit
  def edit
    @userlogin = Userlogin.find(params[:id])
  end

  # POST /userlogins
  # POST /userlogins.json
  def create
    @userlogin = Userlogin.new(params[:userlogin])

    respond_to do |format|
      if @userlogin.save
        format.html { redirect_to @userlogin, notice: 'Userlogin was successfully created.' }
        format.json { render json: @userlogin, status: :created, location: @userlogin }
      else
        format.html { render action: "new" }
        format.json { render json: @userlogin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /userlogins/1
  # PUT /userlogins/1.json
  def update
    @userlogin = Userlogin.find(params[:id])

    respond_to do |format|
      if @userlogin.update_attributes(params[:userlogin])
        format.html { redirect_to @userlogin, notice: 'Userlogin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @userlogin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /userlogins/1
  # DELETE /userlogins/1.json
  def destroy
    @userlogin = Userlogin.find(params[:id])
    @userlogin.destroy

    respond_to do |format|
      format.html { redirect_to userlogins_url }
      format.json { head :no_content }
    end
  end
end
