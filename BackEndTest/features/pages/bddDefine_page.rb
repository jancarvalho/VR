class SelectionVRAPI
    #Nesse ambiente faremos a operação de globalizar os elementos que podem ser utilizados em várias parte do projeto
    include HTTParty
    require_relative '../hooks/bddDefine_hook.rb'

    #url padrão a ser utilizada em qualquer parte do projeto
    base_uri = "https://portal.vr.com.br/api-web/comum/enumerations/VRPAT"

    #método para inicializar (método construtor)
    def initialize(body)
        @bodyOptions = {:body => body}
    end

    #método get do endpoint da url 
    def getVRAPI
        self.class.get('/bddDefine', @bodyOptions) 
    end
end