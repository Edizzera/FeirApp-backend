# Feirapp-backend

Este projeto é uma aplicação Quarkus que gerencia feiras. A aplicação permite criar, atualizar, buscar e deletar feiras.

## Plano de Testes

Abaixo estão descritos os testes implementados no projeto:

### Testes de Componentes (API)

#### `FairControllerTest`

- `testFindAllEndpoint()`
  - **Descrição**: Testa o endpoint de busca de todas as feiras.
  - **Entrada**: GET request para `/api/v1/fairs`.
  - **Saída Esperada**: Status 200 OK e corpo da resposta não vazio.

- `testFindFairByWeekDayEndpoint()`
  - **Descrição**: Testa o endpoint de busca de feiras por dia da semana e categoria.
  - **Entrada**: POST request para `/api/v1/fairs/search` com filtro `FairFilter`.
  - **Saída Esperada**: Status 200 OK e corpo da resposta não vazio.

- `testUpdateEndpoint()`
  - **Descrição**: Testa o endpoint de atualização de uma feira.
  - **Entrada**: PUT request para `/api/v1/fairs/{id}` com um objeto `Fair` e ID da feira.
  - **Saída Esperada**: Status 200 OK e ID da feira no corpo da resposta.

- `testCreateEndpoint()`
  - **Descrição**: Testa o endpoint de criação de uma nova feira.
  - **Entrada**: POST request para `/api/v1/fairs` com um objeto `Fair`.
  - **Saída Esperada**: Status 200 OK e nome da feira no corpo da resposta.

- `testDeleteEndpoint()`
  - **Descrição**: Testa o endpoint de deleção de uma feira.
  - **Entrada**: DELETE request para `/api/v1/fairs/{id}` com ID da feira.
  - **Saída Esperada**: Status 204 No Content.

### Testes Unitários

#### `FairServiceTest`

- `findAll_ShouldReturnListOfFairs()`
  - **Descrição**: Testa se o serviço retorna uma lista de feiras.
  - **Entrada**: Chamada do método `findAll()`.
  - **Saída Esperada**: Lista não nula e não vazia contendo feiras.

- `findFairByWeekDay_ShouldReturnFilteredFairs()`
  - **Descrição**: Testa se o serviço retorna feiras filtradas por dia da semana.
  - **Entrada**: Chamada do método `findFairByWeekDay()` com filtro `FairFilter`.
  - **Saída Esperada**: Lista não nula e não vazia contendo feiras.

- `update_ShouldUpdateFair()`
  - **Descrição**: Testa se o serviço atualiza uma feira.
  - **Entrada**: Chamada do método `update()` com ID da feira e objeto `Fair`.
  - **Saída Esperada**: Feira atualizada com o novo nome.

- `create_ShouldCreateFair()`
  - **Descrição**: Testa se o serviço cria uma nova feira.
  - **Entrada**: Chamada do método `create()` com um objeto `Fair`.
  - **Saída Esperada**: Feira persistida no repositório.

- `delete_ShouldDeleteFair()`
  - **Descrição**: Testa se o serviço deleta uma feira.
  - **Entrada**: Chamada do método `delete()` com ID da feira.
  - **Saída Esperada**: Feira deletada do repositório.

## Verificação Estática

Para garantir a qualidade do código, implementamos análise estática utilizando as ferramentas PMD e/ou SonarQube. Essas ferramentas são configuradas para rodar automaticamente no pipeline de CI/CD ou diretamente no código.

## Testes de Sistema

Para testes de sistema, foi utilizado a  ferramenta Selenium para simular interações do usuário com a aplicação em um ambiente que se assemelha à produção.

## Integração Contínua (CI/CD)

O projeto está configurado com GitHub Actions para automatizar o processo de integração contínua. O pipeline inclui as seguintes etapas:

- Instalação de dependências
- Execução de testes unitários e de componentes
- Análise estática de código
- Build do projeto

O arquivo de configuração `.github/workflows/build.yml` contém todas as definições necessárias para o pipeline de CI/CD.