class WelcomeController < ApplicationController
  def index
  	@artigo = Artigo.find_each(:batch_size => 20)
  end
end
