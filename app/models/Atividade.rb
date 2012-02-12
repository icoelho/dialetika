class Atividade
  include Mongoid::Document

  field :cronograma_id
  field :cronograma_aula
  field :nome
  field :descricao
  field :status

end
