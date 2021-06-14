class AddressesController < ApplicationController

  def show
    if address.present?
      UserAddress.find_or_create_by(user: @current_user, address: address)
      
      render json: {data: AddressSerializer.new(address).as_json}, status: :ok
    else
      render json: {mensage: 'CEP invalido'}, status: :not_found
    end
  end

  private 

  def address
    @address = Address.find_by(cep: params[:cep])

    if @address.blank?
      address_service = AdressService.new(params[:cep]).call
     
      if address_service.present?
        @address =  Address.create(
          cep: address_service['cep'],
          uf: address_service['uf'],
          cidade: address_service['cidade'],
          bairro: address_service['bairro'],
          logradouro: address_service['logradouro']
        )
      end 
    end 
    @address
  end
end
