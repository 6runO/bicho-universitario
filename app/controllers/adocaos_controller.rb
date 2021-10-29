class AdocaosController < ApplicationController
  def create
    @adocao = Adocao.new(adocao_params)
    @bicho = Bicho.find(params[:bicho_id])
    @adocao.bicho = @bicho
    @adocao.save
  end

  private

  def adocao_params
    params.require(:adocao).permit(:bicho_id, :user_id)
  end
end
