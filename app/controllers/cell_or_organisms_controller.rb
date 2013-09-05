class CellOrOrganismsController < ApplicationController
  # GET /cell_or_organisms
  # GET /cell_or_organisms.json
  def index
    @cell_or_organisms = CellOrOrganism.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @cell_or_organisms }
    end
  end

  # GET /cell_or_organisms/1
  # GET /cell_or_organisms/1.json
  def show
    @cell_or_organism = CellOrOrganism.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @cell_or_organism }
    end
  end

  # GET /cell_or_organisms/new
  # GET /cell_or_organisms/new.json
  def new
    @cell_or_organism = CellOrOrganism.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @cell_or_organism }
    end
  end

  # GET /cell_or_organisms/1/edit
  def edit
    @cell_or_organism = CellOrOrganism.find(params[:id])
  end

  # POST /cell_or_organisms
  # POST /cell_or_organisms.json
  def create
    @cell_or_organism = CellOrOrganism.new(params[:cell_or_organism])

    respond_to do |format|
      if @cell_or_organism.save
        format.html { redirect_to @cell_or_organism, notice: 'Cell or organism was successfully created.' }
        format.json { render json: @cell_or_organism, status: :created, location: @cell_or_organism }
      else
        format.html { render action: "new" }
        format.json { render json: @cell_or_organism.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /cell_or_organisms/1
  # PUT /cell_or_organisms/1.json
  def update
    @cell_or_organism = CellOrOrganism.find(params[:id])

    respond_to do |format|
      if @cell_or_organism.update_attributes(params[:cell_or_organism])
        format.html { redirect_to @cell_or_organism, notice: 'Cell or organism was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @cell_or_organism.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cell_or_organisms/1
  # DELETE /cell_or_organisms/1.json
  def destroy
    @cell_or_organism = CellOrOrganism.find(params[:id])
    @cell_or_organism.destroy

    respond_to do |format|
      format.html { redirect_to cell_or_organisms_url }
      format.json { head :no_content }
    end
  end
end
