class SudzibasController < ApplicationController
before_action :authorize
helper_method :sort_column, :sort_direction	

  def index
    	@sudzibas = Sudziba.order(sort_column + " " + sort_direction )
  end

	def show
    	@sudziba = Sudziba.find(params[:id])
  end

	def new
		@sudziba = Sudziba.new
	end

	def edit
  		@sudziba = Sudziba.find(params[:id])
	end

	def create
		@sudziba = Sudziba.new(sudziba_params)
		 
 	    if @sudziba.save
    		redirect_to @sudziba
  		else
    		render 'new'
  		end
	end
	
	def update
  		@sudziba = Sudziba.find(params[:id])
 
  		if @sudziba.update(sudziba_params)
    		redirect_to @sudziba
  		else
    		render 'edit'
  		end
	end

  def destroy
    @sudziba = Sudziba.find(params[:id])
    @sudziba.destroy
 
    redirect_to sudzibas_path
  end

private
  def sudziba_params
    params.require(:sudziba).permit(:title, :description, :customer, :user, :status)
	end

  def sort_column
    Sudziba.column_names.include?(params[:sort]) ? params[:sort] : "id"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end