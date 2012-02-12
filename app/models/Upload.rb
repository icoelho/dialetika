class Upload
  include Mongoid::Document

  field :atividade_id
  field :atividade_nome
  field :membro_id
  field :membro_nome
  field :descricao
  field :arquivolink
  field :registro
  field :publico

end
