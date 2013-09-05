class AnalysisTechniquesController < ApplicationController
  # GET /analysis_techniques
  # GET /analysis_techniques.json
  def index
    @analysis_techniques = AnalysisTechnique.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @analysis_techniques }
    end
  end

  # GET /analysis_techniques/1
  # GET /analysis_techniques/1.json
  def show
    @analysis_technique = AnalysisTechnique.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @analysis_technique }
    end
  end

  # GET /analysis_techniques/new
  # GET /analysis_techniques/new.json
  def new
    @analysis_technique = AnalysisTechnique.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @analysis_technique }
    end
  end

  # GET /analysis_techniques/1/edit
  def edit
    @analysis_technique = AnalysisTechnique.find(params[:id])
  end

  # POST /analysis_techniques
  # POST /analysis_techniques.json
  def create
    @analysis_technique = AnalysisTechnique.new(params[:analysis_technique])

    respond_to do |format|
      if @analysis_technique.save
        format.html { redirect_to @analysis_technique, notice: 'Analysis technique was successfully created.' }
        format.json { render json: @analysis_technique, status: :created, location: @analysis_technique }
      else
        format.html { render action: "new" }
        format.json { render json: @analysis_technique.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /analysis_techniques/1
  # PUT /analysis_techniques/1.json
  def update
    @analysis_technique = AnalysisTechnique.find(params[:id])

    respond_to do |format|
      if @analysis_technique.update_attributes(params[:analysis_technique])
        format.html { redirect_to @analysis_technique, notice: 'Analysis technique was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @analysis_technique.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /analysis_techniques/1
  # DELETE /analysis_techniques/1.json
  def destroy
    @analysis_technique = AnalysisTechnique.find(params[:id])
    @analysis_technique.destroy

    respond_to do |format|
      format.html { redirect_to analysis_techniques_url }
      format.json { head :no_content }
    end
  end
end
