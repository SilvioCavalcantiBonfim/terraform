# AWS S3 Bucket Terraform Configuration

![terraform](https://img.shields.io/badge/-terraform-white?style=for-the-badge&logo=terraform&color=7B42BC&logoColor=white)
![amazonaws](https://img.shields.io/badge/-Amazon_AWS-white?style=for-the-badge&logo=amazonaws&color=232F3E&logoColor=white)

Este repositório contém código Terraform para criar um bucket de armazenamento (S3) na AWS. Este código não é um módulo e está localizado na subpasta 'create_aws_s3' do repositório Terraform.

## Pré-requisitos

Antes de começar, certifique-se de ter as seguintes ferramentas instaladas e configuradas:

1. [Terraform](https://www.terraform.io/downloads.html) - Certifique-se de ter a versão adequada do Terraform instalada.
2. [AWS CLI](https://aws.amazon.com/cli/) - Configurado com as credenciais adequadas para acessar a sua conta AWS.

## Como Usar

Siga as etapas abaixo para criar o bucket S3 na AWS:

1. Clone este repositório para o seu ambiente local:
 ```bash
 git clone https://github.com/SilvioCavalcantiBonfim/terraform.git
 ```
 2. Navegue até a subpasta 'create_aws_s3':

 ```
 cd terraform/create_aws_s3
 ```

 
3. Inicialize o diretório Terraform:

```
terraform init
```

4. Visualize as alterações que serão feitas na infraestrutura:

```
  terraform plan
```
5. Aplique as alterações para criar o bucket S3:

```
terraform apply
```

6. Confirme a criação digitando 'yes' quando solicitado.

## Personalização

O código Terraform neste repositório pode ser personalizado de acordo com suas necessidades. Abra o arquivo 'main.tf' na pasta 'create_aws_s3' e ajuste os parâmetros conforme desejado. Certifique-se de revisar e entender todas as opções de configuração antes de fazer qualquer modificação.

## Limpeza

Após concluir os testes ou o uso do bucket S3, lembre-se de destruir a infraestrutura para evitar cobranças desnecessárias. Para fazer isso, execute o seguinte comando:

```
terraform destroy
```

Confirme a destruição digitando 'yes' quando solicitado.

## Importante

Certifique-se de seguir as melhores práticas de segurança ao lidar com credenciais e segredos. Nunca compartilhe informações sensíveis, como chaves de acesso da AWS, em repositórios públicos.

Para mais informações sobre como configurar e personalizar recursos da AWS usando o Terraform, consulte a [documentação oficial do Terraform da AWS](https://learn.hashicorp.com/collections/terraform/aws-get-started).