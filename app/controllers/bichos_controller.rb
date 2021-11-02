class BichosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_bicho, only: [:show, :destroy, :update, :edit]

  def index
    @bichos = Bicho.all
  end

  def new
    @bicho = Bicho.new
  end

  def show
  end

  def create
    @bicho = Bicho.new(bicho_params)
    @bicho.user = current_user
    # raise
    @bicho.photo == nil if params[:bicho][:photo].nil?
    if @bicho.save
      redirect_to bicho_path(@bicho)
    else
      render :new
    end
  end

  def destroy
    @bicho.destroy
    redirect_to bichos_path
  end

  def edit
  end

  def update
    @bicho.update(bicho_params)
    redirect_to bicho_path(@bicho)
  end

  private

  def set_bicho
    @bicho = Bicho.find(params[:id])
  end

  def bicho_params
    params.require(:bicho).permit(:apelido, :cor, :porte, :sexo, :localizacao, :especie, :personalidade, :photo)
  end
end
