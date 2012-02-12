class HomeController < ApplicationController
  layout nil
  
  def all
     @avisos = Aviso.where( "status" => "1" , "publico" => "S").order_by(:registro, "DESC").limit(7)
     @blogs  = Blog.where( "blog_main" => "0", "status" => "1" , "publico" => "S").order_by(:registro, "DESC").limit(7)
     @noticias  = Informa.where("status" => "1" , "publico" => "S").order_by(:registro, "DESC").limit(7)
     render "_home"
  end
  
  def login
    render "_login"
  end
  
  
  
end
