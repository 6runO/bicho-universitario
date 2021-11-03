class AdocaosController < ApplicationController

  def index
    @adocao = Adocao.all
  end

  def new
    @adocao = Adocao.new
    @bicho = Bicho.find(params[:bicho_id])
  end

  def show
    @adocao = Adocao.find(params[:id])
    # @bicho = Bicho.find(params[:bicho_id])
  end

  def create
    @bicho = Bicho.find(params[:bicho_id])
    @adocao = Adocao.new
    @adocao.user = current_user
    @adocao.bicho = @bicho
    if @adocao.save
      redirect_to adocao_path(@adocao)
    end
  end

  def destroy
  end

#   private

#   def adocao_params
#     params.require(:adocao).permit(:bicho_id, :user_id)
#   end
end
