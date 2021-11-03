class AdocaosController < ApplicationController
  def show
    @adocao = Adocao.find(params[:id])
    # @bicho = Bicho.find(params[:bicho_id])
    authorize @adocao
  end

  def new
    @adocao = Adocao.new
    @bicho = Bicho.find(params[:bicho_id])
    authorize @adocao
  end

  def create
    @bicho = Bicho.find(params[:bicho_id])
    @adocao = Adocao.new
    @adocao.user = current_user
    @adocao.bicho = @bicho
    authorize @adocao
    if @adocao.save
      redirect_to adocao_path(@adocao)
    else
      render :new
    end
  end

#   private

#   def adocao_params
#     params.require(:adocao).permit(:bicho_id, :user_id)
#   end
end
