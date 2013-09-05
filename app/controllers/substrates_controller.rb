class SubstratesController < ApplicationController
  # GET /substrates
  # GET /substrates.json
  def index
    @substrates = Substrate.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @substrates }
    end
  end

  # GET /substrates/1
  # GET /substrates/1.json
  def show
    @substrate = Substrate.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @substrate }
    end
  end

  # GET /substrates/new
  # GET /substrates/new.json
  def new
    @substrate = Substrate.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @substrate }
    end
  end

  # GET /substrates/1/edit
  def edit
    @substrate = Substrate.find(params[:id])
  end

  # POST /substrates
  # POST /substrates.json
  def create
    @substrate = Substrate.new(params[:substrate])

    respond_to do |format|
      if @substrate.save
        format.html { redirect_to @substrate, notice: 'Substrate was successfully created.' }
        format.json { render json: @substrate, status: :created, location: @substrate }
      else
        format.html { render action: "new" }
        format.json { render json: @substrate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /substrates/1
  # PUT /substrates/1.json
  def update
    @substrate = Substrate.find(params[:id])

    respond_to do |format|
      if @substrate.update_attributes(params[:substrate])
        format.html { redirect_to @substrate, notice: 'Substrate was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @substrate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /substrates/1
  # DELETE /substrates/1.json
  def destroy
    @substrate = Substrate.find(params[:id])
    @substrate.destroy

    respond_to do |format|
      format.html { redirect_to substrates_url }
      format.json { head :no_content }
    end
  end
end
