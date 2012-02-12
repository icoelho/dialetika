class BlogController < ApplicationController
  layout nil
  # before_filter :authorize_user
  
  def all
     @blogs  = Blog.where( "blog_main" => "0", "status" => "1" , "publico" => "S").order_by(:registro, "DESC").limit(10)
     @noticias  = Informa.where("status" => "1" , "publico" => "S").order_by(:registro, "DESC").limit(7)
     render "_bloglist"
  end
  
  def comments
     @blogsmain  = Blog.find(params[:id])
     @blogs  = Blog.where( "blog_main" => params[:id] , "status" => "1" , "publico" => "S").order_by(:registro, "DESC").limit(10)
     @noticias  = Informa.where("status" => "1" , "publico" => "S").order_by(:registro, "DESC").limit(7)
     render "_blogcomment"
  end
  
  def save
    t = Time.now
    dataregistro  =  t.strftime("%Y%m%d")
    b = Blog.new
    b.blog_main = params[:blogId].strip
    b.texto     = params[:comentario].strip
    b.publico   = "S"
    b.status    = "1"
    b.registro = dataregistro
    b.save

     @blogs  = Blog.where( "blog_main" => "0", "status" => "1" , "publico" => "S").order_by(:registro, "DESC").limit(10)
     @noticias  = Informa.where("status" => "1" , "publico" => "S").order_by(:registro, "DESC").limit(7)
     render "_bloglist"
 

  end
  
end
