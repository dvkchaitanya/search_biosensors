class PurposeOfImagingsController < ApplicationController
  # GET /purpose_of_imagings
  # GET /purpose_of_imagings.json
  def index
    @purpose_of_imagings = PurposeOfImaging.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @purpose_of_imagings }
    end
  end

  # GET /purpose_of_imagings/1
  # GET /purpose_of_imagings/1.json
  def show
    @purpose_of_imaging = PurposeOfImaging.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @purpose_of_imaging }
    end
  end

  # GET /purpose_of_imagings/new
  # GET /purpose_of_imagings/new.json
  def new
    @purpose_of_imaging = PurposeOfImaging.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @purpose_of_imaging }
    end
  end

  # GET /purpose_of_imagings/1/edit
  def edit
    @purpose_of_imaging = PurposeOfImaging.find(params[:id])
  end

  # POST /purpose_of_imagings
  # POST /purpose_of_imagings.json
  def create
    @purpose_of_imaging = PurposeOfImaging.new(params[:purpose_of_imaging])

    respond_to do |format|
      if @purpose_of_imaging.save
        format.html { redirect_to @purpose_of_imaging, notice: 'Purpose of imaging was successfully created.' }
        format.json { render json: @purpose_of_imaging, status: :created, location: @purpose_of_imaging }
      else
        format.html { render action: "new" }
        format.json { render json: @purpose_of_imaging.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /purpose_of_imagings/1
  # PUT /purpose_of_imagings/1.json
  def update
    @purpose_of_imaging = PurposeOfImaging.find(params[:id])

    respond_to do |format|
      if @purpose_of_imaging.update_attributes(params[:purpose_of_imaging])
        format.html { redirect_to @purpose_of_imaging, notice: 'Purpose of imaging was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @purpose_of_imaging.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /purpose_of_imagings/1
  # DELETE /purpose_of_imagings/1.json
  def destroy
    @purpose_of_imaging = PurposeOfImaging.find(params[:id])
    @purpose_of_imaging.destroy

    respond_to do |format|
      format.html { redirect_to purpose_of_imagings_url }
      format.json { head :no_content }
    end
  end
end
