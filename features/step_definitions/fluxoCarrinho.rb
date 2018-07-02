Dado("que estou na loja") do
  visit('https://www.extra.com.br')
end

Quando("eu faco uma busca por um produto") do

   page.find(:css, '#ctl00_TopBar_PaginaSistemaArea1_ctl20_ctl00_txtBusca').set('Televisor')
   click_button 'ctl00_TopBar_PaginaSistemaArea1_ctl20_ctl00_btnOK'

end

E("eu sou redirecioando para a pagina de catalogo dos produtos pesquidados") do

end

E("seleciono um produto") do

  page.find(:css, '#nm-product-8082544 > div > div.nm-product-img-container > a > img').click

end

E("sou redirecionado para a pagina do produto") do

end

E("clico em comprar") do

  page.find(:css,'#btnAdicionarCarrinho').click
  page.find_all(:css, '.decline-button').first.click

end

Entao("sou redirecionado para o carrinho") do

end