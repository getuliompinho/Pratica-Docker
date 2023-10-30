# Pratica-Docker

# Configuração de Ambiente AWS com Docker e EFS

Este repositório contém um conjunto de scripts e instruções para configurar um ambiente na AWS com Docker, Docker Compose e Elastic File System (EFS). Essa configuração é útil para implantar aplicativos baseados em contêineres em uma infraestrutura escalável na nuvem.

## Passos de Configuração

Siga os passos a seguir para configurar o ambiente:

1. **Atualizar o Sistema e Instalar o Docker**:
   - Atualize o sistema.
   - Instale o Docker.
   - Inicialize e habilite o Docker na inicialização.

2. **Instalar o Docker Compose**:
   - Baixe e instale o Docker Compose.
   - Defina permissões apropriadas.

3. **Baixar o Arquivo docker-compose.yaml**:
   - Baixe o arquivo `docker-compose.yaml` do seu repositório do GitHub.

4. **Instalar o Cliente NFS**:
   - Instale o cliente NFS.

5. **Criar Diretório para Montagem EFS**:
   - Crie um diretório para montagem do EFS.

6. **Montar o Sistema de Arquivos EFS**:
   - Monte o sistema de arquivos EFS na instância.

7. **Configurar Montagem Automática**:
   - Configure a montagem automática na inicialização.

8. **Adicionar o Usuário ao Grupo do Docker**:
   - Adicione o usuário atual ao grupo do Docker.

9. **Dar Permissões no docker.sock**:
   - Dê permissões de leitura e escrita no `docker.sock`.

10. **Criar o Contêiner com Docker Compose**:
    - Crie o contêiner usando o arquivo `docker-compose.yaml`.

## Observações

- Lembre-se de personalizar o arquivo `docker-compose.yaml` com as configurações específicas do seu aplicativo.

- Certifique-se de seguir as melhores práticas de segurança ao configurar as permissões e credenciais necessárias.

- Este repositório serve como um guia de referência e deve ser adaptado às necessidades e requisitos específicos do seu projeto.

- Certifique-se de manter as credenciais e informações sensíveis em segurança.

## Autores

- [Getúlio Macedo Pinho]


