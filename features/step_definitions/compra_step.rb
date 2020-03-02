Dado("que visito portal") do
    @web.load
end
  
Quando("realizo busca por {string}") do |produto|
    @produto = produto
    @web.search_product(produto)
    expect(page).to have_content(produto)
end
  
Quando("o adiciono no carrinho") do
    find('h2', text: @produto, match: :first).click
    @web.click_buy
end
  
Então("devo validar sua inclusão") do
    expect(page).to have_content(@produto)
end
  