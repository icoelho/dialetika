class HomeadminController < ApplicationController
  layout nil
  
  def all
     loadNews
     render "_home"
  end
  
  def login
    render "_login"
  end
  
  def logout
     # clear session
    session[:userId] = nil
    session[:userAdmin] = nil
    loadNews
    redirect_to :controller => 'home' , :action => 'all'
  end
  
  def listNews
    loadNews
    @allnews  = Informa.order_by(:registro, "DESC").limit(100)
    render "_news"
  end
  
  
  private
  
  def loadNews
    @avisos = Aviso.where( "status" => "1" , "publico" => "S").order_by(:registro, "DESC").limit(7)
    @blogs  = Blog.where( "blog_main" => "0", "status" => "1" , "publico" => "S").order_by(:registro, "DESC").limit(7)
    @noticias  = Informa.where("status" => "1" , "publico" => "S").order_by(:registro, "DESC").limit(7)
  end
  
  
end
