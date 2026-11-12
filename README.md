# tarefas-bd
Repositório para Auxilio no Ensino de Banco de Dados do BSI/CERES/UFRN - Caicó RN

## 📁 Tarefa 03 - Infraestrutura Docker e Banco de Dados MariaDB

Esta seção do repositório contém os artefatos de configuração do ambiente em contêineres e os scripts SQL desenvolvidos para a **Tarefa 03** da disciplina.

Todos os arquivos desta tarefa estão organizados na pasta [tarefa03](/tarefa03) do repositório:

* **`docker-compose.yml`**: Arquivo de orquestração do Docker Compose responsável por subir e interconectar os serviços do SGBD **MariaDB** e da interface de gerenciamento web **CloudBeaver** em uma mesma rede interna.
* **`.env.example`**: Modelo de variáveis de ambiente com os parâmetros de portas, senhas e nomes de banco necessários para a subida do ambiente. Serve como guia para a criação do arquivo `.env` local.
* **`.gitignore`**: Configuração de versionamento do Git ajustada para ignorar o arquivo `.env` real, evitando o vazamento de credenciais e senhas sensíveis no repositório.
* **`povoamento.sql`**: Script DML contendo as instruções `INSERT` utilizadas para alimentar a base de dados inicial com os autores, livros e registros de empréstimos.
* **`setup.sql`**: Script SQL idempotente de automação responsável por recriar do zero a estrutura completa do banco `biblioteca`, tabelas (`autores`, `livros`, `emprestimos`), usuários com privilégios restritos (`app_biblioteca`, `consulta`) e a carga de dados.