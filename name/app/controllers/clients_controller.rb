class ClientsController < ApplicationController

def new
end

def create
  @client = Client.new(client_params)
 
  @client.save
  redirect_to @client
end

private
	def client_params
		params.require(:client).permit(:vards,:uzvards,:personas_kods,:tel_nummurs,:epasts,:adrese,:piezimes)
	end

end