require 'rails_helper'

RSpec.describe AdressService do
  describe "#call" do
    let(:adress_response) { AdressService.new('12512422').call }

    it "can fetch & parse user data" do
      expect(adress_response).to be_kind_of(Hash) 
      expect(adress_response).to have_key("cep") 
      expect(adress_response).to have_key("uf") 
      expect(adress_response).to have_key("cidade") 
      expect(adress_response).to have_key("bairro") 
      expect(adress_response).to have_key("logradouro") 
    end
  end
end