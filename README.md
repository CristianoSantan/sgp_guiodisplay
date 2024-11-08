
# Sistema de Gestão de Produção - Guiô Display

Este projeto é um sistema de gestão de produção desenvolvido para a empresa Guiô Display. O sistema facilita o controle de pedidos, gestão de ordens de produção, controle de estoque e análise de vendas.

## Funcionalidades Principais

- **Gerenciamento de Pedidos:** Cadastro, acompanhamento e atualização de status dos pedidos.
- **Controle de Produção:** Organização das ordens de produção e status do andamento.
- **Controle de Estoque:** Controle de insumos e produtos em estoque, com alertas de baixa.
- **Análise de Vendas:** Relatórios e gráficos de vendas para apoio na tomada de decisão.

## Requisitos

- **Ruby:** >= 3.0
- **Rails:** >= 7.0
- **Banco de Dados:** PostgreSQL (ou SQLite para desenvolvimento)
- **Node.js** e **Yarn** para gerenciamento de dependências de frontend
- **Docker** (opcional) para contêineres

## Configuração do Ambiente

1. Clone este repositório:
   ```bash
   git clone https://github.com/CristianoSantan/sgp_guiodisplay.git
   cd nome-do-repositorio
   ```

2. Instale as dependências:
   ```bash
   bundle install
   yarn install
   ```

3. Configure o banco de dados:
  Crie e configure o banco de dados:
    ```bash
    rails db:create
    rails db:migrate
    ```

4. (Opcional) Configure variáveis de ambiente no arquivo `.env` para dados sensíveis (como credenciais do banco).

5. Inicie o servidor:
   ```bash
   rails server
   ```

## Executando Testes

Para garantir o bom funcionamento do sistema, utilize os testes automatizados configurados:

```bash
rspec
```

Os testes cobrem as principais funcionalidades do sistema, incluindo o fluxo de criação e atualização de pedidos, produção, e controle de estoque.

## Uso

1. **Acesso ao sistema:** Após iniciar o servidor, acesse `http://localhost:3000` em seu navegador.
2. **Login:** Use as credenciais configuradas para acessar o sistema (verifique os seeds ou crie um usuário no banco de dados).
3. **Gerenciamento de Pedidos e Produção:** Navegue pelas seções de pedidos e produção para criar, atualizar e acompanhar os pedidos e as ordens de produção.
4. **Controle de Estoque:** Gerencie itens de estoque, ajuste quantidades e receba alertas quando o estoque estiver baixo.

## Licença

Este projeto está licenciado sob a Licença MIT - consulte o arquivo [LICENSE](LICENSE) para mais detalhes.
