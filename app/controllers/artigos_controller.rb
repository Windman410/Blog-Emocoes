class ArtigosController < ApplicationController
	http_basic_authenticate_with name: "nome", password: "senha", except: [:index, :show]

	def index
      @artigos = Artigo.all
    end

	def show
      @artigo = Artigo.find(params[:id])
	end

	def new 
	  @artigo = Artigo.new
	end

	def edit
	  @artigo = Artigo.find(params[:id])
	end

	def create
	  @artigo = Artigo.new(artigo_params)

	  if @artigo.save
	    redirect_to @artigo
	  else 
	  	render 'new'
	  end
	end

	def update
	  @artigo = Artigo.find(params[:id])
 
  	  if @artigo.update(artigo_params)
        redirect_to @artigo
      else
        render 'edit'
      end
	end

	def destroy
	  @artigo = Artigo.find(params[:id])
      @artigo.destroy
 
      redirect_to artigos_path
	end

	private def artigo_params
	  params.require(:artigo).permit(:titulo, :texto)
	end
end
