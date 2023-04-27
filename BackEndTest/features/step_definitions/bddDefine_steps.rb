#importa o "elemento" Httparty para ser usado nessa chamada 
require 'httparty'

Given("Conected in link of API to request the key") do
    #Atribui o caminho da API a uma "variavel" Global
    $uri_base = "https://portal.vr.com.br/api-web/comum/enumerations/VRPAT"
end
When("requesting the information about the JSon in API with key typeOfEstablishment") do
    #Pega o registro do caminho da API informada na chamada acima, conectada no primeiro momento
    $response = HTTParty.get($uri_base)
end
Then("the API back the data requested and show data") do
    #Lista todos registros que possuem a Key typeOfEstablishment
    puts "Tipos de Estabelecimento com a Chave typeOfEstablishment:#{$response['typeOfEstablishment']}"

    #Exibir um registro específico da lista numa posição do Array, no caso a seguir na posição 0 ou seja o registro 1
    puts "\n ********************************************* 
    Registro 1 que contém a Chave typeOfEstablishment:#{$response['typeOfEstablishment'][0]}"
end