class ComentariosController < ApplicationController
  http_basic_authenticate_with name: "nome", password: "senha", only: :destroy

  def create
    @artigo = Artigo.find(params[:artigo_id])
    @comentario = @artigo.comentario.create(comentario_params)
    redirect_to artigo_path(@artigo)
  end

  def destroy
    @artigo = Artigo.find(params[:artigo_id])
    @comentario = @artigo.comentario.find(params[:id])
    @comentario.destroy
    redirect_to artigo_path(@artigo)
  end
 
  private
    def comentario_params
      params.require(:comentario).permit(:nome, :texto)
    end
end
