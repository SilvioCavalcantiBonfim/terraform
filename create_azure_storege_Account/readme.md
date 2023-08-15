# Terraform - Criação de Armazenamento na Azure

![terraform](https://img.shields.io/badge/-terraform-white?style=for-the-badge&logo=terraform&color=7B42BC&logoColor=white)
![microsoftazure](https://img.shields.io/badge/-Microsoft_Azure-white?style=for-the-badge&logo=microsoftazure&color=0078D7&logoColor=white)

Este repositório contém código Terraform para criar uma conta de armazenamento na Microsoft Azure. A conta de armazenamento é utilizada para armazenar diversos tipos de dados, como blobs, tabelas e filas.

## Pré-requisitos

Antes de executar este código, certifique-se de que você tenha os seguintes pré-requisitos em seu ambiente:

1. [Terraform](https://www.terraform.io/downloads.html) instalado.
2. Uma conta ativa na [Microsoft Azure](https://azure.com).
3. Credenciais da sua conta Azure configuradas localmente. Isso pode ser feito através do [Azure CLI](https://docs.microsoft.com/pt-br/cli/azure/install-azure-cli) utilizando o comando `az login`.

## Uso

Siga os passos abaixo para criar a conta de armazenamento na Azure:

1. Clone este repositório para sua máquina local:

```bash
git clone https://github.com/SilvioCavalcantiBonfim/terraform.git
cd terraform/create-azure-storage-account
```
2. Configure suas variáveis:

Abra o arquivo variables.tf na subpasta create-azure-storage-account. Este arquivo contém as variáveis necessárias para configurar a criação da conta de armazenamento. Preencha cada variável de acordo com suas necessidades.

3. Inicialize o diretório Terraform:

```bash
terraform init
```

4. Visualize as alterações planejadas:

```bash
terraform plan
```

Isso irá mostrar um resumo das alterações que serão feitas na sua infraestrutura.

5. Aplique as alterações:

```bash
terraform apply
```
Confirme a aplicação das alterações digitando yes quando solicitado.

1. Destrua a infraestrutura (quando necessário):

Se você precisar remover a conta de armazenamento criada, você pode executar:

```bash
terraform destroy
```
Confirme a destruição digitando yes quando solicitado.

## Personalização
Este código Terraform pode ser personalizado para atender às suas necessidades específicas. Você pode ajustar as variáveis no arquivo `variables.tf` e modificar os recursos definidos no arquivo principal do Terraform.

Avisos
Certifique-se de compreender as alterações que serão feitas em sua conta Azure antes de aplicar o Terraform.
Mantenha suas credenciais Azure em um local seguro e não compartilhe com outros.

## Contribuição

Contribuições são bem-vindas! Se você encontrar problemas, melhorias ou correções, fique à vontade para abrir uma issue ou enviar um pull request.