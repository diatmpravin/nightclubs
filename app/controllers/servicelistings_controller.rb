class ServicelistingsController < ApplicationController
  # GET /servicelistings
  # GET /servicelistings.json
  def index
    @servicelistings = Servicelisting.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @servicelistings }
    end
  end

  # GET /servicelistings/1
  # GET /servicelistings/1.json
  def show
    @servicelisting = Servicelisting.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @servicelisting }
    end
  end

  # GET /servicelistings/new
  # GET /servicelistings/new.json
  def new
    @servicelisting = Servicelisting.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @servicelisting }
    end
  end

  # GET /servicelistings/1/edit
  def edit
    @servicelisting = Servicelisting.find(params[:id])
  end

  # POST /servicelistings
  # POST /servicelistings.json
  def create
    @servicelisting = Servicelisting.new(params[:servicelisting])

    respond_to do |format|
      if @servicelisting.save
        format.html { redirect_to @servicelisting, notice: 'Servicelisting was successfully created.' }
        format.json { render json: @servicelisting, status: :created, location: @servicelisting }
      else
        format.html { render action: "new" }
        format.json { render json: @servicelisting.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /servicelistings/1
  # PUT /servicelistings/1.json
  def update
    @servicelisting = Servicelisting.find(params[:id])

    respond_to do |format|
      if @servicelisting.update_attributes(params[:servicelisting])
        format.html { redirect_to @servicelisting, notice: 'Servicelisting was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @servicelisting.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /servicelistings/1
  # DELETE /servicelistings/1.json
  def destroy
    @servicelisting = Servicelisting.find(params[:id])
    @servicelisting.destroy

    respond_to do |format|
      format.html { redirect_to servicelistings_url }
      format.json { head :no_content }
    end
  end
end
