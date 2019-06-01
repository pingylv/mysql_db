class ClientsController < ApplicationController
helper_method :sort_column, :sort_direction

def index
	@clients = Client.order(sort_column + " " + sort_direction)
end

def show
	@client = Client.find(params[:id])
end

def new
	@client = Client.new
end

def edit
	@client = Client.find(params[:id])
end

def create
  @client = Client.new(client_params)
 
  if @client.save
    redirect_to @client
  else
    render 'new'
  end
end

def update
  @client = Client.find(params[:id])
 
  if @client.update(client_params)
    redirect_to @client
  else
    render 'edit'
  end
end

def destroy
  @client = Client.find(params[:id])
  @client.destroy
 
  redirect_to clients_path
end

private
	def client_params
		params.require(:client).permit(:vards,:uzvards,:personas_kods,:tel_nummurs,:epasts,:adrese,:piezimes)
	end

  def sort_column
    Client.column_names.include?(params[:sort]) ? params[:sort] : "id"
  end

  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end