class BiosensorsController < ApplicationController
  # GET /biosensors
  # GET /biosensors.json
  def index
	@search_param = params[:search_param ]
	@biosensors = Biosensor.search(@search_param)	

#		respond_to do |format|
#		  format.html # index.html.erb
#		  format.json { render json: @biosensors }
#		end
  end

  # GET /biosensors/1
  # GET /biosensors/1.json
  def show
    @biosensor = Biosensor.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @biosensor }
    end
  end

  # GET /biosensors/new
  # GET /biosensors/new.json
  def new
    @biosensor = Biosensor.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @biosensor }
    end
  end

  # GET /biosensors/1/edit
  def edit
    @biosensor = Biosensor.find(params[:id])
  end

  # POST /biosensors
  # POST /biosensors.json
  def create
    @biosensor = Biosensor.new(params[:biosensor])

    respond_to do |format|
      if @biosensor.save
        format.html { redirect_to @biosensor, notice: 'Biosensor was successfully created.' }
        format.json { render json: @biosensor, status: :created, location: @biosensor }
      else
        format.html { render action: "new" }
        format.json { render json: @biosensor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /biosensors/1
  # PUT /biosensors/1.json
  def update
    @biosensor = Biosensor.find(params[:id])

    respond_to do |format|
      if @biosensor.update_attributes(params[:biosensor])
        format.html { redirect_to @biosensor, notice: 'Biosensor was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @biosensor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /biosensors/1
  # DELETE /biosensors/1.json
  def destroy
    @biosensor = Biosensor.find(params[:id])
    @biosensor.destroy

    respond_to do |format|
      format.html { redirect_to biosensors_url }
      format.json { head :no_content }
    end
  end
end
