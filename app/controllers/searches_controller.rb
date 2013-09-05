class SearchesController < ApplicationController
  def show
    @search = Search.find(params[:id])
	@biosensors_li = @search.biosensors_list() 
	@col_name = params[:col_name]
	puts @biosensors.inspect
	@labs = LabName.all
  end

  def new
    @search = Search.new
  end

  def create
    @search = Search.new(params[:search])
    if @search.save
      redirect_to @search, :notice => "Successfully created search."
    else
      render :action => 'new'
    end
  end
  private
	def col_method
		Biosensor.column_names.include?(params[:col_name])?params[:col_name]:"biosensor"	
	end	

	def sort_method
		%w[asc desc].include?(params[:sort_order])?params[:sort_order]:"desc"	
	end
end
