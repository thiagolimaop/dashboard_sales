# Painel de apoio a vendas no Power BI

Foram criados dois paineis para apoiar o time de vendas e marketing usando Power BI, um para análise de faturamento e outro para demanda.

1. [Reprodução](#installation)
2. [Escolha das visualizações](#motivation)
3. [Aspectos dos dados](#results)


## Reprodução <a name="installation"></a>

Para reproduzir a prova, é necessário que se tenha instalado o Power BI na versão 2.118 ou superior, e que o banco de dados esteja configurado e povoado, localmente ou em um servidor remoto.

Para criar o Database vocÊ pode usar o comando: CREATE DATABASE database_name;

Logo após saia do shell, conecte-se novamente, dessa vez inserindo o nome do database criado quando for solicitado o database no prompt. Então execute os scripts para criação das tabelas e para preenchimento das mesmas inseridos na pasta banco deste repositório.

1. Abra o documento vendas.pbx;
2. Clique no botão de Transformar dados;
3. No menu lateral esquerdo, clique em database dentro da pasta Parametros e preencha o Valor Atual com o nome da base de dados onde se encontram as tabelas de vendas, clientes e demais;
4. Ainda no menu lateral esquerdo, clique em server dentro da pasta Parametros e preencha o Valor Atual com o servidor onde esta localizado o banco de dados. Se o servidor for local, não esquercer de colocar a porta.
5. Clique no botão Atualizar Pré visualização, a essa altura as tabelas devem estar acessíveis e preenchidas;
6. Clique em Fechar e aplicar e o agora basta aplicar os filtros e realizar as análises necessárias.

## Escolha das visualizações<a name="motivation"></a>

1. Árvore de decomposição
	
Este tipo de gráfico representa a decomposição de um valor em suas partes constituintes indo do todo para as partes individuais e pode ser uma ótima solução para análise de vendas. Este gráfico foi utilizado para facilitar encontrar quais categorias se destacam no faturamento e na quantidade de produtos vendidos. Este gráfico permite entrar mais a afundo e encontrar qual produto se destaca mais no faturamento ou na demanda por cada categoria. Abaixo por exemplo podemos ver que Carros é a categoria com melhor desenvoltura em relação ao faturamento, e eletrônicos fica em segundo lugar. Dos Eletrônicos, Notebooks tem o maior faturamento das vendas.

A partir deste gráfico será possível analisar quais categorias/produtos não podem faltar no estoque, além de verificar quais dão o maior retorno financeiro. Combinando filtros de período poderá facilitar encontrar quais categorias mais se destacam ao longo do tempo, permitindo se planejar melhor para atender à uma determinada demanda, case haja sazonalidade da venda de determinados produtos/categorias.

2. Gráfico de linhas

Muito utilizado para analizar tendências ao longo do tempo, o gráfico de linhas é uma otima opção para mostrar o faturamento e quantidade de produtos vendidos aos longo do tempo. Através deste gráfico podemos ver os períodos em que tivemos alta ou queda de vendas e faturamento. Além disso podemos usar o filtro de categorias para verificar se existe alguma demanda crescente por algum produto específico, o que nos ajudaria a realizar manipulações de preço se for constatado que a procura é maior que a demanda, ou o contrário.

3. Grafico de barra horizontal

Este gráfico é indicado para ser utilizado quando a quantidade de categorias é alta e os nomes das categorias são longos. No caso os nomes não das categorias não são exatamente muito longos, mas possuem caracteres o suficiente para dificultar a leitura caso fosse utilizado um grafico de barras vertical. A intenção ao utilizar este gráfico foi comparar o faturamento e demanda das vendas por faixa etária. Este gráfico nos permite analisar o perfil dos clientes que estão comprando, permitindo entender quais faixas etárias estão gastando e/ou demandando mais. Isso nos permite realizar uma reorganização interna do layout da loja ou site, de forma que os produtos que estão mais voltados para uma determinada faixa etária fiquem mais próximos ou visiveis. Além do mais, conhecendo nosso público temos a oportunidade de realizar campanhas de marketing personalizado.

4. Gráfico de rosca

Muito utilizado para mostrar distribuição proporcional entre categorias, este gráfico foi utilizado para mostrar a distribuição de faturamento e demanda entre os diferentes gêneros e status do compra do produto. Ao entendermos as distribuições de faturamento e demanda entre os gêneros entendemos melhor nosso público o que nos permite assim como foi explicado acima, realizar reorganização de layout da loja/site e fazer marketing direcionado.

Já a distribuição de faturamento e demanda por status da compra, nos permite entender os problemas que os clientes podem estar enfrentando. Sabendo que que existe uma alta quantidade de compras como pendentes ou canceladas, nos indica que os clientes estão tendo problemas durante o processo. Sendo assim, podemos analisar melhor as etapas da compra para identificar obstáculos e melhorar a usabilidade do site. Quando a compra estiver pendente, podemos oferecer incentivos para os clientes concluírem a compra.

## Aspectos dos dados<a name="results"></a>
Achei importante explorar faturamento e demanda, uma vez que alta quantidade de produtos vendidos não implica necessariamente em alto faturamento. Vai depender dos produtos que foram vendidos.
