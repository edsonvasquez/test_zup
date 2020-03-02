#language:pt

Funcionalidade: Validar funções do portal e-comerce

    Contexto:
        Dado que visito portal            

@carrinho
    Cenario: Validar produto no carrinho

        Quando realizo busca por "Cama Box Casal"        
        E o adiciono no carrinho
        Então devo validar sua inclusão