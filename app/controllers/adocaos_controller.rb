class AdocaosController < ApplicationController
  def create
    @adocao = Adocao.new
    @bicho = Bicho.find(params[:bicho_id])
    @adocao.bicho = @bicho
    @adocao.save
  end
end
