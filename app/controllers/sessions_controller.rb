class SessionsController < ApplicationController
  
  def new
    if user_signed_in?
      redirect_to user_path(current_user)
    end

  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user and user.authenticate(params[:session][:password])
      sign_in(user)
      redirect_to contacts_path
    else
      flash.now[:danger] = 'Email ou senha inválidos' #now faz a mensagem aparecer apenas uma vez
      render new
     
    end
  end

  def destroy
    sign_out
    flash[:sucess] = 'Volte Sempre'
    redirect_to entrar_path
  end

end
