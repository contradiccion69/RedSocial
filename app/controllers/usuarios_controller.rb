class UsuariosController < ApplicationController
  before_action :set_user
  before_action :authenticate_user!, only: [:update]


  def show

  end

  def update

    respond_to do |format|
      if     @user.update(user_params)
        format.html{ redirect_to @user}
      else
        format.html{ redirect_to @user,notice:"Error al enviar: #{@user.errors.full_messages}"}
      end
    end
  end

  private
  def set_user
    @user = User.find(params[:id])
  end
  def user_params
    params.require(:user).permit(:username,:email,:name,:lastName)

  end
end