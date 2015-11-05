# ArtesanArte

Projeto da disciplina de LabProg II do IME-USP, segundo semestre de 2015.

## Introdução
Aplicativo criado com objetivo de gerenciar uma pequena loja de artesanato.

Com o ArtesanArte é possível gerenciar seu estoque de produtos e matérias-primas, cadastrar os clientes de sua empresa e administrar os pedidos encomendados por eles.

## Como instalar
Foi usado o Ruby 3.2.18.
A instalação do ArtesanArte é simples, já que em seu desenvolvimento foram utilizadas as configurações padrão do Rails. Basta executar os seguintes comandos:

    $ git clone git@github.com:FredLage/labprog2.git
    $ cd labprog2
    $ bundle install
    $ rake db:create && rake db:migrate

## CRUDs
O aplicativo consiste de quatro CRUDs:

###Produtos
São os artigos confeccionados por algum dos artesãos da loja. Cada produto está vinculado a uma ou mais matérias-primas e possui os seguintes campos:

* Nome: nome do produto;
* Categoria: tipo de produto (ex.: artigo de roupa, acessório, etc.);
* Matérias-primas: as matérias-primas utilizadas para a confecção deste produto;
* Preço: preço de venda deste produto;
* Tempo de confecção em horas: a quantidade de tempo utilizada para a confecção deste produto. Será utilizado em uma futura entrega para calcular um preço de venda estimado para este item.

###Pedidos
É o conjunto de produtos encomendados por um cliente em uma compra. Cada um de seus itens pode já estar confeccionado no estoque ou ainda precisar ser feito. Os pedidos possuem os seguintes campos:

* Nome do cliente: nome do cliente que encomendou o pedido;
* Preço: preço total do pedido;
* Tipo de pagamento: forma de pagamento que o cliente utilizará para pagar pelo pedido;
* Status: situação atual do pedido. Um pedido pode estar sendo confeccionado, aguardando pagamento ou concluído.

###Matérias-primas
As matérias-primas possuem os seguintes campos:

* Nome: nome da matéria-prima;
* Categoria: tipo de matéria-prima (ex.: linha, tecido, botão, etc.);
* Preço: valor pelo qual a matéria-prima foi comprada;
* Descrição: uma breve descrição do item.

###Clientes
Cada cliente pode estar vinculado a vários pedidos. Clientes possuem os seguintes campos:

* Nome: nome do cliente;
* Endereço: endereço do cliente;
* Telefone: telefone de contato do cliente;
* E-mail: endereço de e-mail do cliente.

####Além deste CRUDs, foi criado um model extra:

###Itens
Representam um item de um pedido, contendo um produto e a sua quantidade. Possui três campos:

* Quantidade: quantidade de um determinado produto contida no pedido;
* ID do pedido: identificação do pedido;
* ID do produto: identificação do produto contido no pedido.

## Testes
Os testes foram feitos com ajuda da ferramenta RSpec. Para executá-los, utilize o comando:

    $ rspec spec

## Produção
O projeto está hospedado no Heroku, onde pode ser acessado através do seguinte link:

[https://labprog2.herokuapp.com/](https://labprog2.herokuapp.com/)

##Futuras funcionalidades
Para as próximas entregas, planejamos implementar as seguintes funcionalidades: criação de uma tela de boas-vindas, cálculo do preço de venda estimado de um produto, criação de um sistema de login para múltiplos usuários, controle de caixa para cada funcionário e relatórios de pedidos, produtos e de matérias-primas. Possivelmente outras funcionalidades serão implementadas além destas.

## Autores
Os integrantes do grupo são:

Frederico Lage Ferreira
Ivan Krunoslav Suto

