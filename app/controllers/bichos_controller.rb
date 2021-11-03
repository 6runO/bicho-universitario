class BichosController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :set_bicho, only: [:show, :destroy, :update, :edit]

  def index
    @bichos = policy_scope(Bicho)
  end

  def show
    authorize @bicho
  end

  def new
    @bicho = Bicho.new
    authorize @bicho
  end

  def create
    @bicho = Bicho.new(bicho_params)
    @bicho.user = current_user
    # @bicho.photo == nil if params[:bicho][:photo].nil?
    authorize @bicho
    if @bicho.save
      redirect_to bicho_path(@bicho), notice: 'O cadastro foi realizado com sucesso.'
    else
      render :new
    end
  end

  def destroy
    authorize @bicho
    @bicho.destroy
    redirect_to bichos_path, notice: 'O cadastro foi excluído com sucesso.'
  end

  def edit
    authorize @bicho
  end

  def update
    authorize @bicho
    if @bicho.update(bicho_params)
      redirect_to bicho_path(@bicho), notice: 'A atualização foi realizada com sucesso.'
    else
      render :edit
    end
  end

  private

  def set_bicho
    @bicho = Bicho.find(params[:id])
  end

  def bicho_params
    params.require(:bicho).permit(:apelido, :cor, :porte, :sexo, :localizacao, :especie, :personalidade, :photo)
  end
end
