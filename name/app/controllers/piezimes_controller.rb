class PiezimesController < ApplicationController

	def create
    	@sudziba = Sudziba.find(params[:sudziba_id])
    	@piezime = @sudziba.piezimes.create(piezime_params)
    	redirect_to sudziba_path(@sudziba)
	end
 
	def destroy
    	@sudziba = Sudziba.find(params[:sudziba_id])
    	@piezime = @sudziba.piezimes.find(params[:id])
    	@piezime.destroy
    	redirect_to sudziba_path(@sudziba)
  	end

private
    def piezime_params
    	params.require(:piezime).permit(:commenter, :body)
    end
end