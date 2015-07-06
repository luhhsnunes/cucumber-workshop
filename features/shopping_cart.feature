# language: pt
Funcionalidade: Usuário adiciona itens no carrinho de compra

  Como um usuário
  Eu quero poder adicionar itens no meu carrinho de compras
  Para então poder proceder com a compra

  Cenário: Validar os itens no meu carrinho de compras
    Dado que eu adicionei os seguintes itens no meu carrinho de compras:
      | Cebolas  |
      | Bananas  |
      | Laranjas |
      | Pepinos  |
    Quando eu visito a pagina do carrinho de compras
    Então eu vejo a lista contendo todo os itens adicionados
