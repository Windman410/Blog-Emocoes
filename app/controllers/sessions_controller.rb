class SessionsController < ApplicationController
  before_action :block_access, except: [:destroy]
  def create  
            @admin = Admin.find_by(email: params[:session][:email].downcase)
            if @admin && @admin.authenticate(params[:session][:password])
                        sign_in
            redirect_to root_url
    else
            render 'new'
    end
  end

  def destroy
            sign_out
    redirect_to root_url
  end
end
