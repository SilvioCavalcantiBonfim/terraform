# Repositório de Projetos Terraform

![terraform](https://img.shields.io/badge/-terraform-white?style=for-the-badge&logo=terraform&color=7B42BC&logoColor=white)
![amazonaws](https://img.shields.io/badge/-Amazon_AWS-white?style=for-the-badge&logo=amazonaws&color=232F3E&logoColor=white)
![microsoftazure](https://img.shields.io/badge/-Microsoft_Azure-white?style=for-the-badge&logo=microsoftazure&color=0078D7&logoColor=white)

Bem-vindo ao repositório de projetos Terraform! Aqui você encontrará uma coleção de projetos individuais, cada um focado em diferentes aspectos da infraestrutura como código utilizando o Terraform. Abaixo estão os links para cada um desses projetos, juntamente com as instruções sobre como configurar suas credenciais da AWS e Azure como variáveis de ambiente.

## Projetos Disponíveis

1. [Projeto 1 - Create AWS S3 Bucket](./Create_AWS_S3_Bucket): Descrição breve sobre o projeto e o que ele provisiona.

    [![terraform](https://img.shields.io/badge/-Código_Terraform-white?style=for-the-badge&logo=terraform&color=7B42BC&logoColor=white)](./Create_AWS_S3_Bucket/main.tf)

2. [Projeto 2 - Create Azure Storege Account](./create_azure_storege_account): Descrição breve sobre o projeto e o que ele provisiona.

    [![terraform](https://img.shields.io/badge/-Código_Terraform-white?style=for-the-badge&logo=terraform&color=7B42BC&logoColor=white)](./create_azure_storege_account/main.tf)

## Configuração das Credenciais

Antes de executar qualquer um dos projetos acima, é necessário configurar suas credenciais da AWS e Azure como variáveis de ambiente. Siga as instruções abaixo para configurar suas credenciais:

### AWS

1. Configure suas credenciais da AWS como variáveis de ambiente:
```bash
   export AWS_ACCESS_KEY_ID=seu_access_key
   export AWS_SECRET_ACCESS_KEY=seu_secret_key
```

2. Certifique-se de que as variáveis de ambiente estejam configuradas corretamente antes de executar o projeto.

### Azure

1. Configure suas credenciais da Azure como variáveis de ambiente:
```bash
   export ARM_CLIENT_ID=seu_client_id
   export ARM_CLIENT_SECRET=seu_client_secret
   export ARM_SUBSCRIPTION_ID=seu_subscription_id
   export ARM_TENANT_ID=seu_tenant_id
```
2. Verifique se todas as variáveis de ambiente estão definidas corretamente antes de iniciar o projeto.

Lembre-se de substituir `seu_access_key`, `seu_secret_key`, `seu_client_id`, `seu_client_secret`, `seu_subscription_id` e `seu_tenant_id` pelos valores correspondentes das suas contas da AWS e Azure.

## Contribuição

Sinta-se à vontade para contribuir com novos projetos ou melhorias nos projetos existentes. Crie um fork deste repositório, faça suas alterações e envie um pull request. Suas contribuições são bem-vindas!

Caso tenha dúvidas ou precise de ajuda, não hesite em criar uma issue neste repositório.

Divirta-se explorando e provisionando infraestrutura com Terraform!

> Nota: Certifique-se de seguir as melhores práticas de segurança ao lidar com suas credenciais e informações sensíveis. Mantenha suas variáveis de ambiente seguras e evite incluir informações confidenciais diretamente no código. Utilize um gerenciador de segredos, como o AWS Secrets Manager ou o Azure Key Vault, sempre que possível.
