/// <reference types="cypress"/>

context("VR's selection process for the position of QA Engineer", () => {
  describe("Frontend step: Acessando a página da VR através do link disponibilizado.", () => {
    beforeEach(() => {
      cy.visit("www.vr.com.br");
    });
    it("Frontend: 1.0 - Acessar o menu PARA VOCÊ na página principal da VR", () => {
      //Acessar o menu PARA VOCÊ na pagina principal
      cy.get("a").contains("Pra Você").click();
      //cy.get("href":"https://www.vr.com.br/onde-aceita.htm"")

      //Seleciona a opção de rede credenciada na opção Onde usar meu VR? exibindo o mapa de opções
      cy.get("a").contains("Onde usar o meu cartão").click();

      //Verifica se o mapa foi aberto e está visível
      cy.get("div[id=map]").should("be.visible");
    });
  });
});
