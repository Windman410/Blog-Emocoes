class WelcomeController < ApplicationController
  def index
  	@artigos = Artigo.find_each(:batch_size => 20)
  end
end
