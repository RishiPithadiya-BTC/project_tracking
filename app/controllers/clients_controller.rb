class ClientsController < ApplicationController
  before_action :set_client, only: [:show, :destroy]
 
  def new
    @client = Client.new
  end

  def index
    @clients = Client.all
  end

  def show
  end

  def create
    @client = Client.new(client_params)

    respond_to do |format|
      if @client.save
        format.html { redirect_to @client, notice: 'Client was successfully created.' }
        format.json { render action: 'show', status: :created, location: @client }
      else
        format.html { render action: 'new' }
        format.json { render json: @client.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @client.destroy
    respond_to do |format|
      format.html { redirect_to clients_url }
      format.json { head :no_content }
    end
  end

  private

  def set_client
      @client = Client.find(params[:id])
    end

  def client_params
      params.require(:client).permit(:name, :city)
  end
end
