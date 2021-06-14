class Address < ApplicationRecord
  validates :cep, presence: true 
  validates :uf, presence: true 
  validates :cidade, presence: true 
  validates :bairro, presence: true 
  validates :logradouro, presence: true

  validates :cep, uniqueness: true
end
