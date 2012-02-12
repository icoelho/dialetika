class Blog

  include Mongoid::Document

  field :blog_main
  field :membro_id
  field :membro_nome
  field :titulo
  field :texto
  field :publico
  field :status
  field :registro

end
