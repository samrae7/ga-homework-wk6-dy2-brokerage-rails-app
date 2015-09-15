class ClientsController < ApplicationController

  def index
    @clients = Client.all
  end

  def show
    @client = Client.find(params[:id])
    @client_stocks = @client.client_stocks
  end
end
