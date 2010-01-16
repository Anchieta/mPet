# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper
  def sim_ou_nao(value)
    value ? "Sim" : "Não"
  end


end


#def session_user
#    @session_user ||= User.find(:first, :conditions=>['id = ?', session[:user]])
#  end

