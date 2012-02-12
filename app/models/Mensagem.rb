class Mensagem
  include Mongoid::Document

  field :membrofrom_id
  field :membroto_id
  field :emailfrom
  field :emailto
  field :texto
  field :registro
  field :status

end
