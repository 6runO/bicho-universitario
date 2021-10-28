class BichosController < ApplicationController
  def new
    @bicho = Bicho.new
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

  private

  def bicho_params
    params.require(:bicho).permit(:apelido, :cor, :porte, :sexo)
  end
end
