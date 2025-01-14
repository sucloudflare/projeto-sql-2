# Sistema de Controle de Ordem de Serviço em Oficina Mecânica

Este repositório contém o esquema conceitual para o controle de ordens de serviço em uma oficina mecânica. O objetivo é gerenciar informações sobre clientes, veículos, mecânicos, ordens de serviço, peças e serviços executados.

## Descrição do Projeto

O sistema gerencia o fluxo de trabalho de uma oficina mecânica, incluindo o controle das ordens de serviço (OS), clientes, veículos, mecânicos, serviços executados, peças utilizadas e a tabela de mão-de-obra para cálculo dos valores.

### Entidades e Relacionamentos

O esquema inclui as seguintes entidades:
- **Cliente**: Armazena informações sobre os clientes, que podem ter múltiplos veículos.
- **Veículo**: Contém dados sobre os veículos dos clientes.
- **Mecânico**: Registra informações sobre os mecânicos da oficina, incluindo suas especialidades.
- **Ordem de Serviço (OS)**: Controla os serviços solicitados, valor total, status e data de conclusão.
- **Serviço**: Define os serviços executados em cada ordem de serviço.
- **Peça**: Registra as peças utilizadas nas ordens de serviço.
- **Tabela de Mão-de-Obra**: Contém a tabela de referência de valores de mão-de-obra para calcular os serviços.

### Relacionamentos

- **Cliente ↔ Veículo**: Um cliente pode ter múltiplos veículos.
- **Veículo ↔ Ordem de Serviço**: Cada veículo pode ter várias ordens de serviço.
- **Ordem de Serviço ↔ Serviço**: Cada ordem de serviço pode ter múltiplos serviços.
- **Serviço ↔ Mecânico**: Cada serviço é executado por um mecânico.
- **Ordem de Serviço ↔ Peça**: Uma ordem de serviço pode utilizar várias peças.
- **Serviço ↔ Tabela de Mão-de-Obra**: Cada serviço pode ter um valor de mão-de-obra calculado a partir da tabela de referência.

### Como Usar

1. Clone este repositório para seu ambiente local.
2. Importe o arquivo SQL para o seu banco de dados (PostgreSQL, MySQL ou outro).
3. Execute o script de criação de tabelas para gerar as tabelas no banco de dados.
4. Popule as tabelas com dados de exemplo para testar o sistema.

### Como Contribuir

Se você tiver sugestões ou melhorias para o esquema, sinta-se à vontade para enviar um pull request.

## Licença

Este projeto está licenciado sob a MIT License.
