class AddressSerializer < ActiveModel::Serializer
  attributes :cep, :uf, :cidade, :bairro, :logradouro
end
