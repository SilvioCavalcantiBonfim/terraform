# Terraform - Criação de Armazenamento no Google Cloud Platform

![terraform](https://img.shields.io/badge/-terraform-white?style=for-the-badge&logo=terraform&color=7B42BC&logoColor=white)
![googlecloud](https://img.shields.io/badge/-Google_Cloud_Platform-white?style=for-the-badge&logo=googlecloud&color=0078D7&logoColor=white)

Este repositório contém código Terraform para criar uma conta de armazenamento no Google Cloud Platform (GCP). A conta de armazenamento é utilizada para armazenar diversos tipos de dados, como objetos, arquivos e dados estruturados.

## Pré-requisitos

Antes de executar este código, certifique-se de ter os seguintes pré-requisitos em seu ambiente:

1. Terraform instalado.
2. Uma conta ativa no Google Cloud Platform (GCP).
3. Credenciais da sua conta GCP configuradas localmente.

## Uso

Siga os passos abaixo para criar a conta de armazenamento no Google Cloud Platform:

1. Clone este repositório para sua máquina local:
```bash
git clone https://github.com/SilvioCavalcantiBonfim/terraform.git
cd terraform/create-google-storage-account
```
2. Configure suas variáveis:

Abra o arquivo variables.tf na subpasta create-google-storage-account. Este arquivo contém as variáveis necessárias para configurar a criação da conta de armazenamento. Preencha cada variável de acordo com suas necessidades.

3. Inicialize o diretório Terraform:

```bash
terraform init
```

4. Visualize as alterações planejadas:

```bash
terraform plan
```

Isso irá mostrar um resumo das alterações que serão feitas em sua infraestrutura.

5. Aplique as alterações:

```bash
terraform apply
```

Confirme a aplicação das alterações digitando yes quando solicitado.

6. Destrua a infraestrutura (quando necessário):

Se você precisar remover a conta de armazenamento criada, você pode executar:

```bash
terraform destroy
```

Confirme a destruição digitando yes quando solicitado.

## Personalização

Este código Terraform pode ser personalizado para atender às suas necessidades específicas. Você pode ajustar as variáveis no arquivo variables.tf e modificar os recursos definidos no arquivo principal do Terraform.

Avisos

Certifique-se de compreender as alterações que serão feitas em sua conta GCP antes de aplicar o Terraform.

Mantenha suas credenciais GCP em um local seguro e não compartilhe com outros.

## Contribuição

Contribuições são bem-vindas! Se você encontrar problemas, melhorias ou correções, fique à vontade para abrir uma issue ou enviar um pull request.
