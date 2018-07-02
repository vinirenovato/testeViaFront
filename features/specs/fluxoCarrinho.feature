# language: pt


Funcionalidade: Validar produto no carrinho

- Eu como usuario.
- Eu quero fazer uma busca de um produto na loja.
- Eu quero levar um produto até o carrinho

Cenario: Colococar um produto no carrinho com sucesso.
Dado que estou na loja
E eu faco uma busca por um produto
E eu sou redirecioando para a pagina de catalogo dos produtos pesquidados
E seleciono um produto
E sou redirecionado para a pagina do produto
E clico em comprar
Entao sou redirecionado para o carrinho
