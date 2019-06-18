class KomentarssController < ApplicationController
	def create
    	@sudziba = Sudziba.find(params[:sudziba_id])
    	@komentars = @sudziba.komentarss.create(komentars_params)
    	redirect_to sudziba_path(@sudziba)
	end
 
	def destroy
    	@sudziba = Sudziba.find(params[:sudziba_id])
    	@komentars = @sudziba.komentarss.find(params[:id])
    	@komentars.destroy
    	redirect_to sudziba_path(@sudziba)
  	end

private
    def komentars_params
    	params.require(:komentars).permit(:commenter, :body)
    end
end