class AdminsController < ApplicationController
  before_action :authorize, except: [:new, :create]
  def new
    @admin = Admin.new
  end
  def create
    @admin = Admin.new(admin_params)
    if @admin.save
      redirect_to root_url
      #tire o método de comentário quando criar o helper.
      #Usuário depois de cadastrar-se acessa o sistema automaticamente
      
    else 
      render root_url
    end
  end


  

  private
  def admin_params
            params.require(:admin).permit(:nome, :email, :password, :password_confirmation)
  end
end
