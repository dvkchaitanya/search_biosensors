class LabNamesController < ApplicationController
  # GET /lab_names
  # GET /lab_names.json
  def index
    @lab_names = LabName.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @lab_names }
    end
  end

  # GET /lab_names/1
  # GET /lab_names/1.json
  def show
    @lab_name = LabName.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @lab_name }
    end
  end

  # GET /lab_names/new
  # GET /lab_names/new.json
  def new
    @lab_name = LabName.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @lab_name }
    end
  end

  # GET /lab_names/1/edit
  def edit
    @lab_name = LabName.find(params[:id])
  end

  # POST /lab_names
  # POST /lab_names.json
  def create
    @lab_name = LabName.new(params[:lab_name])

    respond_to do |format|
      if @lab_name.save
        format.html { redirect_to @lab_name, notice: 'Lab name was successfully created.' }
        format.json { render json: @lab_name, status: :created, location: @lab_name }
      else
        format.html { render action: "new" }
        format.json { render json: @lab_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /lab_names/1
  # PUT /lab_names/1.json
  def update
    @lab_name = LabName.find(params[:id])

    respond_to do |format|
      if @lab_name.update_attributes(params[:lab_name])
        format.html { redirect_to @lab_name, notice: 'Lab name was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @lab_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lab_names/1
  # DELETE /lab_names/1.json
  def destroy
    @lab_name = LabName.find(params[:id])
    @lab_name.destroy

    respond_to do |format|
      format.html { redirect_to lab_names_url }
      format.json { head :no_content }
    end
  end
end
