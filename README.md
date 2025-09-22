🚗📊 Projeto de Análise de Vendas de Carros com SQL + Power BI

📌 Objetivo

O objetivo deste projeto foi comparar preços médios de veículos por fabricante e analisar a evolução dos valores ao longo dos anos, considerando também fatores como tipo de combustível, motor, quilometragem e modelos mais vendidos.

🔨 Etapas do Projeto
1. Preparação dos Dados (SQL)

Criação de tabelas fato e dimensões.

Definição de primary keys e normalização do dataset.

Construção do modelo Star Schema para facilitar a análise no Power BI.

2. Visualização (Power BI)

Criação de dashboards interativos para:

Comparar preços médios por marca e modelo.

Avaliar a evolução temporal dos preços (anos de fabricação).

Explorar diferenças por tipo de combustível e tamanho do motor.

Identificar quilometragem média e comportamento por faixa.

📈 Insights Extraídos

Marcas de luxo (BMW e Porsche) apresentam preços consistentemente mais altos, mas sofrem maiores variações com o tempo de uso.

Marcas populares (Ford, Toyota e VW) possuem menor preço médio e modelos mais estáveis em custo-benefício.

O tipo de combustível impacta diretamente no preço: híbridos tendem a ter valores médios mais elevados.

O preço cai de forma significativa após 10 anos de uso, independente da marca.

🛠️ Ferramentas Utilizadas

SQL (MySQL) → modelagem de dados, criação do esquema estrela, tratamento e preparação.

Power BI → desenvolvimento do dashboard interativo e análises visuais.

📂 Estrutura do Repositório

data/ → dataset bruto e tratado

sql/ → scripts SQL de preparação, criação de tabelas e modelo estrela

powerbi/ → arquivos .pbix do dashboard

README.md → descrição do projeto

📢 Conclusão

Este projeto permitiu consolidar práticas de modelagem de dados, ETL com SQL e Data Visualization no Power BI, além de extrair insights de negócio relevantes para o setor automotivo.
