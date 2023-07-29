Projeto de Banco de Dados de Comércio Eletrônico do curso Potência Tech powered by iFood | Ciência de Dados da DIO




Este projeto consiste em um banco de dados MySQL que representa um sistema de comércio eletrônico. Ele contém tabelas para clientes, produtos, pedidos, estoque, fornecedores e vendedores terceirizados, bem como várias tabelas de associação para representar os relacionamentos entre essas entidades.

Estrutura do Banco de Dados
O banco de dados é composto pelas seguintes tabelas:

Cliente
Produto
Pedido
Estoque
Fornecedor
Vendedor_Terceirizado
Produto_Pedido
Produto_Estoque
Fornecedor_Produto
Vendedor_Produto
Os scripts SQL para a criação e preenchimento dessas tabelas com dados fictícios estão disponíveis nos arquivos create.sql e insert.sql, respectivamente.

Consultas Exemplares
Além disso, um conjunto de consultas exemplares é fornecido no arquivo queries.sql, que demonstra como recuperar informações do banco de dados. Essas consultas incluem tarefas como listar todos os clientes, listar todos os produtos com um preço acima de um certo valor, listar todos os pedidos feitos por um determinado cliente, determinar quais produtos foram incluídos em um determinado pedido, entre outras.

Como usar
Para usar este projeto, você precisará ter o MySQL instalado em seu sistema. Então, você pode executar os scripts SQL usando a interface de linha de comando do MySQL ou uma ferramenta de interface gráfica como o MySQL Workbench.

Primeiro, execute o script create.sql para criar o banco de dados e as tabelas. Em seguida, execute o script insert.sql para preencher as tabelas com dados fictícios. Finalmente, você pode experimentar executar as consultas no script queries.sql ou criar suas próprias consultas.
