class MembroController < ApplicationController
  layout nil
  
  def authenticate
    digitado = params[:password]
    email = params[:email]
    user = Membro.where(:email => email).first
    
    if user
        if user.password_hash == digitado
            session[:userId] = user.id
            
            if user.admin == "S"
	      redirect_to "/homeadmin/all"
            end

            if user.admin == "N"
	      redirect_to "/homemember/all"
            end
 
        else
            redirect_to "/home/login"
        end
    else
        redirect_to "/home/login"
    end
  end
  
end
