require 'rails_helper'

RSpec.describe Address, type: :model do
  it { is_expected.to(validate_presence_of(:cep)) }
  it { is_expected.to(validate_presence_of(:uf)) }
  it { is_expected.to(validate_presence_of(:cidade)) }
  it { is_expected.to(validate_presence_of(:bairro)) }
  it { is_expected.to(validate_presence_of(:logradouro)) }

  it { is_expected.to(validate_uniqueness_of(:cep)) }
end
