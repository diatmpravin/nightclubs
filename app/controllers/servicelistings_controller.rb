class ServicelistingsController < ApplicationController

	before_filter :authenticate_user!, :except => [:index]

	def index
		@servicelistings = Servicelisting.all
	end

	def show
		@servicelisting = Servicelisting.find(params[:id])
	end

	def new
		@servicelisting = Servicelisting.new
	end

	def edit
		@servicelisting = Servicelisting.find(params[:id])
	end

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

	def destroy
		@servicelisting = Servicelisting.find(params[:id])
		@servicelisting.destroy

		respond_to do |format|
		  format.html { redirect_to servicelistings_url }
		  format.json { head :no_content }
		end
	end
end
