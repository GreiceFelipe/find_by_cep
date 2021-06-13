class AdressService

  def initialize(cep)
    @cep = cep
  end

  def call 
    response = RestClient.get "#{base_url}/#{@cep}", {accept: :json}
    JSON.parse(response.body)
  end

  private

  def base_url
    'http://cep.la'
  end
end