class BichosController < ApplicationController
  def index
    @bichos = Bicho.all
  end

  def new
    @bicho = Bicho.new
  end

  def show
    @bicho = Bicho.find(params[:id])
  end

  def create
    @bicho = Bicho.new(bicho_params)
    @bicho.user = current_user
    if @bicho.save
      redirect_to bicho_path(@bicho)
    else
      render :new
    end
  end

  def destroy
    @bicho = Bicho.find(params[:id])
    @bicho.destroy
    redirect_to bichos_path
  end

  private

  def bicho_params
    params.require(:bicho).permit(:apelido, :cor, :porte, :sexo, :localizacao, :especie, :personalidade, :photo)
  end
end
