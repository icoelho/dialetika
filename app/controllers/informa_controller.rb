class InformaController < ApplicationController

  layout nil
  
  def all
     @blogs  = Blog.where( "blog_main" => "0", "status" => "1" , "publico" => "S").order_by(:registro, "DESC").limit(10)
     @noticias  = Informa.where("status" => "1" , "publico" => "S").order_by(:registro, "DESC").limit(7)
     
     @allnews   = Informa.where("status" => "1" , "publico" => "S").order_by(:registro, "DESC").limit(30)
     
     
     render "_informalist"

  end
  
  def show
     @blogs  = Blog.where( "blog_main" => "0", "status" => "1" , "publico" => "S").order_by(:registro, "DESC").limit(7)
     @noticias  = Informa.where("status" => "1" , "publico" => "S").order_by(:registro, "DESC").limit(7)
     @readnews  = Informa.find(params[:id])

     render "_informa"
  end
  
  
end
